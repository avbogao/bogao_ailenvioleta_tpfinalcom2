<%-- 
    Document   : agregarVenta
    Created on : 14/12/2021, 15:58:08
    Author     : Merlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Venta</title>
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
                        <h2>Agregar Venta</h2> 

                    </div> <!-- /.heading-section -->
                
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="POST" action= "SvVenta" name="contactform" id="contactform">
                                <p>
                                    <input name="fecha" type="date" id="fecha" placeholder="">
                                </p>
                                <p>
                                    <input name="medio" type="text" id="medio" placeholder="Medio de pago">
                                </p>

                                <input type="submit" value="Agregar" >
                            </form>
                        </div> <!-- /.contact-form -->
                        <!-- spacing for mobile viewing --><br><br>
                   
            <a href="Ventas.jsp">  <input type="button" value="Volver"></a>
            </div> <!-- /.container -->
        </div> <!-- /#contact -->
        <%}%>
    </body>
</html>
