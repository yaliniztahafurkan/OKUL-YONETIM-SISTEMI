<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String notesID = request.getParameter("id"); 
String ogrenciAdi = request.getParameter("sname");
String ders = request.getParameter("ders");
String grup = request.getParameter("grup"); 
String notes = request.getParameter("notes");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("update notes set ogrenciAdi = ? , ders = ? , grup = ? , notes = ? where id = ?");
pst.setString(1, ogrenciAdi);
pst.setString(2, ders);
pst.setString(3, grup);
pst.setString(4, notes);
pst.setString(5, notesID);
pst.executeUpdate();






%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Güncellendi")
                window.location = "not.jsp"
                
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>