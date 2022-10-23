<%-- 
    Document   : registro
    Created on : 1/02/2022, 01:36:20 PM
    Author     : duver naveros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("admin")!=null){
%>
<html>

      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR PRODUCTO</title>
        <jsp:include page="components/head.jsp"/>
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
    </head>
    
        <body>
            <jsp:include page="components/menu-administrador.jsp"/>
            <div class=" justify-content-center text-center ">
                <h1 id="titulo-registro">Agregar</h1>
                <span><i class="bi bi-person-circle icono-perfil"></i></span>
                <span><i class="fa fa-sign-in"></i></span>


                <div class="mx-auto cont-imagen-agregar" style=" width: 200px; height:100; padding: 10px; " >    
                    <svg xmlns="http://www.w3.org/2000/svg" width="120" height="200" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg>
                </div>
              
                <div>
                    <form class="formulario-usuario   " action="ControladorAdmin?menu=admin&accion=agregarProducto" method="POST">
                        <div class="cont-campos-agregar container  "> 
                            <div class="cont-inputs">
                                <input class="form-control" type="number" name="input-codigo-producto" >                        
                                <span>Codigo de producto</span>
                            </div>
                            <div class="cont-inputs">
                                <input class="form-control" type="text" name="input-nombre-producto" >                        
                                <span>Nombre</span>
                            </div >
                            <div class="cont-inputs"  >
                                <select class="form-control" name="select" class="select-categoria">
                                    <option value=1>Hombre</option>
                                    <option value=2>Mujer</option>                    
                                    <option value=3>Infantil</option>
                                </select>
                                <span>Categoria</span>
                            </div>   
                             
                            <div class="cont-inputs" style="width: 100%;"  >   
                                <textarea class="form-control" name="input-descripcion" placeholder="ingrese la descripcion para el producto..."></textarea>                                       
                                <span>Descripcion</span>
                            </div>                            
                            <div class="cont-inputs"> 
                                <input class="form-control" type="number" name="input-precio" >                        
                                <span>Precio</span>
                            </div>  
                            <div class="cont-inputs">
                                <input class="form-control" type="text" name="input-url-imagen" >                        
                                <span>URL imagen</span>
                            </div>
                            
                            <input type="submit" name="accion" value="registrar" style="max-height: 40px; margin-top: 55px;" class="btn btn-success text-center boton-registro">
                        </div>

                    </form>
                </div>
                <br>
                <br>
            </div>

           <jsp:include page="components/footer.jsp"/>
    </body>
</html>
<%
    }else{
        response.sendRedirect("login.jsp");
    }
%>
