<%-- 
    Document   : listar
    Created on : 5 mar. 2021, 20:53:44
    Author     : David
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Productos</h1>
        <%
            List<Productos> misProductos = (List<Productos>) request.getAttribute("misProductos");
        %>
        
        <table border="1">
            <tr>
                <th>id</th>
                <th>Nombre</th>
                <td>Imagen</td>
                <td>Categoria</td>
                <td>Precio</td>
                <td>Borrar</td>
            </tr>
            <% 
                for(Productos p: misProductos){
                String cadenaBorrar = "<a onclick='return Confirmation()' href='servletProductos?op=borrar&id="+p.getId()+"'>Borrar</a>";
            %>
                
                <tr>
                    <td> <%= p.getId() %></td>
                    <td> <%= p.getNombre() %></td>
                    <td> <%= p.getImagen() %></td>
                    <td> <%= p.getCategoria() %></td>
                    <td> <%= p.getPrecio() %></td>
                    <td><%= cadenaBorrar %></td>
                </tr>
                <%}%>
            
        </table>
                <script type="text/javascript">
                    function Confirmation(){
                        if(confirm('Esta seguro de eliminar el registro')==true){
                            alert('El registro se ha eliminado correctamente');
                            return true;
                        }else{
                            alert('Operacion cancelada');
                            return false;
                        }
                    }
                    
                </script>
    </body>
</html>
