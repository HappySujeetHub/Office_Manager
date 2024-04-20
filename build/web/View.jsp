<%-- 
    Document   : View
    Created on : 3 Mar, 2024, 1:47:29 AM
    Author     : Sujeet's PC
--%>

<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h2>Employee Profile</h2>
        
            <%  
                try
                {
                  String user=session.getAttribute("user_name").toString();
                  DBConnection db=new DBConnection();
                  db.pstmt=db.con.prepareStatement("select * from emp_mstr where ecode=?");
                  db.pstmt.setString(1,user);
                  db.rst=db.pstmt.executeQuery();
                 if(db.rst.next())
                 {
                  out.println("<form action=EditProfile.jsp>"
                    + "<table width='600' border='1'>"
                    + "<tr><td width='300'>Employee Code</td><td>"+db.rst.getString(1)+"</td></tr>"
                    + "<tr><td width='300'>Employee Name</td><td>"+db.rst.getString(2)+"</td></tr>"
                    + "<tr><td width='300'>Gander</td><td>"+db.rst.getString(3)+"</td></tr>"
                    + "<tr><td width='300'>Date Of Birth</td><td>"+db.rst.getString(4)+"</td></tr>"
                    + "<tr><td width='300'>post</td><td>"+db.rst.getString(5)+"</td></tr>"
                    + "<tr><td width='300'>Address</td><td>"+db.rst.getString(6)+"</td></tr>"
                    + "<tr><td width='300'>City</td><td>"+db.rst.getString(7)+"</td></tr>"
                    + "<tr><td width='300'>Contact</td><td>"+db.rst.getString(8)+"</td></tr>"
                    + "<tr><td width='300'>Email</td><td>"+db.rst.getString(9)+"</td></tr>"
                    + "<tr><td width='300'>Id Name</td><td>"+db.rst.getString(10)+"</td></tr>"
                    + "<tr><td width='300'>Id Number</td><td>"+db.rst.getString(11)+"</td></tr>");
                    out.println("<tr><td><input type='submit' value='Edit'></td><td><input type='reset' value='Reset'></td></tr>");
                   out.println("</table></form>");
                 }
                 else
                 {
                    out.println("<h2>First you login </h2>");
                 }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            %>
        </table>
    </center>
    </body>
</html>
