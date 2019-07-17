/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Alvin
 */
public class koneksiDB {
    Connection con;
    Statement stm;
    
public void config(){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/Alvin","root","");
        stm = con.createStatement();
    }catch (Exception e){
        JOptionPane.showMessageDialog(null, "koneksi gagal "+e.getMessage());
    }
}
   public static Connection mysqlconfig;
        public static Connection configDB()throws SQLException{
        try{
            String url="jdbc:mysql://localhost/Alvin";//urldb
            String user="root";//userdb
            String pass="";//passdb
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig=DriverManager.getConnection(url, user, pass);
        }catch (Exception e){
            System.err.println("Koneksi Gagal "+e.getMessage());//peringatan eror
        }
        return mysqlconfig;
        }    
}

