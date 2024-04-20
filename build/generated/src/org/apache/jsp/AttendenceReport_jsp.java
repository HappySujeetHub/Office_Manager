package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AttendenceReport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/EmployeeHeader.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>Office_manager</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/coin-slider.css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/droid_sans_400-droid_sans_700.font.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/coin-slider.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"main\">\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"header_resize\">\n");
      out.write("     \n");
      out.write("      <div class=\"logo\">\n");
      out.write("          <h1><a href=\"index.html\"><span>Office</span> manager</a>(<i>Employee Page</i>)</h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"menu_nav\" style=\"width: 1200px;\">\n");
      out.write("        <ul>\n");
      out.write("          <li class=\"active\"><a href=\"ViewEmployee.jsp\"><span>View Own Profile</span></a></li>\n");
      out.write("         <li><a href=\"AddAttendance.jsp\"><span>Add Attendance </span></a></li>\n");
      out.write("          <li><a href=\"AttendenceReport.jsp\"><span>Attendance Report</span></a></li>\n");
      out.write("          <li><a href=\"ChangePassword1.jsp\"><span>Change Password</span></a></li>\n");
      out.write("          <li><a href=\"Logout\"><span>Logout</span></a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div> </div>\n");
      out.write("      </div>\n");
      out.write("      </div> \n");
      out.write("     ");
      out.write("  \n");
      out.write("<center>\n");
      out.write("    <h2>Attendance Report</h2>\n");
      out.write("    <table width=\"1000\" cellpadding=\"5\" cellspacing=\"0\" bgcolor=\"lightpink\" border=\"1\">\n");
      out.write("        <tr bgcolor=\"lightblue\"><th>S No</th><th>Employee Code</th><th>Employee Name</th><th>Gender</th>\n");
      out.write("            <th>E-mail</th><th></th><th>Attendance Date</th><th>Time In</th><th> Time Out</th></tr>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");

    String user=session.getAttribute("user_name").toString();
    DB.DBConnection db=new DB.DBConnection();
    db.pstmt=db.con.prepareStatement(" SELECT emp_mstr.ecode,emp_mstr.ename,emp_mstr.egender,emp_mstr.email,emp_attendance.atnd_date,emp_attendance.time_in,emp_attendance.time_out FROM emp_mstr,emp_attendance WHERE emp_mstr.ecode=emp_attendance.ecode AND emp_attendence.ecode=? ");
    db.pstmt.setString(1,user);
    db.rst=db.pstmt.executeQuery();
    int count=1;
    while(db.rst.next())
    {
        out.println("<tr><td>"+count+"</td><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td><td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td><td>"+db.rst.getString(5)+"</td><td>"+db.rst.getString(6)+"</td><td>"+db.rst.getString(7)+"</td></tr>");
        count++;
    }
    
      out.write("\n");
      out.write("    </table>\n");
      out.write("</center>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}