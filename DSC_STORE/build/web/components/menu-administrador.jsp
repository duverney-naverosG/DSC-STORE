<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top" style="margin-bottom: 0px;">
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

        <a class="navbar-brand text-success logo h1 align-self-center" href="controlador?menu=admin-index&accion=listar" style="margin: 0">
            DSC
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a href="menu-cliente.jsp"></a>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill " >
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item">
                        <div class="dropdown" style="display:flex; flex-direction: row; flex-wrap: nowrap;" >

                            <div style=" position:relative;margin-left:260px">
                                <button   style="background: white; border: none; outline: none; padding-top:12.5px; padding-bottom:12px;" class="dropdownMenuButton nav-item" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    PRODUCTOS
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="agregar-productos.jsp">AGREGAR</a>
                                    <a class="dropdown-item" href="actualizar-productos.jsp">ACTUALIZAR</a>                                                              
                                </div>

                            </div>

                    </li>  
                    <li class="nav-item">
                        <div class="dropdown" style="display:flex; flex-direction: row; flex-wrap: nowrap;" >
                            <div style=" position:relative; margin-left:50px">
                                <button   style="background: white; border: none; outline: none; padding-top:12.5px; padding-bottom:12px;" class="dropdownMenuButton nav-item" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    USUARIOS
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="ControladorAdmin?menu=admin&accion=listarUsuarios">ADMINISTRAR</a>
                                    <a class="dropdown-item" href="agregar-usuarios.jsp">AGREGAR USUARIO ADMINISTRADOR</a>                                                              
                                </div>

                            </div>
                    </li>  
                </ul>
            </div> 
            <a href="login.jsp" class="nav-item btn cont-imagen-usaurio" style="font-size: 5.5em;  float: right; margin-top: 10px; ">
                <i class="fa fa-user-circle" aria-hidden="true" style="width: 100%"></i>
            </a>  
        </div>

    </div>
</nav>
