package servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.ServicioTuristico;

@WebServlet(name = "SvModificarServicio", urlPatterns = {"/SvModificarServicio"})
public class SvModificarServicio extends HttpServlet {

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
        Controladora control = new Controladora();
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));  
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String destino = request.getParameter("destino");
        double costo = Double.parseDouble(request.getParameter("costo"));
        Date fecha = control.pasarADate(request.getParameter("fecha"));
        

        ServicioTuristico st = control.buscarServicio(id);
        st.setNombre(nombre);
        st.setDescripcion_breve(descripcion);
        st.setDestino_servicio(destino);
        st.setCosto_servicio(costo);
        st.setFecha_servicio(fecha);
        
        control.modificarServicio(st);
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("listaServicios", control.traerServicios());
        response.sendRedirect("Servicios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));
        
        Controladora control = new Controladora();

        ServicioTuristico st = control.buscarServicio(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("servicio", st);
        response.sendRedirect("ModificarServicio.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
