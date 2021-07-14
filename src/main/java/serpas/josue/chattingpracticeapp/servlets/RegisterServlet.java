package serpas.josue.chattingpracticeapp.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "registerServlet",
        urlPatterns = "/register"
)
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String view = "registerPage";

        if(request.getSession().getAttribute("username") != null) {
            request.setAttribute("failedRegister", false);
            view = "landingPage.jsp";
        }

        request.getRequestDispatcher("/WEB-INF/jsp/view/" + view + ".jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String view;

        if(username != null && !username.trim().isEmpty()) {
            request.getSession().setAttribute("username", username);
            view = "landingPage";
        }
        else {
            request.setAttribute("failedRegister", true);
            view = "registerPage";
        }

        request.getRequestDispatcher("/WEB-INF/jsp/view/" + view + ".jsp")
                .forward(request, response);
    }
}
