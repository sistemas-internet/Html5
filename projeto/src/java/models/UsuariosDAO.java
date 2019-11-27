package models;

import beans.Usuarios;
import utils.ConnectionFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
// import java.util.ArrayList;

public class UsuariosDAO {
/*    private Connection con;
    private ResultSet rs;
    
    public String conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/project_anxiety",
                    "root", ""
            );
            return "sucesso";
        } catch (ClassNotFoundException ex) {
            return "erro_driver";
        } catch (SQLException ex1) {
            return "erro_conectar";
        }
    }
    
    public void desconectar() {
        try {
            con.close();
        } catch (SQLException x) {
        }
    }
*/

    private final Connection conexao;

    public UsuariosDAO() throws SQLException {
        this.conexao = ConnectionFactory.getInstance().getConnection();
    }
    
     /**
     * Método Pesquisar - Realiza a pesquisa de um registro específico pelo ID
     *
     * @param u Objeto Usuarios
     * @return List Lista com registros encontrados
     * @throws java.sql.SQLException
     */
    public String cadastrar(Usuarios u) throws SQLException {

        String sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";

        try {
            try ( 
                PreparedStatement ps = conexao.prepareStatement(sql)) {

                ps.setString(1, u.getNome());
                ps.setString(2, u.getEmail());
                ps.setString(3, u.getSenha());
                
                ps.execute();
            }

            conexao.close();

            return "Registro incluído com sucesso! <a href='login.jsp'>Clique aqui para fazer login</a>";
        } catch (SQLException e) {
            return e.getMessage();
        }
    }

    public String editar(Usuarios u) throws SQLException {
        String sql = "UPDATE usuarios SET nome = ? WHERE usuarios.id = ?;";

        try {
            try ( 
                PreparedStatement ps = conexao.prepareStatement(sql)) {

                ps.setString(1, u.getNome());
                ps.setInt(2, u.getId());
                ps.execute();
            }

              return "Registro atualizado com sucesso! <a href='inicio.jsp'>Voltar à home</a>";
        } catch (SQLException e) {
            return e.getMessage();
        }
    }
    
     /**
     * Método Pesquisar - Realiza a pesquisa de um registro específico pelo ID
     *
     * @param u Objeto Usuarios
     * @return List Lista com registros encontrados
     * @throws java.sql.SQLException
     */
    public Usuarios logar(Usuarios u) throws SQLException {

        String sql = "SELECT * FROM usuarios where email = ? AND senha = ?";


        try (
            PreparedStatement ps = conexao.prepareStatement(sql)) {
            
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getSenha());
            

            try (
                ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    u = new Usuarios();

                    u.setId(Integer.parseInt(rs.getString("id")));
                    u.setEmail(rs.getString("email"));
                    u.setNome(rs.getString("nome"));
                }
            }
        }
        conexao.close();

        return u;
    }
    
/*    public ArrayList getAll() {

        String query = "select * from usuarios";
        ArrayList lista = new ArrayList();
        try {
            this.conectar();
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuarios u = new Usuarios();
                u.setId(rs.getInt(1));
                u.setNome(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setSenha(rs.getString(4));

                lista.add(u);
            }
        } catch (SQLException x) {
            return null;
        }
        this.desconectar();
        return lista;
    }
*/
}
