<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String grupID = request.getParameter("id"); 



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("delete from grup where id = ?");

pst.setString(1, grupID);
pst.executeUpdate();






%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Silindi.")
                window.history.back();
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>
