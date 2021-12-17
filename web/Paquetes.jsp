<%-- 
    Document   : Paquetes
    Created on : 14/12/2021, 14:24:19
    Author     : Merlo
--%>

<%@page import="logica.ServicioTuristico"%>
<%@page import="logica.PaqueteTuristico"%>
<%@page import="java.util.List"%>
<%@page import="logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Agencia de Turismo</title>
    	<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/tablapersonas.css"/>
    </head>
    <body>
         <% HttpSession mysession = request.getSession();
        String user = (String) mysession.getAttribute("user");
        if(user == null){
            response.sendRedirect("login.jsp");
        }else{
            
        %>
                 <table>
  <thead>
    <tr>
      <th>Codigo paquete</th>
      <th>Costo</th>
      <th>Servicios</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<PaqueteTuristico> listaPaquetes = control.traerPaquetes();
      for(PaqueteTuristico c : listaPaquetes){%>
        <tr>
            <% int id = c.getCodigo_paquete();
               double costo = c.getCosto_paquete();
               List<ServicioTuristico> servicios = c.getLista_servicios_incluidos();

               

               
            %>
          <td><%=id%></td>
          <td><%=costo%></td>
          <td><%=servicios%></td>
          <td>
              <form name="modificarPaquete" action="SvModificarPaquete" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarPaquete" action="SvEliminarPaquete" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<div >
        <form  action="agregarPaquete.jsp">
            <button   type="submit">Agregar</button>
        </form>
    </div>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>

    </body>
    <%}%>
</html>
