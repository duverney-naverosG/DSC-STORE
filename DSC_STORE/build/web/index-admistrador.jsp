<%@page import="java.util.ArrayList"%>
<%@page import="modelo.productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("admin") != null) {
        ArrayList<productos> produto = (ArrayList) request.getAttribute("index-administador");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRADOR</title>
        <jsp:include page="components/head.jsp"/>
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
    </head> 

    <body>
        <jsp:include page="components/menu-administrador.jsp"/>
        <!--  -->
        <h1 id="titulo-ultimos-productos">PRODUCTOS</h1>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <%
                        for (int i = 0; i < produto.size(); i++) {
                    %>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <!-- Product image-->
                            <img class="card-img-top" src=<%= produto.get(i).getFoto()%> alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%= produto.get(i).getNombre()%></h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted"></span>
                                    $<%= produto.get(i).getPrecio()%>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <a class="btn btn-warning" href="ControladorAdmin?menu=admin&accion=actualizarProduct&id=<%= produto.get(i).getId() %>">ACTUALIZAR</a></div>
                                <br>
                                <div class="text-center">
                                    <a class="btn btn-danger" href="ControladorAdmin?menu=admin&accion=eliminarProduct&id=<%= produto.get(i).getId() %>">ELIMINAR</a></div>
                            </div>
                        </div>
                    </div>
                <%
                    }
                %>
            </div>
        </section>
    <jsp:include page="components/footer.jsp"/>

</body>
</html>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>