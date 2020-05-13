package br.com.infox.dal;

import java.sql.*;

public class ModuloConexao {
    // Método responsável por estabelecer a conexão com o banco de dados
    
    public static Connection conector(){
        Connection conexao = null;
        
        // A linha abaixo "chama" o driver mysql-connector/J
        
        String driver = "com.mysql.jdbc.Driver";
        
        //Armazenando informações referentes ao banco
        
        String url = "jdbc:mysql://localhost:3308/dbinfox";
        String user = "root", password = "";
        
        //Estabelecendo a conexão com o banco
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            
            return conexao;
        } 
        catch (ClassNotFoundException | SQLException e) {
             System.out.println(e);
                  
            return null;
        }
    }
}
