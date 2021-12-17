<%-- 
    Document   : agregarServicio
    Created on : 13/12/2021, 20:55:58
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar servicio</title>
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
                        <h2>Agregar Servicio</h2> 

                    </div> <!-- /.heading-section -->
                
                
               
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvServicio" name="contactform" id="contactform">
                                <p>
                                   <select name="nombre">

                                        <option>Hotel por noche/s</option>

                                        <option>Alquiler de auto</option>

                                        <option>Pasajes de colectivo</option>
                                        
                                        <option>Pasajes de avión</option>
                                        
                                        <option>Pasajes de tren</option>
                                        
                                        <option>Excursiones</option>
                                        
                                        <option>Entradas a Eventos</option>

                                    </select>
                                </p>
                                <p>
                                    <input name="descripcion" type="text" id="descripcion" placeholder="Descripción">
                                </p>
                                <p>
                                    <input name="destino" type="text" id="direccion" placeholder="Destino">
                                </p>
                                <p>
                                    <label>Fecha:</label>
                                    <input name="fecha" type="date" id="fecha">
                                </p>
                                <p>
                                    <input name="costo" type="text" id="costo" placeholder="Costo">
                                </p>
                                
                                <input type="submit" value="Agregar" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
                        <a href="Servicios.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>
