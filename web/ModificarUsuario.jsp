<%-- 
    Document   : ModificarUsuario
    Created on : 13/12/2021, 18:36:38
    Author     : Merlo
--%>

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar usuario</title>
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
                            <form method="get" action= "SvModificarUsuario" >
                                <% 
                                    Usuario u = (Usuario) mysession.getAttribute("usuario");
                                    {%>
                                
                                <p>
                                    <input name="usuario" type="text"  placeholder="Usuario" value="<%=u.getUser()%>">
                                </p>
                                <p>
                                    <input name="contraseña" type="password"  placeholder="Contraseña" value="<%=u.getPass()%>">
                                </p>
                               
                                
                                
                                <input type="hidden" name="id" value="<%=u.getId_user()%>" >
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

