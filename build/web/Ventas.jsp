<%-- 
    Document   : Ventas
    Created on : 14/12/2021, 15:49:24
    Author     : Merlo
--%>

<%@page import="logica.Cliente"%>
<%@page import="logica.Usuario"%>
<%@page import="java.util.Date"%>
<%@page import="logica.Venta"%>
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
      <th>Id</th>
      <th>Fecha venta</th>
      <th>Vendedor</th>
      <th>Comprador</th>
      <th>Medio de pago</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<Venta> listaVentas = control.traerVentas();
     
      for(Venta v : listaVentas){%>
        <tr>
            <% int id = v.getNum_venta();
               String fechaventa = control.DateAString(v.getFecha_venta());
               String medio = v.getMedio_pago();  
               String u = v.getUsu().getUser();
               String c = v.getCli().getApellido();
               String cn = v.getCli().getNombre();
            %>
          <td><%=id%></td>
          <td><%=fechaventa%></td>
          <td><%=u%></td>
          <td><%=c%> <%=cn%></td>
          <td><%=medio%></td>
          <td>
              <form name="modificarVenta" action="SvModificarVenta" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarVenta" action="SvEliminarVenta" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<div >
        <form  action="agregarVenta.jsp">
            <button   type="submit">Agregar</button>
        </form>
    </div>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>

    </body>
    <%}%>
</html>