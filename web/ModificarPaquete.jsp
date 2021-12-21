<%-- 
    Document   : ModificarPaqeute
    Created on : 14/12/2021, 14:40:04
    Author     : Merlo
--%>

<%@page import="logica.ServicioTuristico"%>
<%@page import="java.util.List"%>
<%@page import="logica.Controladora"%>
<%@page import="logica.PaqueteTuristico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Paquete</title>
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
                            <form method="get" action= "SvModificarPaquete" >
                                <% 
                                    PaqueteTuristico p = (PaqueteTuristico) mysession.getAttribute("paquete");
                                    Controladora control = new Controladora();
                                     List<ServicioTuristico> listaServicios = control.traerServicios();
             
                                    {%>
                                
                                <p> Servicios: 
                                    <br>
                                    <%for(ServicioTuristico s : listaServicios){
                                        String nombreS = s.getNombre();
                                        String desc = s.getDescripcion_breve();
                                        int id = s.getCodigo_servicio();
                                        double costo = s.getCosto_servicio();
                                    %>
                                    <abbr title="<%=desc%>"> <input type="checkbox" name="servicioSelect" value="<%=id%>"><%=nombreS%></abbr>&nbsp;&nbsp;&nbsp;&nbsp;Costo: <%=costo%>
                                  
                                    <br>
                                    <%}%>
                                </p>
                                
                                <input type="hidden" name="id" value="<%=p.getCodigo_paquete()%>" >
                                <input type="submit" value="Modificar" >
                                <%}%>
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
           <a href="Paquetes.jsp">  <input type="button" value="Volver"></a> 
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>

