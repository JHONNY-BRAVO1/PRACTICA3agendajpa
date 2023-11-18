<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contactos");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de contactos</h1>
        <a href="MainController?action=add">Nuevo Registro</a>
        <%--<a class="button" href="MainController?action=add">Nuevo Contacto</a>--%>
    
    <table border = "1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Teléfono</th>
            <th>Correo</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>
        <%
            for (Contacto item : lista){
        %>
        <tr>
            <td><%= item.getId()%></td>
            <td><%= item.getNombre()%></td>
            <td><%= item.getTelefono()%></td>
            <td><%= item.getCorreo()%></td>
            <td><a class="edit" href="MainController?action=edit&id=<%= item.getId() %>">Editar</a></td>
            <td><a class="delete" href="MainController?action=dele&id=<%= item.getId() %>">Eliminar</a></td>
        </tr>
        <%
          }
        %>
    </table>
    </body>
</html>
