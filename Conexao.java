/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package techfix_sistema;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author haech
 */
public class Conexao {
    public Connection getConexao() {
        try {
            // conecta ao banco "techfix_db" que do Workbench;
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/techfix_db", // link do banco;
                "root", // usuário do MySQL;
                "95153695"  // senha do MySQL.
            );
            return conn;
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco: " + e.getMessage());
            return null;
        }
    }
}
   
