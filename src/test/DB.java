package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletResponse;
public class DB {
 /**
  * @param args
  */
 
 private static String url="jdbc:mysql://localhost:3306/user";
 private static String name="root";
 private static String password="root";
 //public static void main(String[] args){}
 
 public String userCheck(String u,String p) throws Exception {
  // TODO Auto-generated method stub
 
  try {
   //加载驱动程序；
   Class.forName("com.mysql.jdbc.Driver");
   //获得数据库连接；
   Connection conn=DriverManager.getConnection(url,name,password);
   //通过数据库的连接操作数据库，实现增删改查。
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery("select password from usercheck where username='"+u+"';");
   if(rs.next())
   {
    if(rs.getString("password").equals(p)){
    	System.out.println("Log in succeed!");
    	return "1";
    }
    else
    	return "0";
    }
   else{
	   System.out.println("User isn't exist!");
	   return "0";
   }
   
  } catch (ClassNotFoundException e) {
   e.printStackTrace();return "0";
  } catch (SQLException e) {
   e.printStackTrace();return "0";
  }
 
 }
}
