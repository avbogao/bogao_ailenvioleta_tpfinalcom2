<%-- 
    Document   : ModificarVenta
    Created on : 14/12/2021, 15:57:53
    Author     : Merlo
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="logica.Controladora"%>
<%@page import="logica.ServicioTuristico"%>
<%@page import="logica.PaqueteTuristico"%>
<%@page import="logica.Cliente"%>
<%@page import="logica.Empleado"%>
<%@page import="logica.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Venta</title>
    </head>
    <body>
        <% HttpSession mysession = request.getSession();
        String user = (String) mysession.getAttribute("user");
        if(user == null){
            response.sendRedirect("login.jsp");
        }else{
            
        %>
         <div class="content-section" id="registrate" >
            <div class="container">
                
                    <div class="heading-section col-md-12 text-center">
                        <h2>Modificar datos</h2> 

                    </div> <!-- /.heading-section -->
 
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="get" action= "SvModificarVenta" >
                                <%
                                    Venta v = (Venta) mysession.getAttribute("venta");
                                    {%>
                                 <% Controladora control = new Controladora(); 
                                    List<Empleado> listaEmpleados = control.traerEmpleados();
                                    List<Cliente> listaClientes = control.traerClientes();
                                    List<ServicioTuristico> listaServicios = control.traerServicios();
                                    List<PaqueteTuristico> listaPaquetes = control.traerPaquetes();
             %>

                                <p>
                                    Empleado:
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
                                              <option value="<%=idc%>"><%=idc%> <%=nombre%> <%=apellido%></option>
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
                                              List<ServicioTuristico> servicios = p.getLista_servicios_incluidos();
                                                String[] st = new String[servicios.size()];
                                                int i=0;
                                                for(ServicioTuristico s : servicios){
                                                    String name = s.getNombre();
                                                    st[i] = name;
                                                    i++;
                                                }
                                              %>
                                        <option><%=idp%> <%=Arrays.toString(st)%></option>
                                        <%}%>   
                                    </select>
                                  </p>
                                </div>
                             <p>
                              <input name="fecha" type="date" id="fecha" placeholder="fecha" value="<%=v.getFecha_venta()%>">
                             </p>
                                <p>
                                    <input name="medio" type="text" id="medio" placeholder="medio" value="<%=v.getMedio_pago()%>">
                                </p>
                                <input type="hidden" name="id" value="<%=v.getNum_venta()%>" >
                                <input type="submit" value="Modificar" >
                                <%}%>
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
     <a href="Ventas.jsp">  <input type="button" value="Volver"></a>       
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>
