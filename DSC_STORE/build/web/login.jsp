<%-- 
    Document   : login
    Created on : 12/02/2022, 09:53:07 PM
    Author     : ACER
--%>
<%-- 
    Document   : registro
    Created on : 1/02/2022, 01:36:20 PM
    Author     : cristian moncayo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIAR SESION</title>
        <jsp:include page="components/head.jsp"/>

    </head>

    <body>
        <jsp:include page="components/menu-cliente.jsp"/>
        <%
            if (session.getAttribute("admin") != null) {
                session.removeAttribute("admin");
            }
            if (session.getAttribute("usuario") != null) {
                session.removeAttribute("usuario");
            }
        %>

        <div class="container justify-content-center  " style=" padding-bottom:35px" >      
            <h1 id="titulo-registro" style="text-align:  center;">Iniciar Sesion</h1>           
            <span  class="cont-imagen-usaurio" style="font-size: 12em; margin-bottom: -80px !important; padding-bottom: -30px; padding-left: 50px; ">
                <i class="fa fa-user-circle" aria-hidden="true" style="width: 100%"></i>
            </span>

            <form class="formulario-usuario justify-content-center" action="validar" method="POST">
                <div class="cont-campos-usuario"> 

                    <div class="form-group cont-inputs">
                        <input name="input-identificacion" class="form-control" type="number" id="input-identificacion" required="required" >                        
                        <span>Identificacion</span>
                        <input name="pass" class="form-control" type="password" required="required" style="margin-top:20px;">                        
                        <span>contraseña</span> 
                    </div>
                </div>

                <div style="display:block; margin:auto; justify-content: center; text-align: center;">
                    <br>
                    <input type="submit" name="accion" value="ingresar" style="display:block; margin:auto; margin-top: 6px;" class="btn btn-success">
                    <br>
                    <a href="register.jsp">registrarse</a>
                </div>
            </form>

        </div>

        <jsp:include page="components/footer.jsp"/>
    </body>
</html>
