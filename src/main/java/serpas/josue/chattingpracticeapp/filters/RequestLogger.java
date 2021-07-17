package serpas.josue.chattingpracticeapp.filters;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class RequestLogger implements Filter {

    private static final Logger LOGGER =
            LoggerFactory.getLogger(RequestLogger.class);

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpServletRequest = ((HttpServletRequest) request);

        String method = httpServletRequest.getMethod();
        String URI = httpServletRequest.getRequestURI();

        MDC.put("method", method);
        MDC.put("uri", URI);
        LOGGER.info("New Request");

        chain.doFilter(request, response);

        //Make sure each requests cleans up the MDC they've logged.
        MDC.clear();
    }
}
