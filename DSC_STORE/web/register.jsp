<%-- 
    Document   : register
    Created on : 12/02/2022, 10:16:04 PM
    Author     : duver naveros
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR</title>
        <jsp:include page="components/head.jsp"/>
         <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
       
    </head>
    
    <body>
        <jsp:include page="components/menu-cliente.jsp"/>
        
        <div class="container justify-content-center  " style=" padding-bottom:35px" >      
            <h1 id="titulo-registro" style="text-align:  center;">Registro</h1>           
            <span  class="cont-imagen-usaurio" style="font-size: 12em; display: block; margin:auto; padding-left: 45px;margin-bottom: -80px !important; padding-bottom: -30px; ">
               <i class="fa fa-user-circle" aria-hidden="true" style="width: 100%"></i>
           </span>
                     
             
           <form class="formulario-usuario justify-content-center" action="controlador?menu=registrar&accion=agregar" method="POST">
                <div class="cont-campos-usuario"> 
                    <div class="cont-inputs">
                        <input name="input-identificacion" type="number" id="input-identificacion" required="required" >                        
                           <span>identificacion</span>       
                     </div>
                    <div class="form-group cont-inputs">
                          <input class="form-control" type="text" name="input-nombre" required="required" >                        
                          <span>Nombre</span>
                    </div >
                   
                     <div class="cont-inputs"> 
                          <input class="form-control" type="text" required="required" name="input-primer-apellido" >                        
                           <span>Primer apellido</span>
                     </div>   
                    
                    <div class="cont-inputs">                     
                        <input class="form-control" type="text" required="required" name="input-segundo-apellido" >                        
                        <span>Segundo  apellido</span>
                    </div> 

                    <div class="cont-inputs">     
                      <input class="form-control" required="required" type="email" name="input-correo" >                        
                      <span>Correo</span>
                   </div>
                  
                    <div class="cont-inputs">
                        <input class="form-control" required="required" type="text" name="input-direccion" >                        
                       <span>direccion</span>
                   </div>
                     <div class="cont-inputs">
                          <input class="form-control" required="required" type="text" name="input-numero" >                        
                          <span>Numero Telefonico</span>
                    </div>
                     <div class="cont-inputs">
                           <input class="form-control" required="required" type="text" name="pass" >                        
                           <span>Contraseña</span>       
                     </div>
                   
               </div>

               <div style="display:block; margin:auto; justify-content: center; text-align: center;">
                    <br>
               <input type="submit" name="accion" value="registrar" style="display:block; margin:auto; margin-top: 25px; margin-top: 55px; " class="btn btn-success text-center boton-registro">
               <br>
               
               <a href="login.jsp">iniciar sesion</a>
               </div>
           </form>  
        </div>
       
         <jsp:include page="components/footer.jsp"/>
    </body>
</html>