<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String grupID = request.getParameter("id"); 
String grupAdi = request.getParameter("gname");
String year = request.getParameter("year");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("update grup set grupAdi = ? , year = ? where id = ?");
pst.setString(1, grupAdi);
pst.setString(2, year);
pst.setString(3, grupID);
pst.executeUpdate();






%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Güncellendi")
                window.location = "grup.jsp"
                
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>