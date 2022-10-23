/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import static javax.xml.bind.DatatypeConverter.parseDouble;
import modelo.DAO_productos;
import modelo.DAO_usuario;
import modelo.productos;
import modelo.usuarios;

/**
 *
 * @author DUVER NAVEROS
 */
public class ControladorAdmin extends HttpServlet {

    productos product = new productos();
    usuarios usu = new usuarios();
    DAO_productos daoproductos = new DAO_productos();
    DAO_usuario daousuario = new DAO_usuario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");
        if (menu.equalsIgnoreCase("admin")) {
            switch (accion) {
                case "agregar":
                    try {
                    int identificacion = parseInt(request.getParameter("input-identificacion"));
                    String nombres = request.getParameter("input-nombre");
                    String primerApellido = request.getParameter("input-primer-apellido");
                    String segundoApellido = request.getParameter("input-segundo-apellido");
                    String correo = request.getParameter("input-correo");
                    String direccion = request.getParameter("input-direccion");
                    String numeroTelefonico = request.getParameter("input-numero");
                    String contraseña = request.getParameter("pass");
                    int permiso = parseInt(request.getParameter("select"));
                    usu.setIdentificacion(identificacion);
                    usu.setNombre(nombres);
                    usu.setPrimerApellido(primerApellido);
                    usu.setSegundoApellido(segundoApellido);
                    usu.setCorreo(correo);
                    usu.setDireccion(direccion);
                    usu.setNumero_telefonico(numeroTelefonico);
                    usu.setContraseña(contraseña);
                    usu.setPermiso(permiso);
                    daousuario.agregarAdmin(usu);
                    request.getRequestDispatcher("adminstrador-datos-usuarios.jsp").forward(request, response);
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al registrar el usuario");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
                break;
                case "agregarProducto":
                    try {
                    int id = parseInt(request.getParameter("input-codigo-producto"));
                    String nombre = request.getParameter("input-nombre-producto");
                    int categoria = parseInt(request.getParameter("select"));
                    String descripcion = request.getParameter("input-descripcion");
                    int precio = parseInt(request.getParameter("input-precio"));
                    String url = request.getParameter("input-url-imagen");
                    product.setId(id);
                    product.setNombre(nombre);
                    product.setCategoria(categoria);
                    product.setDescripcion(descripcion);
                    product.setPrecio(precio);
                    product.setFoto(url);
                    daoproductos.agregar(product);
                    request.getRequestDispatcher("controlador?menu=admin-index&accion=listar").forward(request, response);
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al registrar el producto");
                    request.getRequestDispatcher("agregar-productos.jsp").forward(request, response);
                }
                break;
                case "listarUsuarios":
                    try {
                    List lista1 = daousuario.listar();
                    request.setAttribute("usuariosLista", lista1);
                    request.getRequestDispatcher("adminstrador-datos-usuarios.jsp").forward(request, response);
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al cargar los usuarios");
                    request.getRequestDispatcher("index-admistrador.jsp").forward(request, response);
                }
                break;
                case "actualizarProduct":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    List lista1 = daoproductos.listarId(id);
                    request.setAttribute("productosLista", lista1);
                    request.getRequestDispatcher("actualizar-productos.jsp").forward(request, response);
                } catch (Exception e) {
                    request.setAttribute("usuario", usu);
                    request.getRequestDispatcher("controlador?menu=admin-index&accion=listar").forward(request, response);
                }
                break;
                case "actualizarProducto":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    String nombre = request.getParameter("input-nombre");
                    int categoria = parseInt(request.getParameter("select"));
                    String descripcion = request.getParameter("input-descripcion");
                    double precio = Double.parseDouble(request.getParameter("input-precio"));
                    String url = request.getParameter("input-url-imagen");

                    product.setId(id);
                    product.setNombre(nombre);
                    product.setCategoria(categoria);
                    product.setDescripcion(descripcion);
                    product.setPrecio(precio);
                    product.setFoto(url);
                    daoproductos.actualizar(product);
                    request.setAttribute("usuario", usu);
                    request.getRequestDispatcher("controlador?menu=admin-index&accion=listar").forward(request, response);

                } catch (Exception e) {
                    request.getRequestDispatcher("actualizar-productos.jsp").forward(request, response);
                }
                break;
                case "eliminarProduct":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    daoproductos.eliminar(id);
                    request.setAttribute("usuario", usu);
                    request.getRequestDispatcher("controlador?menu=admin-index&accion=listar").forward(request, response);
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al registrar el producto");
                    request.getRequestDispatcher("agregar-productos.jsp").forward(request, response);
                }
                break;

                case "actualizarUsuario":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    List lista1 = daousuario.listarId(id);
                    request.setAttribute("usuarioLista", lista1);
                    request.getRequestDispatcher("actualizar-usuarios.jsp").forward(request, response);
                    break;
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al actualizar el producto");
                    request.getRequestDispatcher("adminstrator-datos-usuarios.jsp").forward(request, response);
                }
                break;
                case "actualizarUsu":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    String nombre = request.getParameter("input-nombre");
                    String primerApellido = request.getParameter("input-primer-apellido");
                    String segundoApellido = request.getParameter("input-segundo-apellido");
                    String correo = request.getParameter("input-correo");
                    String direccion = request.getParameter("input-segundo-apellido");
                    String numeroTelefonico = request.getParameter("input-numero");
                    String pass = request.getParameter("pass");
                    int permiso = parseInt(request.getParameter("select"));

                    usu.setIdentificacion(id);
                    usu.setNombre(nombre);
                    usu.setPrimerApellido(primerApellido);
                    usu.setSegundoApellido(segundoApellido);
                    usu.setCorreo(correo);
                    usu.setDireccion(direccion);
                    usu.setNumero_telefonico(numeroTelefonico);
                    usu.setContraseña(pass);
                    usu.setPermiso(permiso);
                    daousuario.actualizar(usu);
                    request.getRequestDispatcher("ControladorAdmin?menu=admin&accion=listarUsuarios").forward(request, response);

                } catch (Exception e) {
                    request.getRequestDispatcher("ControladorAdmin?menu=admin&accion=listarUsuarios.jsp").forward(request, response);
                }
                break;
                case "eliminarUsu":
                    try {
                    int id = parseInt(request.getParameter("id"));
                    daousuario.eliminar(id);
                    request.getRequestDispatcher("ControladorAdmin?menu=admin&accion=listarUsuarios").forward(request, response);
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "error al registrar el producto");
                    request.getRequestDispatcher("agregar-productos.jsp").forward(request, response);
                }
                break;
            }

        }

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
