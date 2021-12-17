<%-- 
    Document   : ModificarServicio
    Created on : 14/12/2021, 13:37:56
    Author     : Merlo
--%>

<%@page import="logica.ServicioTuristico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Servicio</title>
    </head>
    <body>
        <% HttpSession mysession = request.getSession();
        String user = (String) mysession.getAttribute("user");
        if(user == null){
            response.sendRedirect("login.jsp");
        }else{
            
        %>
         <div class="content-section" id="agregaServicio" >
            <div class="container">
                
                    <div class="heading-section col-md-12 text-center">
                        <h2>Modificar Servicio</h2> 

                    </div> <!-- /.heading-section -->
                
                
               
   
                        <div class="contact-form"> <!-- aca esta el formulario -->
                            <form method="get" action= "SvModificarServicio" >
                                <% 
                                    ServicioTuristico st = (ServicioTuristico) mysession.getAttribute("servicio");
                                    {%>
                                
                                <p>
                                    <input name="nombre" type="text" id="nombre" placeholder="Nombre" value="<%=st.getNombre()%>">
                                </p>
                                <p>
                                    <input name="descripcion" type="text" id="descripcion" placeholder="descripcion" value="<%=st.getDescripcion_breve()%>">
                                </p>
                                <p>
                                    <input name="destino" type="text" id="destino" placeholder="destino" value="<%=st.getDestino_servicio()%>">
                                <p>
                                    <label>Fecha:</label>
                                    <input name="fecha" type="date" id="fecha" value="<%=st.getFecha_servicio()%>">
                                </p>
                                <p>
                                    <input name="costo" type="text" id="costo" placeholder="costo" value="<%=st.getCosto_servicio()%>">
                                </p>

                                
                                <input type="hidden" name="id" value="<%=st.getCodigo_servicio()%>" >
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
