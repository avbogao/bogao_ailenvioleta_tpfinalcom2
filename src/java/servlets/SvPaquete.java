package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.ServicioTuristico;

@WebServlet(name = "SvPaquete", urlPatterns = {"/SvPaquete"})
public class SvPaquete extends HttpServlet {
    Controladora control = new Controladora();
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
        double costo = Double.parseDouble(request.getParameter("costo"));
        List<ServicioTuristico> servicios = request.getParameter("servicios");

        
        control.crearPaquete(costo,servicios);
        response.sendRedirect("Paquetes.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
