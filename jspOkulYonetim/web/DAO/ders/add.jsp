<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String dersAdi = request.getParameter("name");
String dersSuresi = request.getParameter("duration");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("insert into ders(dersAdi,dersSuresi)values(?,?)");
pst.setString(1, dersAdi);
pst.setString(2, dersSuresi);
pst.executeUpdate();




%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Eklendi")
                window.history.back();
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>
