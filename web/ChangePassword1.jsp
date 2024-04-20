<%-- 
    Document   : ChangePassword1
    Created on : 4 Mar, 2024, 11:16:14 PM
    Author     : Sujeet's PC
--%>

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
         
         <span style="font-size: 30px; color: brown; font-style: normal">Change Password</span><br><br>
       <form action="ChangePasword">
        <table widtth="600" border="1" cellpadding="20">
        <tr><td>Enter Old Password</td><td><input type="password" name="opswd"></td></tr>
        <tr><td>Enter New Password</td><td><input type="password" name="npswd"></td></tr>
        <tr><td>Enter Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
       <tr><td><input type="submit" value="Submit"></td><td><input type="reset" value="Reset"></td></tr>
         </table>
      </form>
    </center>
    </body>
</html>
