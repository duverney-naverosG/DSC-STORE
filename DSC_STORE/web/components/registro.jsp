<%-- 
    Document   : registro
    Created on : 10/02/2022, 7:05:56 p. m.
    Author     : santiago cuellar
--%>

<h1>REGISTRO</h1>
    <form class="login-form">
        <p class="login-text">
          <span class="fa-stack fa-lg">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-user fa-stack-1x"></i>
          </span>
        </p>
        <input type="nombre" class="login-nombre"  required="true" placeholder="Nombres" />
        <input type="apellido1" class="login-apellido1" required="true" placeholder="Primer Apellido" />
        <input type="apellido2" class="login-apellido2" autofocus="true" required="true" placeholder="Segundo Apellido" />
        <input type="email" class="login-correo" autofocus="true" required="true" placeholder="Correo" />
        <input type="direccion" class="login-direccion" autofocus="true" required="true" placeholder="Direccion" />
        <input type="numero" class="login-numero" autofocus="true" required="true" placeholder="Numero Telefonico" />
        <input type="password" class="login-password" required="true" placeholder="Contraseña" />
        <input type="submit" name="Login" value="Registro" class="login-submit" />
        <a href="">Registrarse</a>
      </form>