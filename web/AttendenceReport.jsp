<%-- 
    Document   : AttendenceReport
    Created on : 7 Mar, 2024, 1:43:55 PM
    Author     : Sujeet's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>  
<center>
    <h2>Attendance Report</h2>
    <table width="1000" cellpadding="5" cellspacing="0" bgcolor="lightpink" border="1">
        <tr bgcolor="lightblue"><th>S No</th><th>Employee Code</th><th>Employee Name</th><th>Gender</th>
            <th>E-mail</th><th>Attendance Date</th><th>Time In</th><th> Time Out</th></tr>
    
    
    <%
    String user=session.getAttribute("user_name").toString();
    DB.DBConnection db=new DB.DBConnection();
    db.pstmt=db.con.prepareStatement(" SELECT emp_mstr.ecode,emp_mstr.ename,emp_mstr.egender,emp_mstr.email,emp_attendance.atnd_date,emp_attendance.time_in,emp_attendance.time_out FROM emp_mstr,emp_attendance WHERE emp_mstr.ecode=emp_attendance.ecode AND emp_attendance.ecode=? ");
    db.pstmt.setString(1,user);
    db.rst=db.pstmt.executeQuery();
    int count=1;
    while(db.rst.next())
    {
        out.println("<tr><td>"+count+"</td><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td><td>"+db.rst.getString(5)+"</td><td>"+db.rst.getString(6)+"</td><td>"+db.rst.getString(7)+"</td></tr>");
        count++;
    }
    %>
    </table>
</center>
