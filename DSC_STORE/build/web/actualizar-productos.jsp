<%-- 
    Document   : registro
    Created on : 1/02/2022, 01:36:20 PM
    Author     : cristian moncayo
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("admin") != null) {
        ArrayList<productos> producto = (ArrayList) request.getAttribute("productosLista");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR PRODUCTO</title>
        <jsp:include page="components/head.jsp"/>
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
    </head>

    <body>


        <jsp:include page="components/menu-administrador.jsp"/>
        <div class=" justify-content-center text-center ">
            <h1 id="titulo-registro">Actualizar</h1>
            <span><i class="bi bi-person-circle icono-perfil"></i></span>
            <span><i class="fa fa-sign-in"></i></span>


            <div class="mx-auto cont-imagen-agregar" style=" width: 200px; height:100; padding: 10px; " >    
                <svg xmlns="http://www.w3.org/2000/svg" width="120" height="200" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg>
            </div>

            <div class=" container " style="" >  
                <form class="formulario-usuario" action="ControladorAdmin?menu=admin&accion=actualizarProducto&id=<%= producto.get(0).getId() %>" method="POST"> 
                    <div class="cont-campos-agregar " Style="margin-bottom:28px">                     

                        <div class="cont-inputs">
                            <% if(producto != null){
                            %>
                            <input class="form-control" value="<%= producto.get(0).getId() %>" disabled  type="text" name="input-codigo-producto" >
                            <% }else {
                            %>
                            <input class="form-control" value=""  type="text" name="input-codigo-producto" >                        
                            <% } %>
                            <span>codigo producto</span>
                        </div>

                        <button class="btn btn-secondary " style="max-height: 40px; margin-top: 55px; ">Buscar</button>

                        <div class="cont-inputs clase-precio"> 
                   
                            <input class="form-control" value="<%= producto.get(0).getNombre() %>" type="text" name="input-nombre" >
                            
                            <span>nombre</span>
                        </div>                      

                        <div class="cont-inputs"  >
                            <select class="form-control" name="select" class="select-categoria">
                                <% if(producto.get(0).getCategoria() == 1){%>
                                <option value=1>Hombre</option>
                                <option value=2>Mujer</option>                    
                                <option value=3>Infantil</option>
                                <% }else if(producto.get(0).getCategoria() == 2){
                                %>
                                <option value=2>Mujer</option> 
                                <option value=1>Hombre</option>                   
                                <option value=3>Infantil</option>
                                <% }else { 
                                %>
                                <option value=3>Infantil</option>
                                <option value=2>Mujer</option> 
                                <option value=1>Hombre</option>                   
                                <%}%>
                            </select>
                            <span>Categoria</span>
                        </div> 



                        <div class="cont-inputs" style="width: 100%">   
                            <textarea class="form-control" name="input-descripcion" placeholder="ingrese la descripcion para el producto..."><%= producto.get(0).getDescripcion() %></textarea>                                       
                            <span>Descripcion</span>
                        </div>
                        <div class="cont-inputs">
                            <input  class="form-control" value="<%= producto.get(0).getPrecio() %>" type="number" name="input-precio" >                        
                            <span>precio</span>
                        </div>

                        <div class="cont-inputs">
                            <input  class="form-control" value="<%= producto.get(0).getFoto() %>" type="text" name="input-url-imagen" >                        
                            <span>URL imagen</span>
                        </div>
          
                        <input type="submit" name="accion" value="actualizar" style="max-height: 40px; margin-top: 55px;" " class="btn btn-success text-center boton-registro">
                    </div>
                </form>          
            </div>

            <jsp:include page="components/footer.jsp"/>
    </body>
</html>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>