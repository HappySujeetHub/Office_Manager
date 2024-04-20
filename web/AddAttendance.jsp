<%-- 
    Document   : AddAttendance
    Created on : 5 Mar, 2024, 5:54:18 PM
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
        <h2>Add Attendance</h2><br><br><br>
        <table width="500">
            <tr><td width="250"><a href="Attendance?atnd=1"><input type="button" name="btn" value="check IN" style="width: 150px; height: 40px;background-color:brown;color: white;"></a></td>
            <td width="250"><a href="Attendance?atnd=0"><input type="button" name="btn" value="check OUT" style="width: 150px; height: 40px;background-color:brown;color: white;"></a></td>
            </tr>
        </table> 
    </center>
    </body>
</html>
