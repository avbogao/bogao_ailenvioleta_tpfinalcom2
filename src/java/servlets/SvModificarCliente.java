package servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Cliente;
import logica.Controladora;

@WebServlet(name = "SvModificarCliente", urlPatterns = {"/SvModificarCliente"})
public class SvModificarCliente extends HttpServlet {

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
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fecha_nac = control.pasarADate(request.getParameter("fecha_nac"));
        
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        

        Cliente cli = control.buscarCliente(id);
        cli.setNombre(nombre);
        cli.setApellido(apellido);
        cli.setDirección(direccion);
        cli.setDni(dni);
        cli.setFecha_nac(fecha_nac);
        cli.setNacionalidad(nacionalidad);
        cli.setCelular(celular);
        cli.setEmail(email);
        
        
        control.modificarCliente(cli);
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("listaClientes", control.traerClientes());
        response.sendRedirect("Clientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Controladora control = new Controladora();
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));
        

        Cliente cli = control.buscarCliente(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("cliente", cli);
        response.sendRedirect("ModificarCliente.jsp");    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
