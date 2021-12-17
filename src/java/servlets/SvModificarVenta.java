package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Venta;

@WebServlet(name = "SvModificarVenta", urlPatterns = {"/SvModificarVenta"})
public class SvModificarVenta extends HttpServlet {

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
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));  
        
        Date fecha = Date.valueOf(request.getParameter("fecha"));
        String medio = request.getParameter("medio");

        
        Controladora control = new Controladora();

        Venta v = control.buscarVenta(id);
        v.setFecha_venta(fecha);
        v.setMedio_pago(medio);

        
        
        control.modificarVenta(v);
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("listaVentas", control.traerVentas());
        response.sendRedirect("Ventas.jsp");    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));
        
        Controladora control = new Controladora();

        Venta v = control.buscarVenta(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("venta", v);
        response.sendRedirect("ModificarVenta.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
