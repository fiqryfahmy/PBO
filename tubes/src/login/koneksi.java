package login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
/**
 *
 * @author FIQRY
 */
public class koneksi {
    static Connection con;
    public static Connection getConnection(){
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/latlogin","root","");
            System.out.println("Koneksi berhasil");
        }catch(Exception e){
            System.out.println("Koneksi ke Database Gagal " + e.getMessage());
        }return con;
    }
}
