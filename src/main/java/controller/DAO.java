/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ravikumar Makwana
 */
public class DAO {

    public static Books books;
    public static User user;
    public static Connection con;

    public void login(int uid) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/U9ZbCM5Ki3?useTimezone=true&serverTimezone=UTC", "U9ZbCM5Ki3", "ZvQwR9Xkdr");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from signup where id=" + uid + "");
            rs.next();
            user = new User(rs.getString("fullname"), uid, rs.getInt("bal"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String issueBook(int isbn_no) {
        try {
            if (user.getBal() >= 4) {
               return "Insucent Balance ! ! !";
            }
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from books where isbn_no=" + isbn_no + "");
            rs.next();
            books = new Books(rs.getString("title"), rs.getString("author"), rs.getString("publisher"), isbn_no, rs.getInt("stock"));
            if(books.stock<=0)
                return "Book Not Available ! ! !";
            else
            {
                books.stock--;
                user.bal++;
                int r=stmt.executeUpdate("Insert into status (isbn_no,uid) values ("+books.isbn_no+","+user.uid+")");
                int r1= stmt.executeUpdate("Update signup set bal="+user.bal+" where id="+user.uid+"");
                int r2= stmt.executeUpdate("update books set stock="+books.stock+" where isbn_no="+books.isbn_no+"");
                if(r==r1 && r1==r2&&r2==1)
                {
                    return "Book Issued SuccessFully ! ! !";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "Error Occures. . .";
    }
    public static String returnBook(int isbn_no)
    {
        try {
            
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select * from books where isbn_no="+isbn_no+"");
            rs.next();
            books=new Books(rs.getString("title"), rs.getString("author"), rs.getString("publisher"), isbn_no, rs.getInt("stock"));
            books.stock++;
            user.bal--;
            int r1=stmt.executeUpdate("update books set stock="+books.stock+" where isbn_no="+isbn_no+"");
            int r2=stmt.executeUpdate("update signup set bal="+user.bal+" where id="+user.uid+"");
            int r3=stmt.executeUpdate("delete from status where isbn_no="+books.isbn_no+" and uid="+user.uid+"");
            if(r1==r2 && r2==r3 && r3==1)
                return "Book return Successfully ! ! !";
            else
                return "Error Occure ! ! !";
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "";
    }

    public DAO() {
    }

}
