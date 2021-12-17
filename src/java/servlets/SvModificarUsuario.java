package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "SvModificarUsuario", urlPatterns = {"/SvModificarUsuario"})
public class SvModificarUsuario extends HttpServlet {

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
        
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("contraseña");
        
        
        Controladora control = new Controladora();

        Usuario usu = control.buscarUsuario(id);
        usu.setUser(usuario);
        usu.setPass(password);
        
        
        control.modificarUsuario(usu);
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("listaUsuarios", control.traerUsuarios());
        response.sendRedirect("Usuarios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        //traigo id 
        int id = Integer.parseInt(request.getParameter("id"));
        
        Controladora control = new Controladora();

        Usuario usu = control.buscarUsuario(id);

        
        //actualizo la tabla 
        HttpSession mysession = request.getSession();
        
        mysession.setAttribute("usuario", usu);
        response.sendRedirect("ModificarUsuario.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
