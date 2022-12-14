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
        <title>REGISTRO ADMI</title>
        <jsp:include page="components/head.jsp"/>
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
    </head>
    
    <body>
        <jsp:include page="components/menu-administrador.jsp"/>
        
        <div class="container justify-content-center  " style=" padding-bottom:35px" >      
            <h1 id="titulo-registro" style="text-align:  center;">Registro</h1>           
            <span  class="cont-imagen-usaurio"  style="padding-left: 45px; padding-top: 0; margin-top: -20px; font-size: 12em; margin-bottom: -80px !important; padding-bottom: -30px; ">
               <i class="fa fa-user-circle" aria-hidden="true" style="width: 100%"></i>
           </span>
                     
             
           <form class="formulario-usuario justify-content-center" action="ControladorAdmin?menu=admin&accion=agregar" method="POST">
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
                           <span>Contrase??a</span>       
                     </div>
                    <div class="cont-inputs"  >
                        <select class="form-control" name="select" class="select-registro">
                          <option value=1>Administrador</option>
                          <option value=2>Usuario</option>                    
                        </select>
                     <span>Seleccion de permisos</span>
                    </div>
               </div>

               <div style="display:block; margin:auto; justify-content: center; text-align: center;">
                    <br>
               <input type="submit" name="accion" value="registrar" style="display:block; margin:auto; margin-top: 25px; margin-top: 55px; " class="btn btn-success text-center boton-registro">
               <br>
               </div>
              

           </form>
       
            
        </div>
       
         <jsp:include page="components/footer.jsp"/>
    </body>
</html>
<%
    }else{
        response.sendRedirect("login.jsp");
    }
%>
