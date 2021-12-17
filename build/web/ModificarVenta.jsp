<%-- 
    Document   : ModificarVenta
    Created on : 14/12/2021, 15:57:53
    Author     : Merlo
--%>

<%@page import="logica.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Venta</title>
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
                            <form method="get" action= "SvModificarVenta" >
                                <%
                                    Venta v = (Venta) mysession.getAttribute("venta");
                                    {%>
                                
                                <p>
                                    <input name="fecha" type="text" id="fecha" placeholder="fecha" value="<%=v.getFecha_venta()%>">
                                </p>
                                <p>
                                    <input name="medio" type="text" id="medio" placeholder="medio" value="<%=v.getMedio_pago()%>">
                                </p>
                                
                                <input type="hidden" name="id" value="<%=v.getNum_venta()%>" >
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
