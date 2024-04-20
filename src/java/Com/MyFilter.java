
package Com;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;


public class MyFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException 
    {
        try
        {
        HttpServletRequest rq=(HttpServletRequest)request;
        HttpSession s=rq.getSession();
        User user=(User)s.getAttribute("user_name");
        
        if(user!=null && user.getType().equals("Admin"))
        {
            chain.doFilter(request, response);
            
        }
        else
        {
            System.out.println("You are not Login Please First Login");
            response.setContentType("text/html");
            response.getWriter().println("You are not login First yoy Login");
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        
    }

    @Override
    public void destroy() {
    }
    
}
