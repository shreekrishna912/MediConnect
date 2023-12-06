import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/login"})
public class SigninServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Your processing logic here
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Perform authentication logic here (e.g., check against a database)
            // For this example, I'll use basic checks
            if ("your_username".equals(username) && "your_password".equals(password)) {
                out.println("Sign-in successful!");
            } else {
                out.println("Invalid credentials");
            }
        }
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
