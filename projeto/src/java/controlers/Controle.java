package controlers;

import beans.Usuarios;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.UsuariosDAO;


public class Controle extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        if (request.getParameter("acao").contains("cadastrar")) {
            Usuarios u = new Usuarios();
            
            u.setNome(request.getParameter("nome"));
            u.setEmail(request.getParameter("email"));
            u.setSenha(request.getParameter("senha"));
            
            UsuariosDAO cDao = new UsuariosDAO();
            String resultado = cDao.cadastrar(u);
            request.setAttribute("mensagem", resultado);

            RequestDispatcher redireciona = request.getRequestDispatcher("mensagem.jsp");
            redireciona.forward(request, response);
        }
        
        if(request.getParameter("acao").contains("login")){
            try{
                Usuarios u = new Usuarios();

                u.setEmail(request.getParameter("email"));
                u.setSenha(request.getParameter("senha"));

                UsuariosDAO LDao = new UsuariosDAO();

                Usuarios us = LDao.logar(u);

                HttpSession sessao = request.getSession();

                if (us == null) {
                    request.setAttribute("mensagem", "Dados incorretos!");

                    RequestDispatcher redireciona = request.getRequestDispatcher("mensagem.jsp");
                    redireciona.forward(request, response);
                } else {
                    sessao.setAttribute("login", "logado");
                    sessao.setAttribute("id", us.getId());

                    RequestDispatcher redireciona = request.getRequestDispatcher("index.html");
                    redireciona.forward(request, response);
                }

            } catch (SQLException e) {
                if (e.getErrorCode() == 0) {
                    request.setAttribute("mensagem", "Não foi possível se comunicar com o banco de dados!");
                    RequestDispatcher redireciona = request.getRequestDispatcher("mensagem.jsp");
                    redireciona.forward(request, response);
                }
            }
        
        
        
    }
        
            
    }
    
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Controle.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Controle.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

}
