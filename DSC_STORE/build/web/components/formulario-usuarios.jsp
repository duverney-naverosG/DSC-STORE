<%@page import="modelo.usuarios"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<usuarios> usuarios = (ArrayList) request.getAttribute("usuariosLista");
%>
<div class="container" style="display: flex; flex-wrap: nowrap; flex-direction: row;">


    <div class="row container">
        <h2 class="text-center">ADMINISTRACION DE USUARIOS</h2>
        <div class="col">
            <div  class="container-fluid"  style="margin-left: 10px; margin-top: 15px;">
                <table class="table table-bordered table-sm">
                    <thead>
                        <tr>
                            <td>identificacion</td>
                            <td>Nombres</td>
                            <td>primer Apellido</td>
                            <td>segundo Apellido</td>
                            <td>permiso</td>
                            <td>Correo</td>
                            <td>Direccion</td>
                            <td>Telefono</td>   
                            <td>accion</td> 
                        </tr>
                    </thead>
                    <tbody id="users">
                        <%
                            for (int i = 0; i < usuarios.size(); i++) {
                        %>
                        <tr >
                            <td><%= usuarios.get(i).getIdentificacion() %></td>                                     
                            <td><%= usuarios.get(i).getNombre() %></td>
                            <td><%= usuarios.get(i).getPrimerApellido() %></td>
                            <% if(usuarios.get(i).getPermiso()== 1){
                            %>
                            <td>administrador</td>
                            <%}else if(usuarios.get(i).getPermiso()== 2){
                            %>
                            <td>cliente</td>
                            <% } 
                            %>
                            <td><%= usuarios.get(i).getSegundoApellido() %></td>
                            <td><%= usuarios.get(i).getCorreo() %></td>
                            <td><%= usuarios.get(i).getDireccion() %></td>
                            <td><%= usuarios.get(i).getNumero_telefonico() %></td>
                            <td>
                                <a class="btn btn-secondary" href="ControladorAdmin?menu=admin&accion=actualizarUsuario&id=<%= usuarios.get(i).getIdentificacion() %>">
                                    <i class="fas fa-cog"></i>
                                </a>
                                <a class="user-delete btn btn-danger" href="ControladorAdmin?menu=admin&accion=eliminarUsu&id=<%= usuarios.get(i).getIdentificacion() %>" style="color:#fff;">
                                    <i class="far fa-trash-alt"></i>
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<br>

