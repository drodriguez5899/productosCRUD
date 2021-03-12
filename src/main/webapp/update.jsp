<%-- 
    Document   : insert
    Created on : 5 mar. 2021, 20:36:03
    Author     : David
--%>

<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Restaurante</a>

            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="servletProductos?op=listar">listar Productos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="servletProductos?op=insert1">Insertar nuevo producto</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">TPV</a>
                </li>
              </ul>
            </div>
        </nav>
        <h1>Actualizar producto</h1>
        <%
            Productos miProducto =(Productos) request.getAttribute("miProducto");
            String mensaje = (String) request.getAttribute("mensaje");
            String cadena ="";
            if(mensaje!=null){
                cadena="<h2 id='mensaje' class='alert alert-success'>Producto actualizado</h2>";
            }
            %>
            <%= cadena%>
        <form action="servletProductos" method="get">
            <p><label>Nombre: <input oninput="borraMensaje()" type="text" value="<%= miProducto.getNombre() %>" name="nombre" required > </label></p>
            <p><label>Imagen: <input oninput="borraMensaje()" type="text" value="<%= miProducto.getImagen() %>"  name="imagen" required > </label></p>
            <p><label>Categoría: <input oninput="borraMensaje()" type="text" value="<%= miProducto.getCategoria() %>" name="categoria" required > </label></p>
            <p><label>Precio: <input oninput="borraMensaje()" type="text" value="<%= miProducto.getPrecio() %>" name="precio" required > </label></p>
            <input type="hidden" name="op" required value="update2"> 
            <input type="submit" value="Actualizar" >       
        </form>
            <script>
                function borraMensaje(){
                    document.getElementById("mensaje").style.visiblity="hidden";
                }
                
                window.onbeforeunload = confirmExit;
            	function confirmExit()
            	{
              	return "Seguro que quiere salir?";
            	}

            </script>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
