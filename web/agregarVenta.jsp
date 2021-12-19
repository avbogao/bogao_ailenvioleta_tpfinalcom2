<%-- 
    Document   : agregarVenta
    Created on : 14/12/2021, 15:58:08
    Author     : Merlo
--%>

<%@page import="logica.Cliente"%>
<%@page import="logica.PaqueteTuristico"%>
<%@page import="logica.ServicioTuristico"%>
<%@page import="logica.Controladora"%>
<%@page import="logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Venta</title>
    </head>
    <body>
        <% HttpSession mysession = request.getSession();
        String user = (String) mysession.getAttribute("user");
        if(user == null){
            response.sendRedirect("login.jsp");
        }else{
            
        %>
         <div class="content-section" id="registrate" >
             <% Controladora control = new Controladora(); 
                List<Empleado> listaEmpleados = control.traerEmpleados();
                List<Cliente> listaClientes = control.traerClientes();
                List<ServicioTuristico> listaServicios = control.traerServicios();
                List<PaqueteTuristico> listaPaquetes = control.traerPaquetes();
             %>
            <div class="container">
                
                    <div class="heading-section col-md-12 text-center">
                        <h2>Agregar Venta</h2> 

                    </div> <!-- /.heading-section -->
                
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvVenta" name="contactform" id="contactform">
                                <p>Empleado:
                                   <select name="empleado">
                                       <% for(Empleado e : listaEmpleados){ 
                                              String nombreUsu = e.getUsu().getUser();
                                              int idU = e.getUsu().getId_user();
                                              %>
                                              <option value="<%=idU%>"><%=nombreUsu%></option>
                                        <%}%>
                                    </select>
                                </p>
                                <p>Cliente:
                                    <select name="cliente">
                                       <% for(Cliente c : listaClientes){ 
                                              int idc = c.getId_cliente();
                                              String nombre = c.getNombre();
                                              String apellido = c.getApellido();
                                              %>
                                              <option ><%=idc%></option>
                                        <%}%>
                                    </select>
                                </p>
                                <p>
                                   <input type="radio" name="tipo_attach" onclick="toggle(this)" value="a"> Servicio<br>
                                   <input type="radio" name="tipo_attach" onclick="toggle(this)" value="b"> Paquete<br>
                                </p>
                               <script type="text/javascript">
                                function toggle(elemento) {
                                  if(elemento.value==="a") {
                                      document.getElementById("uno").style.display = "block";
                                      document.getElementById("dos").style.display = "none";
                                   }else{
                                           document.getElementById("uno").style.display = "none";
                                           document.getElementById("dos").style.display = "block";
                                    }
                                }
                             </script>
                             <div id="uno" style="display: none">
                                <p>
                                    <select name="servicio" >

                                       <% for(ServicioTuristico s : listaServicios){ 
                                              String nombreS = s.getNombre();
                                              %>
                                            <option><%=nombreS%></option>
                                        <%}%>
                           
                                    </select>
                                 </p>
                              </div>
                              <div id="dos" style="display: none">
                                  <p>
                                    <select name="paquete" >
                                       <% for(PaqueteTuristico p : listaPaquetes){ 
                                              int idp = p.getCodigo_paquete();
                                              %>
                                        <option><%=idp%></option>
                                        <%}%>   
                                    </select>
                                  </p>
                                </div>
                               
                                <p>
                                    <input name="fecha" type="date" id="fecha" placeholder="">
                                </p>
                                <p>
                                    <input name="medio" type="text" id="medio" placeholder="Medio de pago">
                                </p>

                                <input type="submit" value="Agregar" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
            <a href="Ventas.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>
