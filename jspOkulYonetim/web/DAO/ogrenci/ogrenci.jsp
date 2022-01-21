<%-- 
    Document   : ders
    Created on : 12.Oca.2022, 23:33:45
    Author     : Taha Furkan Yalınız
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con;
    PreparedStatement pst;
    ResultSet rs;




%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Öğrenci Kayıt</title>
</head>
<body>
    <h1>Öğrenci Kayıt</h1>
    <div class="row">
        <div class="col-sm-4">
            <form method="POST" align="left" action="add.jsp">
                <div>
                    <label class="form-label">Öğrenci Adı : </label>
                    <input type="text" id="sname" name="sname" placeholder="Öğrenci Adı" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Ders : </label>
                    <select name="ders" id="ders" class="form-control">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
                            String query = "select * from ders";
                            Statement st = con.createStatement();
                            rs = st.executeQuery(query);
                            while (rs.next()){
                                String id = rs.getString("id");
                                String dersAdi = rs.getString("dersAdi");
                                %>
                                
                                <option value="<%=id %>"><%= dersAdi %> </option>
                                
                                <%
                            }
                        %>  
                    </select>
                </div>
                <div>
                    <label class="form-label">Grup : </label>
                    <select name="grup" id="grup" class="form-control">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
                            String query1 = "select * from grup";
                            Statement st1 = con.createStatement();
                            rs = st1.executeQuery(query1);
                            while (rs.next()){
                                String id = rs.getString("id");
                                String grupAdi = rs.getString("grupAdi");
                                %>
                                
                                <option value="<%=id %>"><%= grupAdi %> </option>
                                
                                <%
                            }
                        %>    
                    </select>
                </div>
                <div>
                    <label class="form-label">Adres : </label>
                    <input type="text" id="address" name="address" placeholder="Adres" class="form-control" required>
                </div>
                <div>
                    <label class="form-label">Telefon No : </label>
                    <input type="text" id="phone" name="phone" placeholder="Telefon No" class="form-control" required>
                </div>
                <div>
                    <input type="submit" name="submit" class="btn btn-info" value="Gönder" onclick="document.location.reload(true);">
                    <input type="reset" name="reset" class="btn btn-warning" value="Temizle">
                </div>
            </form>
            
            
        </div>
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-ders" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th>Öğrenci Adı</th>
                            <th>Ders</th>
                            <th>Grup</th>
                            <th>Adres</th>
                            <th>Telefon No</th>
                            <th>Düzenle</th>
                            <th>Sil</th>
                        </tr>
                        
                    <tbody>
                        
                        <%
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jspOkul","root","");
                        String query3 = "select o.id, o.ogrenciAdi, d.dersAdi, g.grupAdi, o.address, o.phone from ogrenci o JOIN ders d ON o.ders = d.id JOIN grup g ON o.grup = g.id";
                        Statement st3 = con.createStatement();
                        rs = st3.executeQuery(query3);
                        while(rs.next()) {
                            String id = rs.getString("o.id");
                            
                        
                        %>
                        
                        <tr>
                            <td><%=rs.getString("o.ogrenciAdi")  %></td>
                            <td><%=rs.getString("d.dersAdi")  %></td>
                            <td><%=rs.getString("g.grupAdi")  %></td>
                            <td><%=rs.getString("o.address")  %></td>
                            <td><%=rs.getString("o.phone")  %></td>
                            <td><a href="ogrenciUpdate.jsp?id=<%=id %>" onclick="document.location.reload(true);">Düzenle</a></td>
                            <td><a href="ogrenciDelete.jsp?id=<%=id %>" onclick="document.location.reload(true);">Sil</a></td>
                        </tr>
                        <%
                            }
                        %>
                        
                    </tbody>
                        
                        
                        
                        
                        
                    </thead>
                </table>
                
                
            </div>
            
            
        </div>
        
    </div>
    
    
    
    
    
    
</body>
</html>
