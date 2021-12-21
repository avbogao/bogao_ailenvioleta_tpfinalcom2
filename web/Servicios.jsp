<%-- 
    Document   : Servicios
    Created on : 13/12/2021, 20:43:49
    Author     : Merlo
--%>

<%@page import="java.util.Date"%>
<%@page import="logica.ServicioTuristico"%>
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
      <th>Codigo servicio</th>
      <th>Nombre</th>
      <th>Descripción</th>
      <th>Destino</th>
      <th>Fecha</th>
      <th>Costo</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<ServicioTuristico> listaServicios = control.traerServicios();
      for(ServicioTuristico c : listaServicios){%>
        <tr>
            <% int id = c.getCodigo_servicio();
               String nombre = c.getNombre();
               String descripcion = c.getDescripcion_breve();
               String destino = c.getDestino_servicio();
               String fecha = control.DateAString(c.getFecha_servicio());
               double costo = c.getCosto_servicio();
               
               

               
            %>
          <td><%=id%></td>
          <td><%=nombre%></td>
          <td><%=descripcion%></td>
          <td><%=destino%></td>
          <td><%=fecha%></td>
          <td><%=costo%></td>
          <td>
              <form name="modificarServicio" action="SvModificarServicio" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarServicio" action="SvEliminarServicio" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<div >
        <form  action="agregarServicio.jsp">
            <button   type="submit">Agregar</button>
        </form>
    </div>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>

    </body>
    <%}%>
</html>

