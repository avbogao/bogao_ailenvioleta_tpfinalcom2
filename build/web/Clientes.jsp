<%-- 
    Document   : Clientes
    Created on : 13/12/2021, 19:00:37
    Author     : Merlo
--%>

<%@page import="java.util.Date"%>
<%@page import="logica.Cliente"%>
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
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Dirección</th>
      <th>DNI</th>
      <th>Fecha de Nacimiento</th>
      <th>Nacionalidad</th>
      <th>Celular</th>
      <th>Email</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<Cliente> listaClientes = control.traerClientes();
      for(Cliente c : listaClientes){%>
        <tr>
            <% int id = c.getId_cliente();
               String nombre = c.getNombre();
               String apellido = c.getApellido();
               String direccion = c.getDirección();
               String dni = c.getDni();
               String fecha_nac = control.DateAString(c.getFecha_nac());
               String nacionalidad = c.getNacionalidad();
               String celular = c.getCelular();
               String email = c.getEmail();
               
            %>
          <td><%=id%></td>
          <td><%=nombre%></td>
          <td><%=apellido%></td>
          <td><%=direccion%></td>
          <td><%=dni%></td>
          <td><%=fecha_nac%></td>
          <td><%=nacionalidad%></td>
          <td><%=celular%></td>
          <td><%=email%></td>
          <td>
              <form name="modificarCliente" action="SvModificarCliente" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarCliente" action="SvEliminarCliente" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<div >
        <form  action="registrarCliente.jsp">
            <button   type="submit">Agregar</button>
        </form>
    </div>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>
    </body>
    <%}%>
</html>

