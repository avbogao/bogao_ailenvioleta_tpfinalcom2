<%-- 
    Document   : ModificarEmpleado
    Created on : 13/12/2021, 16:00:45
    Author     : Merlo
--%>

<%@page import="logica.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
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
                            <form method="get" action= "SvModificarEmpleado" >
                                <% 
                                    Empleado e = (Empleado) mysession.getAttribute("empleado");
                                    {%>
                                
                                <p>
                                    <input name="nombre" type="text" id="nombre" placeholder="Nombre" value="<%=e.getNombre()%>">
                                </p>
                                <p>
                                    <input name="apellido" type="text" id="apellido" placeholder="Apellido" value="<%=e.getApellido()%>">
                                </p>
                                <p>
                                    <input name="direccion" type="text" id="direccion" placeholder="Dirección" value="<%=e.getDirección()%>">
                                </p>
                                <p>
                                    <input name="dni" type="text" id="dni" placeholder="DNI" value="<%=e.getDni()%>">
                                </p>
                                <p>
                                    <label>Fecha de nacimiento:</label>
                                    <input name="fecha_nac" type="date" id="fecha_nac" value="<%=e.getFecha_nac()%>">
                                </p>
                                <p>
                                    <input name="nacionalidad" type="text" id="nacionalidad" placeholder="Nacionalidad" value="<%=e.getNacionalidad()%>">
                                </p>
                                <p>
                                    <input name="celular" type="text" id="celular" placeholder="Celular" value="<%=e.getCelular()%>">
                                </p>
                                <p>
                                    <input name="email" type="text" id="email" placeholder="Mail" value="<%=e.getEmail()%>"> 
                                </p>
                                <p>
                                    <input name="cargo" type="text" id="cargo" placeholder="Cargo" value="<%=e.getCargo()%>">
                                </p>
                                <p>
                                    <input name="sueldo" type="text" id="sueldo" placeholder="Sueldo" value="<%=e.getSueldo()%>"> 
                                </p>
                                
                                
                                <input type="hidden" name="id" value="<%=e.getId_empleado()%>" >
                                <input type="submit" value="Modificar" >
                                <%}%>
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   <a href="Empleados.jsp">  <input type="button" value="Volver"></a>
            
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
     <%}%>
    </body>
</html>
