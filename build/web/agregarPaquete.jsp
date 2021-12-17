<%-- 
    Document   : agregarPaquete
    Created on : 14/12/2021, 14:45:39
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Paquete</title>
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
                        <h2>Agregar Paquete</h2> 

                    </div> <!-- /.heading-section -->
                
                
               
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvPaquete" name="contactform" id="contactform">
                                <p>
                                    <input name="costo" type="text" id="costo" placeholder="Costo">
                                </p>
                                <p>
                                    <input name="servicios" type="text" id="servicios" placeholder="Servicios">
                                </p>

                                <input type="submit" value="Agregar" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
                        <a href="Paquetes.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>
