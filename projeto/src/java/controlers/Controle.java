/**
 * Arquivo: Controle.java
 *
 */
package controlers;

import beans.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UsuariosDAO;

public class Controle extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    @SuppressWarnings("null")
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        /**
         * Configuração do código de página para mostrar os caracteres
         * corretamente
         */
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Variável que receberá o valor da flag enviado pelo formulário
        String flag = request.getParameter("flag");

        try (PrintWriter out = response.getWriter()) {

            /**
             * Direciona para a página que está determinada no parâmetro do
             * método
             */
            if (flag == null) {
                request.getRequestDispatcher("index.html").forward(request, response);
            }

            /**
             * Declaração das variáveis para os objetos e para receber os
             * valores enviados pelos formulários
             */
            // Objetos
            Usuarios usuarios = new Usuarios();
            UsuariosDAO usuariosDAO = new UsuariosDAO();
            ArrayList<Usuarios> listaUsuarios = new ArrayList();
            Map<String, String> campos;
            
            // Variáveis dos formulários
            String nome;
            String email;
            String cpf;
            String telefone;
            String dt_nascimento;
            String senha;

            // Variáveis para tratamento das mensagens de erro
            String tituloErro = "";
            String erro = "";

            // Verifica qual ação deve ser tomada
            switch (flag) {
                case "cadastrar":
                    //Recupera os valores enviados pelo formulário

                    nome = request.getParameter("nome");
                    email = request.getParameter("email");
                    cpf = request.getParameter("cpf");
                    telefone = request.getParameter("telefone");
                    dt_nascimento = request.getParameter("dataNascimento");
                    senha = request.getParameter("senha");
                    
                    // Cria o objeto e atribui os dados recebidos
                    usuarios = new Usuarios();
                    usuarios.setNome(nome);
                    usuarios.setEmail(email);
                    usuarios.setCpf(cpf);
                    usuarios.setTelefone(telefone);
                    usuarios.setDt_nascimento(dt_nascimento);
                    usuarios.setSenha(senha);
                    
                    // Cria um objeto para receber os campos
                    campos = new HashMap<>();

                    // Verifica o preenchimento dos campos
                    campos = usuarios.verificaDados();

                    // Percorre a lista (objetos - campos) em busca dos erros
                    for (String key : campos.keySet()) {
                        if (campos.get(key).equals("")) {
                            // monta a mensagem de erro
                            tituloErro = "<h1>Campo (s) não preenchido (s)!</h1>";
                            erro = erro + "&rarr; " + String.valueOf(key) + "<br>";
                        }
                    }

                    // Se ocorreram erros, envia para página de erro
                    if (!erro.isEmpty()) {
                        request.setAttribute("mensagem", tituloErro + erro);
                        request.getRequestDispatcher("views/erro.jsp").
                                forward(request, response);
                        break;
                    }

                    /**
                     * Repassa os valores dos atributos para o objeto DAO que
                     * irá manipular os dados e gravar no banco
                     */
                    usuariosDAO = new UsuariosDAO();
                    usuariosDAO.inserir(usuarios);

                    // Cria um atributo para informar sobre  a inclusão
                    request.setAttribute("mensagem", usuariosDAO.toString());

                    // Redireciona para a View
                    request.getRequestDispatcher("views/mensagem.jsp").
                            forward(request, response);
                    break;

                case "editar":
                    /**
                     * Cria o objeto aluno e atribui o RA para pesquisa
                     */
                    aluno = new Aluno();
                    aluno.setRa(request.getParameter("ra"));

                    // Busca no model os dados
                    alunoDAO = new AlunoDAO();

                    // Coloca todos os alunos em uma lista
                    alunoAlteraDAO = alunoDAO.pesquisar(aluno);

                    // Cria um atributo com o aluno para ser utilizado na View
                    request.setAttribute("listaAlunos", alunoAlteraDAO);

                    // Redireciona para a View
                    request.getRequestDispatcher("views/editar.jsp").
                            forward(request, response);

                    break;

                case "salvar":
                    //Recupera os valores enviados pelo formulário
                    ra = request.getParameter("ra");
                    nome = request.getParameter("nomeAluno");
                    curso = request.getParameter("cursoAluno");
                    disciplina = request.getParameter("disciplinaAluno");
                    email = request.getParameter("emailAluno");

                    // Cria o objeto e e atribui os dados recebidos
                    aluno = new Aluno();
                    aluno.setRa(ra);
                    aluno.setNome(nome);
                    aluno.setCurso(curso);
                    aluno.setDisciplina(disciplina);
                    aluno.setEmail(email);

                    // Cria um objeto para receber os campos, exceto o RA que é o identificador
                    campos = new HashMap<>();

                    // Verifica o preenchimento dos campos
                    campos = aluno.verificaDados();

                    // Percorre a lista (objetos - campos) em busca dos erros
                    for (String key : campos.keySet()) {
                        if (campos.get(key).equals("")) {
                            // monta a mensagem de erro
                            tituloErro = "<h1>Campo (s) não preenchido (s)!</h1>";
                            erro = erro + "&rarr; " + String.valueOf(key) + "<br>";
                        }
                    }

                    // Se ocorreram erros, envia para página de erro
                    if (!erro.isEmpty()) {
                        request.setAttribute("mensagem", tituloErro + erro);
                        request.getRequestDispatcher("views/erro.jsp").
                                forward(request, response);
                        break;
                    }

                    /**
                     * Repassa os valores dos atributos para o objeto DAO que
                     * irá manipular os dados e gravar no banco
                     */
                    alunoDAO = new AlunoDAO();
                    alunoDAO.salvar(aluno);

                    // Cria um atributo para informar sobre a atualização
                    request.setAttribute("mensagem", alunoDAO.toString());

                    // Redireciona para a View
                    request.getRequestDispatcher("views/mensagem.jsp").
                            forward(request, response);

                    break;
            }
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
