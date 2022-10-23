<%-- 
    Document   : index
    Created on : 26/01/2022, 5:36:22 p. m.
    Author     : DUVER NAVEROS
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<productos> produto = (ArrayList) request.getAttribute("productos");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
        <jsp:include page="components/head.jsp"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    </head>

    <body>
        <!-- Start Top menu -->
        <jsp:include page="components/menu-cliente.jsp"/>
        <!-- Close menu -->

        <!-- Start Top acordeon -->
        <jsp:include page="components/acordeon.jsp"/>
        <!-- End acordeon -->
        <h1 id="titulo-ultimos-productos">ultimos productos</h1>
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
                                <div class="text-center"><a class="btn btn-success" href="#">AGREGAR</a></div>
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
