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

    // Declaração das variáveis globais
    private Connection conexao = null;
    private String status;

    /**
     * Método construtor da classe
     *
     * @throws SQLException
     */
    public UsuariosDAO() throws SQLException {
        // Retorna a conexao no momento da chamada da classe
        this.conexao = ConnectionFactory.getInstance().getConnection();
    }

    /**
     * Realiza a inclusão de um novo registro no banco de dados
     *
     * @param usuario
     */
    @SuppressWarnings("empty-statement")
    public void inserir(Usuarios usuario) {
        try {
            // Declaração da variável para a instrução SQL
            String sql = "insert INTO usuarios (nome, email, cpf, telefone, dt_nascimento) "
                    + "VALUES (?,?,?,?,?)";

            // Atribui os valores ao objeto ps
            try (PreparedStatement ps = conexao.prepareStatement(sql)) {
                // seta os valores
                ps.setString(1, usuario.getNome());
                ps.setString(2, usuario.getEmail());
                ps.setString(3, usuario.getCpf());
                ps.setString(4, usuario.getTelefone());
                ps.setString(5, usuario.getDt_nascimento());

                // Executa o sql (execute)
                ps.execute();

                // Fecha o ps
                ps.close();
            }

            // Fecha a conexão
            conexao.close();

            // Retorna o status da inserção
            status = "Inserido com Sucesso!";

        } catch (SQLException ex) {
            // Lança um erro novo personalizado 
            status = "Erro ao inserir o aluno";
        }
    }

    /**
     * Realiza a listagem de TODOS os registros existentes no banco de dados
     *
     * @return Usuario
     */
    public List<Usuarios> listar() {
        List<Usuarios> usuarios = new ArrayList<>();
        try {
            String sql = "SELECT * FROM usuarios ORDER BY nome";
            try (PreparedStatement ps = conexao.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                    Usuarios usuario = new usuario();
                    usuario.getNome();
                    usuario.getEmail();
                    usuario.getCpf();
                    usuario.getTelefone();
                    usuario.getDt_nascimento();

                    usuarios.add(usuario);
                }
            }
            return usuario;

        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os alunos.", ex);
        }
    }


    /**
     * Método que retorna o status da operação realizada
     *
     * @return String
     */
    @Override
    public String toString() {
        return status;
    }

}
