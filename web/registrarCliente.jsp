<%-- 
    Document   : registrarCliente
    Created on : 13/12/2021, 19:15:01
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar cliente</title>
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
                        <h2>Registrar</h2> 

                    </div> <!-- /.heading-section -->
                
                
               
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvCliente" name="contactform" id="contactform">
                                <p>
                                    <input name="nombre" type="text" id="nombre" placeholder="Nombre">
                                </p>
                                <p>
                                    <input name="apellido" type="text" id="apellido" placeholder="Apellido">
                                </p>
                                <p>
                                    <input name="direccion" type="text" id="direccion" placeholder="Dirección">
                                </p>
                                <p>
                                    <input name="dni" type="text" id="dni" placeholder="DNI">
                                </p>
                                <p>
                                    <label>Fecha de nacimiento:</label>
                                    <input name="fecha_nac" type="date" id="fecha_nac">
                                </p>
                                <p>
                                    <input name="nacionalidad" type="text" id="nacionalidad" placeholder="Nacionalidad">
                                </p>
                                <p>
                                    <input name="celular" type="text" id="celular" placeholder="Celular">
                                </p>
                                <p>
                                    <input name="email" type="text" id="email" placeholder="Mail"> 
                                </p>

                                
                                <input type="submit" value="Registrarse" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
            <a href="Clientes.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>