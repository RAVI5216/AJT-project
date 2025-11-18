
import com.sun.jdi.connect.spi.Connection;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author ravik
 */
import java.sql.*;

public class Validateinput {

    public static boolean checkUser(String u, String p) {
        boolean st = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/experiment6", "root", "Cnxl@424");
            PreparedStatement ps = con.prepareStatement("select * from login where username=? and password=?");
            ps.setString(1, u);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            st = rs.next();
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;
    }

}