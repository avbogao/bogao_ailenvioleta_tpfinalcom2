package servlets;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;

@WebServlet(name = "SvCliente", urlPatterns = {"/SvCliente"})
public class SvCliente extends HttpServlet {
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
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fecha_nac = Date.valueOf(request.getParameter("fecha_nac"));
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        control.crearCliente(nombre,apellido,direccion,dni,fecha_nac,nacionalidad,celular,email);
        response.sendRedirect("Clientes.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
