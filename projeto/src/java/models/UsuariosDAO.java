package models;

import beans.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.ConnectionFactory;

public class UsuariosDAO {
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

            return "Registro incluído com sucesso! <a href='index.html'>Clique aqui para fazer login</a>";
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
}
