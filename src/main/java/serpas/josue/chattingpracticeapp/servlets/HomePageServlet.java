package serpas.josue.chattingpracticeapp.servlets;

import serpas.josue.chattingpracticeapp.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(
        name = "homePageServlet",
        urlPatterns = "/home"
)
public class HomePageServlet extends HttpServlet {

    private Map<String, User> users = new HashMap<>();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = (String)request.getSession().getAttribute("username");
        //if user is not in "database" add
        if(!users.containsKey(user))
            users.put(user, new User(user));

        String page = request.getParameter("page");
        if(page == null)
            page = "home";

        switch(page) {
            case "privateChat":
                createChat(request, response, false);
                break;
            case "publicChat":
                createChat(request, response, true);
                break;
            default:
                goToHome(request, response);
                break;
        }
    }

    //redirects to create chat form specifying if it will be a public chat
    private void createChat(HttpServletRequest request,
                            HttpServletResponse response, boolean isPublic) {

    }

    private void goToHome(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException{
        String user = (String)request.getSession().getAttribute("username");
        User currentUser = users.get(user);
        if(currentUser == null)
            return;

        List<String> navLinks = Arrays.asList("Home", "About");
        request.setAttribute("navLinks", navLinks);
        request.setAttribute("username", user);
        if(!currentUser.getUserChats().isEmpty())
            request.setAttribute("chats", currentUser.getUserChats());

        request.getRequestDispatcher("/WEB-INF/jsp/view/homePage.jsp")
                .forward(request,response);
    }
}
