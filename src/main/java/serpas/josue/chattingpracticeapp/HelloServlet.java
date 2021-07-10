package serpas.josue.chattingpracticeapp;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<String> menuItems = new ArrayList<>();
        menuItems.add("Home");
        menuItems.add("About Us");

        request.setAttribute("menuItems", menuItems);
        request.getRequestDispatcher("/WEB-INF/jsp/view/landingPage.jsp")
                .forward(request, response);
    }

}