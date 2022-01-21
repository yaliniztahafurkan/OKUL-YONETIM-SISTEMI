<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String ogretmenID = request.getParameter("id"); 
String ogretmenAdi = request.getParameter("tname");
String ders = request.getParameter("ders");
String grup = request.getParameter("grup"); 
String address = request.getParameter("address");
String phone = request.getParameter("phone");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
pst = con.prepareStatement("update teacher set ogretmenAdi = ? , ders = ? , grup = ? , address = ? , phone = ? where id = ?");
pst.setString(1, ogretmenAdi);
pst.setString(2, ders);
pst.setString(3, grup);
pst.setString(4, address);
pst.setString(5, phone);
pst.setString(6, ogretmenID);
pst.executeUpdate();





%>
<html>
    <head>
        <script language="javascript1.2">
            
            function goBack() {
                alert("Kayit Güncellendi")
                window.location = "ogretmen.jsp"
                
            }
        </script>
    </head>
    <body onLoad="goBack()" >
        
    </body>
</html>