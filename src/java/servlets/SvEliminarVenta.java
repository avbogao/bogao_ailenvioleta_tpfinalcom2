package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;

@WebServlet(name = "SvEliminarVenta", urlPatterns = {"/SvEliminarVenta"})
public class SvEliminarVenta extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //traigo id 
        int id = (int) Integer.parseInt(request.getParameter("id"));
        
        Controladora control = new Controladora();

        control.eliminarVenta(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        mysession.setAttribute("listaVentas", control.traerVentas());
        response.sendRedirect("Ventas.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
