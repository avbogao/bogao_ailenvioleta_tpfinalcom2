<%-- 
    Document   : verPersonas
    Created on : 12/12/2021, 12:24:22
    Author     : Merlo
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="logica.Empleado"%>
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
      <th>Cargo</th>
      <th>Sueldo</th>
      <th>Modificar</th>
      <th>Eliminar</th>
    </tr>
  </thead>
  <tbody>
      <% Controladora control = new Controladora(); 
      List<Empleado> listaEmpleados = control.traerEmpleados();
      for(Empleado e : listaEmpleados){%>
        <tr>
            <% int id = e.getId_empleado();
               String nombre = e.getNombre();
               String apellido = e.getApellido();
               String direccion = e.getDirección();
               String dni = e.getDni();
               Date fecha_nac = control.pasarADate(control.DateAString(e.getFecha_nac()));
               String nacionalidad = e.getNacionalidad();
               String celular = e.getCelular();
               String email = e.getEmail();
               String cargo = e.getCargo();
               Double sueldo = e.getSueldo();
               
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
          <td><%=cargo%></td>
          <td><%=sueldo%></td>
          <td>
              <form name="modificarEmpleado" action="SvModificarEmpleado" method="post">
                 <input type="hidden" name="id" value="<%=id%>"/>
                 <button type="submit" >Modificar</button>
              </form>
          </td>
              
          <td>
              <form name="eliminarEmpleado" action="SvEliminarEmpleado" method="post">
                  <input type="hidden" name="id" value="<%=id%>"/>
                  <button type="submit" >Eliminar</button>
              </form>
          </td>
        </tr>

  </tbody>
        <%}%>
</table>
<div >
        <form  action="registrarEmpleado.jsp">
            <button   type="submit">Agregar</button>
        </form>
    </div>
<a href="accesoEmpleados.jsp">  <input type="button" value="Volver"></a>

    </body>
    <%}%>
</html>
