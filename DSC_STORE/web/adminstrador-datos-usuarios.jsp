<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("admin")!=null){
%>
<html>
    <!-- Start head -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USUARIOS</title>
        <jsp:include page="components/head.jsp"/>
        <link rel="stylesheet" href="assets/css/estilo-ultimos-productos.css">
    </head>

<body>
    <!-- Start Top menu -->
    <jsp:include page="components/menu-administrador.jsp"/>
    <!-- Close menu -->
    <jsp:include page="components/formulario-usuarios.jsp"/>
     <!--  -->    
       <!-- Start Footer -->
    <jsp:include page="components/footer.jsp"/>
       <!-- End footer -->
    
</body>

</html>
<%
    }else{
        response.sendRedirect("login.jsp");
    }
%>
