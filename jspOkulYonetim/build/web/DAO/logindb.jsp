<%@ page language="java" contentType="text/html; s" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    
    String userid=request.getParameter("userid");
    session.putValue("userid",userid);
    String password=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspOkul","root","");
    Statement st= con.createStatement();
    ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'");
    
    session.setAttribute("username", username);
    session.setAttribute("password", password);
    
    try{
        rs.next();
        if(rs.getString("123").equals(password)&&rs.getString("admin").equals(userid))
        {
            out.println("Hosgeldiniz " +userid);
            String redirect = "index.jsp";
        }
        if(rs.getString("ogretmen").equals(password)&&rs.getString("123").equals(userid))
        {
            out.println("Hosgeldiniz " +userid);
            String redirect = "index2.jsp";
        }
        if(rs.getString("ogrenci").equals(password)&&rs.getString("123").equals(userid))
        {
            out.println("Hosgeldiniz " +userid);
            String redirect = "index3.jsp";
        }
        else{
            out.println("Gecersiz sifre veya kullanici adi.");
        }
    }
    catch (Exception e) {
    e.printStackTrace();
    }
    
%>