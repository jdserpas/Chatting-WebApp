package serpas.josue.chattingpracticeapp.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ValidationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)request).getSession(false);
        if(session != null && session.getAttribute(
                "username") == null)
            ((HttpServletResponse)response).sendRedirect("register");
        else
            chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException { }

    @Override
    public void destroy() { }
}
