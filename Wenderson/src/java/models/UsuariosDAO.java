/**
 * Arquivo: AlunoDAO.java
 *
 */
package models;

import beans.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionFactory;

public class UsuariosDAO {
    private Connection conexao = null;

    /**
     * Método construtor da classe
     *
     * @throws SQLException
     */
    public UsuariosDAO() throws SQLException {
        this.conexao = ConnectionFactory.getInstance().getConnection();
    }

    /**
     * Método inserir - Insere um novo registro no banco de dados
     *
     * @param usuarios Objeto Usuarios
     * @return String Mensagem de sucesso ou erro na inclusão
     * @throws SQLException
     */
    public String inserir(Usuarios usuarios) throws SQLException {
        String sql = "insert INTO usuarios (nome, email, senha) "
            + "VALUES (?,?,?)";

        try {
            try ( PreparedStatement ps = conexao.prepareStatement(sql)) {
                
                ps.setString(1, usuarios.getNome());
                ps.setString(2, usuarios.getEmail());
                ps.setString(3, usuarios.getSenha());
                
                ps.execute();
                ps.close();
            }
            return "Registro incluído com sucesso!";
        } catch (SQLException e) {
            return e.getMessage();
        }
    }
    
    
    /**
     * Realiza a listagem de TODOS os registros existentes no banco de dados
     *
     * @return Usuarios
     */
    public List<Usuarios> listar() {
        List<Usuarios> usuarios = new ArrayList<>();
        try {
            String sql = "SELECT * FROM usuarios ORDER BY nome";
            try (PreparedStatement ps = conexao.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Usuarios usuario = new Usuarios();
                    usuario.getNome();
                    usuario.getEmail();

                    usuario.add(usuarios);
                }
            }
            return usuarios;
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os alunos.", ex);       
        }
    }
}