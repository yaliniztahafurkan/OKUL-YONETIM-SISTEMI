<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    
String ogrenciAdi = request.getParameter("sname");
String ders = request.getParameter("ders");
String grup = request.getParameter("grup");
String notes = request.getParameter("notes");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("insert into notes(ogrenciAdi,ders,grup,notes)values(?,?,?,?)");
pst.setString(1, ogrenciAdi);
pst.setString(2, ders);
pst.setString(3, grup);
pst.setString(4, notes);
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
