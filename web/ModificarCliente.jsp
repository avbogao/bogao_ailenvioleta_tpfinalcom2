<%-- 
    Document   : ModificarCliente
    Created on : 13/12/2021, 19:52:08
    Author     : Merlo
--%>

<%@page import="logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Cliente</title>
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
                            <form method="get" action= "SvModificarCliente" >
                                   <% Cliente c = (Cliente) mysession.getAttribute("cliente");
                                    {%>
                                
                                <p>
                                    <input name="nombre" type="text" id="nombre" placeholder="Nombre" value="<%=c.getNombre()%>">
                                </p>
                                <p>
                                    <input name="apellido" type="text" id="apellido" placeholder="Apellido" value="<%=c.getApellido()%>">
                                </p>
                                <p>
                                    <input name="direccion" type="text" id="direccion" placeholder="Dirección" value="<%=c.getDirección()%>">
                                </p>
                                <p>
                                    <input name="dni" type="text" id="dni" placeholder="DNI" value="<%=c.getDni()%>">
                                </p>
                                <p>
                                    <label>Fecha de nacimiento:</label>
                                    <input name="fecha_nac" type="date" id="fecha_nac" value="<%=c.getFecha_nac()%>">
                                </p>
                                <p>
                                    <input name="nacionalidad" type="text" id="nacionalidad" placeholder="Nacionalidad" value="<%=c.getNacionalidad()%>">
                                </p>
                                <p>
                                    <input name="celular" type="text" id="celular" placeholder="Celular" value="<%=c.getCelular()%>">
                                </p>
                                <p>
                                    <input name="email" type="text" id="email" placeholder="Mail" value="<%=c.getEmail()%>"> 
                                </p>

                                
                                
                                <input type="hidden" name="id" value="<%=c.getId_cliente()%>" >
                                <input type="submit" value="Modificar" >
                                <%}%>
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
     <a href="Clientes.jsp">  <input type="button" value="Volver"></a>              
            
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>