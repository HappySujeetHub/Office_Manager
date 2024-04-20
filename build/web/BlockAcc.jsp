<%-- 
    Document   : BlockAcc
    Created on : 15 Mar, 2024, 11:49:03 PM
    Author     : Sujeet's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><br><br>
    <center>
        <h2>Block Account</h2><br>
        <form action="BlockAcc">
        <table widtth="600" border="1" cellpadding="20">
        <tr><td>Enter User ID</td><td><input type="text" name="user"></td></tr>
       <tr><td><input type="submit" value="Search"></td><td><input type="reset" value="Reset"></td></tr>
         </table>
        </form>
    </center>
    </body>
</html>
