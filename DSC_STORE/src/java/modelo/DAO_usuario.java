/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.conexion;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author DUVER NAVEROS
 */
public class DAO_usuario{
    conexion cn = new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    public usuarios validar(int identificacion, String pass){
        String sql= "select * from usuarios where identificacion=? and contraseña=?";
        usuarios usu = new usuarios();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, identificacion);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                usu.setIdentificacion(rs.getInt("identificacion"));
                usu.setNombre(rs.getString("nombres"));
                usu.setPrimerApellido(rs.getString("primer_apellido"));
                usu.setSegundoApellido(rs.getString("segundo_apellido"));
                usu.setCorreo(rs.getString("correo"));
                usu.setDireccion(rs.getString("direccion"));
                usu.setPermiso(rs.getInt("permiso"));
                usu.setNumero_telefonico(rs.getString("numero_telefonico"));
                usu.setContraseña(rs.getString("contraseña"));
            }
        } catch (Exception e) {
            System.out.println("error"+ e.getMessage());
        }
        return usu;
    }
    
    public List listar(){
        String sql = "select * from usuarios";
        List<usuarios> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                usuarios usuario = new usuarios();
                usuario.setIdentificacion(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setPrimerApellido(rs.getString(3));
                usuario.setSegundoApellido(rs.getString(4));
                usuario.setCorreo(rs.getString(5));
                usuario.setDireccion(rs.getString(6));
                usuario.setPermiso(rs.getInt(7));
                usuario.setNumero_telefonico(rs.getString(8));
                usuario.setContraseña(rs.getString(9));
                lista.add(usuario);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "erro al cargar los productos");
        }
        return lista;
    }
    
    public int agregar(usuarios u){
        String sql ="INSERT INTO usuarios(identificacion, nombres, primer_apellido, segundo_apellido, correo, direccion, permiso, numero_telefonico, contraseña) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, u.getIdentificacion());
            ps.setString(2, u.getNombre());
            ps.setString(3, u.getPrimerApellido());
            ps.setString(4, u.getSegundoApellido());
            ps.setString(5, u.getCorreo());
            ps.setString(6, u.getDireccion());
            ps.setInt(7, u.getPermiso());
            ps.setString(8, u.getNumero_telefonico());
            ps.setString(9, u.getContraseña());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al registrar el usuario BDS");
        }
        return r;
    }
    
    public int agregarAdmin(usuarios usu){
        String sql ="INSERT INTO usuarios(identificacion, nombres, primer_apellido, segundo_apellido, correo, direccion, permiso, numero_telefonico, contraseña) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            con=cn.conectar();
            usuarios usua = new usuarios();
            ps=con.prepareStatement(sql);
            ps.setInt(1, usu.getIdentificacion());
            ps.setString(2, usu.getNombre());
            ps.setString(3, usu.getPrimerApellido());
            ps.setString(4, usu.getSegundoApellido());
            ps.setString(5, usu.getCorreo());
            ps.setString(6, usu.getDireccion());
            ps.setInt(7, usu.getPermiso());
            ps.setString(8, usu.getNumero_telefonico());
            ps.setString(9, usu.getContraseña());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al registrar el ADMINISTRADOR");
        }
        return r;
    }
    
    public List listarId(int id){
        String sql = "select * from usuarios where identificacion="+id;
        List<usuarios> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                usuarios usuario = new usuarios();
                usuario.setIdentificacion(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setPrimerApellido(rs.getString(3));
                usuario.setSegundoApellido(rs.getString(4));
                usuario.setCorreo(rs.getString(5));
                usuario.setDireccion(rs.getString(6));
                usuario.setPermiso(rs.getInt(7));
                usuario.setNumero_telefonico(rs.getString(8));
                usuario.setContraseña(rs.getString(9));
                lista.add(usuario);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al listar el usuario");
        }
        
        return lista;
    }
    
    public int actualizar(usuarios u){
        String sql ="UPDATE usuarios SET  nombres=?, primer_apellido=?, segundo_apellido=?, correo=?, direccion=?, permiso=?, numero_telefonico=?, contraseña=? WHERE identificacion = ?";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, u.getNombre());
            ps.setString(2, u.getPrimerApellido());
            ps.setString(3, u.getSegundoApellido());
            ps.setString(4, u.getCorreo());
            ps.setString(5, u.getDireccion());
            ps.setInt(6, u.getPermiso());
            ps.setString(7, u.getNumero_telefonico());
            ps.setString(8, u.getContraseña());
            ps.setInt(9, u.getIdentificacion());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql ="delete from usuarios where identificacion="+id;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al elminar el usuario");
        }
    }
}
