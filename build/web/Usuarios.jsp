<%-- 
    Document   : Usuarios
    Created on : 13/12/2021, 17:25:02
    Author     : Merlo
--%>

<%@page import="logica.Venta"%>
<%@page import="logica.Usuario"%>
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
      <th>Nombre de usuario</th>
      <th>Contraseña</th>
      <th>Ventas</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<Usuario> listaUsuarios = control.traerUsuarios();
      for(Usuario u : listaUsuarios){%>
        <tr>
            <% int id = u.getId_user();
               String username = u.getUser();
               String pass = u.getPass();
               List<Venta> ventas = u.getVentas();
            %>
          <td><%=id%></td>
          <td><%=username%></td>
          <td><%=pass%></td>
          <td><%=ventas%></td>
          <td>
              <form name="modificarUsuario" action="SvModificarUsuario" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarUsuario" action="SvEliminarUsuario" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>

    <%}%>
</html>
