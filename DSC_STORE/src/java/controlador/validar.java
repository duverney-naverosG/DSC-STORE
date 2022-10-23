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
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import static javax.xml.bind.DatatypeConverter.parseString;
import modelo.DAO_productos;
import modelo.DAO_usuario;
import modelo.usuarios;

/**
 *
 * @author DUVER NAVEROS
 */
public class validar extends HttpServlet {
    DAO_usuario edao = new DAO_usuario();
    DAO_productos daoproductos = new DAO_productos();
    usuarios usu = new usuarios();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        HttpSession sesion = null;
        if(accion.equalsIgnoreCase("ingresar")){
            int identificacion = parseInt(request.getParameter("input-identificacion"));
            String pass = request.getParameter("pass");
            usu = edao.validar(identificacion, pass);
            if(usu != null && usu.getPermiso()== 1){
                sesion = request.getSession();
                sesion.setAttribute("admin", usu);
                List lista4 = daoproductos.listar();
                request.setAttribute("index-administador", lista4);
                request.getRequestDispatcher("controlador?menu=admin-index&accion=listar").forward(request, response);
            }else if(usu != null && usu.getPermiso()== 2){
                sesion = request.getSession();
                sesion.setAttribute("usuario", usu);
                request.getRequestDispatcher("controlador?menu=principal&accion=listar").forward(request, response);
            }else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
