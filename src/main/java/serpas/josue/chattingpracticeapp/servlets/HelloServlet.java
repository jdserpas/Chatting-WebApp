package serpas.josue.chattingpracticeapp.servlets;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(
        name = "helloServlet",
        value = "/hello-servlet"
)
public class HelloServlet extends HttpServlet {

    private List<String> navBar = new ArrayList<>();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        navBar.add("Home");
        navBar.add("About Us");

        request.setAttribute("menuItems", navBar);
        request.getRequestDispatcher("/WEB-INF/jsp/view/landingPage.jsp")
                .forward(request, response);
    }

}