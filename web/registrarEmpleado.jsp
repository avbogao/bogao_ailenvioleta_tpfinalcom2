<%-- 
    Document   : SvEmpleado
    Created on : 11/12/2021, 16:08:22
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrate</title>
    </head>
    <body>
         <div class="content-section" id="registrate" >
            <div class="container">
                
                    <div class="heading-section col-md-12 text-center">
                        <h2>Registrate</h2> 

                    </div> <!-- /.heading-section -->
                
                
               
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvEmpleado" name="contactform" id="contactform">
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
                                <p>
                                    <input name="cargo" type="text" id="cargo" placeholder="Cargo">
                                </p>
                                <p>
                                    <input name="sueldo" type="text" id="sueldo" placeholder="Sueldo">
                                </p>
                                <p>
                                    <input name="user" type="text" id="user" placeholder="Nombre de usuario">
                                </p>
                                <p>
                                    <input name="password" type="password" id="password" placeholder="Contraseña">
                                </p>
                                
                                <input type="submit" value="Registrarse" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
            <a href="Empleados.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
    </body>
</html>
