<%-- 
    Document   : ModificarPaqeute
    Created on : 14/12/2021, 14:40:04
    Author     : Merlo
--%>

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
                                    {%>
                                
                                <p>
                                    <input name="costo" type="text" id="costo" placeholder="Costo" value="<%=p.getCosto_paquete()%>">
                                </p>
                                <p>
                                    <input name="servicios" type="text" id="servicios" placeholder="servicios" value="<%=p.getLista_servicios_incluidos()%>">
                                </p>
                                
                                <input type="hidden" name="id" value="<%=p.getCodigo_paquete()%>" >
                                <input type="submit" value="Modificar" >
                                <%}%>
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
            
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>

