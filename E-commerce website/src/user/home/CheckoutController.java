package user.home;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        // Create CheckoutForm object
        CheckoutForm checkoutForm = new CheckoutForm(name, address, email);

        // Perform any necessary validation or processing

        // Store checkoutForm object in request attribute
        request.setAttribute("checkoutForm", checkoutForm);

        // Forward to checkout confirmation page
        request.getRequestDispatcher("confirm.jsp").forward(request, response);
    }
}
