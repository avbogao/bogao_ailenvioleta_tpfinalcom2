package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.PaqueteTuristico;
import logica.ServicioTuristico;

@WebServlet(name = "SvModificarPaquete", urlPatterns = {"/SvModificarPaquete"})
public class SvModificarPaquete extends HttpServlet {

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
        Controladora control = new Controladora();
        String[] servicios = request.getParameterValues("servicioSelect");
        
        List<ServicioTuristico> ls = new ArrayList<>();
        double costo = 0;
        for(String e : servicios){
            ls.add(control.buscarServicio(Integer.parseInt(e)));
            costo += control.buscarServicio(Integer.parseInt(e)).getCosto_servicio();
        }
        costo -= ((costo*10) /100);
        
        PaqueteTuristico p = control.buscarPaquete(id);
        

        p.setLista_servicios_incluidos(ls);
        p.setCosto_paquete(costo);
        
        control.modificarPaquete(p);
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("listaPaquetes", control.traerPaquetes());
        response.sendRedirect("Paquetes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));
        
        Controladora control = new Controladora();

        PaqueteTuristico p = control.buscarPaquete(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("paquete", p);
        response.sendRedirect("ModificarPaquete.jsp");    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
