<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String dersID = request.getParameter("id"); 
String dersAdi = request.getParameter("name");
String dersSuresi = request.getParameter("duration");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("update ders set dersAdi = ? , dersSuresi = ? where id = ?");
pst.setString(1, dersAdi);
pst.setString(2, dersSuresi);
pst.setString(3, dersID);
pst.executeUpdate();





%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Güncellendi")
                window.location = "ders.jsp"
                
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>
