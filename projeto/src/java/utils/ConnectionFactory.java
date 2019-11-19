/**
 * Arquivo: ConnectionFactory.java
 *
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    /**
     * Conexão para MySQL
     */
    private final String driver = "com.mysql.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost:3306/project_anxiety";

    private final String usuario = "root";
    private final String senha = "";

    private static ConnectionFactory connectionFactory = null;

    /**
     * Realiza a configuração para a conexão
     *
     * @throws SQLException
     */
    private ConnectionFactory() throws SQLException {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            throw new SQLException("driver");
        }
    }

    /**
     * Realiza a conexão, caso tenha sucesso
     *
     * @return Connection
     * @throws SQLException
     */
    public Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException e) {
            throw new SQLException(String.valueOf(e.getErrorCode()));
        }
        return conn;
    }

    /**
     * Retorna uma instância da conexão para utilização
     *
     * @return Connection
     * @throws SQLException
     */
    public static ConnectionFactory getInstance() throws SQLException {
        if (connectionFactory == null) {
            connectionFactory = new ConnectionFactory();
        }
        return connectionFactory;
    }
}
