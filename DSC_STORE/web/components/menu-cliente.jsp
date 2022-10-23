<%-- 
    Document   : menu--adminstrador
    Created on : 12/02/2022, 09:51:30 PM
    Author     : ACER
--%><nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top" style="margin-bottom: 0px;">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none">DSC-STORE@gmail.com</a>
                <i class="fa fa-phone mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none">310-750-2272</a>
            </div>
        </div>
    </div>
</nav>
<!-- Close Top Nav -->


<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">

        <a class="navbar-brand text-success logo h1 align-self-center" href="controlador?menu=principal&accion=listar" style="margin: 0">
            DSC
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav" style="">
            <div  class=" "  style="display:block; margin-left: 165px;  margin-right:  100px;  margin-top:-25px; ">
                <ul class="nav navbar-nav " >
                    <li class="nav-item">
                        <a style=" margin-top: 20px; padding: 20px 50px 20px 50px;  background: white; border: none; outline: none;" class="dropdownMenuButton nav-link" href="controlador?menu=categoria_hombres&accion=listar">CABALLERO</a>
                    </li>  
                    <li class="nav-item">
                        <a style=" margin-top: 20px; padding: 20px 50px 20px 50px; background: white; border: none; outline: none;" class="dropdownMenuButton nav-link" href="controlador?menu=categoria_mujer&accion=listar">DAMAS</a>
                    </li>  
                    <li class="nav-item">
                        <a style="margin-top: 20px; padding: 20px 50px 20px 50px; background: white; border: none; outline: none;" class="float-right dropdownMenuButton nav-link" href="controlador?menu=categoria_niño&accion=listar">NIÑOS</a>
                    </li> 

                </ul>
            </div>
            <form class="d-flex" style="margin-top: 30px; margin-left:10px; float: left;" >
                <button class="btn btn-outline-ligth btn-success" type="submit">
                    <i class="bi-cart-fill me-1"></i>
                    Carro
                </button>
            </form>
            <a href="login.jsp" class="btn cont-imagen-usaurio" style="font-size: 5.5em;  float: right; margin-top: 30px; ">
                <i class="fa fa-user-circle" aria-hidden="true" style="width: 100%"></i>
            </a>

        </div>
    </div>
</nav>

