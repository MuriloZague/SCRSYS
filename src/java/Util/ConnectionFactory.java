package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class ConnectionFactory {

    public static Connection conectar() throws Exception {
        try {

            Class.forName("org.postgresql.Driver");
            System.out.println("Conectou");
            return DriverManager.getConnection("jdbc:postgresql://localhost:5432/SCRSystem", "postgres", "postdba");

        } catch (Exception e) {
            throw new Exception("Erro ao conectar" + e.getMessage());
        }
    }

    public static void fecharConexao(Connection conexão, ResultSet rs, PreparedStatement stmt) throws Exception {
        if (conexão != null) {
            conexão.close();
        }
        if (rs != null) {
            rs.close();
        }
        if (stmt != null) {
            stmt.close();
        }

    }
}
