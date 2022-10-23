/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author DUVER NAVEROS
 */
public class DAO_productos {
    conexion cn = new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
        String sql = "select * from productos order by codigo_producto desc limit 20";
        List<productos> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                productos product = new productos();
                product.setId(rs.getInt(1));
                product.setNombre(rs.getString(2));
                product.setDescripcion(rs.getString(3));
                product.setPrecio(rs.getDouble(4));
                product.setCategoria(rs.getInt(5));
                product.setFoto(rs.getString(6));
                lista.add(product);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "erro al cargar los productos");
        }
        return lista;
    }
    
    public ArrayList listarHombres(){
        String sql = "select * from productos where categoria = 1 order by codigo_producto desc limit 20";
        ArrayList<productos> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                productos product = new productos();
                product.setId(rs.getInt(1));
                product.setNombre(rs.getString(2));
                product.setDescripcion(rs.getString(3));
                product.setPrecio(rs.getDouble(4));
                product.setCategoria(rs.getInt(5));
                product.setFoto(rs.getString(6));
                lista.add(product);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al cargar los productos");
        }
        return lista;
    }
    
    public List listarMujeres(){
        String sql = "select * from productos where categoria = 2 order by codigo_producto desc limit 20";
        List<productos> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                productos product = new productos();
                product.setId(rs.getInt(1));
                product.setNombre(rs.getString(2));
                product.setDescripcion(rs.getString(3));
                product.setPrecio(rs.getDouble(4));
                product.setCategoria(rs.getInt(5));
                product.setFoto(rs.getString(6));
                lista.add(product);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "erro al cargar los productos");
        }
        return lista;
    }
    
    public List listarNiños(){
        String sql = "select * from productos where categoria = 3 order by codigo_producto desc limit 20";
        List<productos> lista = new ArrayList();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                productos product = new productos();
                product.setId(rs.getInt(1));
                product.setNombre(rs.getString(2));
                product.setDescripcion(rs.getString(3));
                product.setPrecio(rs.getDouble(4));
                product.setCategoria(rs.getInt(5));
                product.setFoto(rs.getString(6));
                lista.add(product);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "erro al cargar los productos");
        }
        return lista;
    }
    
    public int agregar(productos p){
        String sql ="INSERT INTO productos(codigo_producto, nombre, descripcion, precio, categoria, foto) VALUES (?,?,?,?,?,?)";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, p.getId());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getDescripcion());
            ps.setDouble(4, p.getPrecio());
            ps.setInt(5, p.getCategoria());
            ps.setString(6, p.getFoto());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return r;
    }
    
    public List listarId(int id){
        productos product = new productos();
        List<productos> lista = new ArrayList();
        String sql = "select * from productos where codigo_producto="+id;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                product.setId(rs.getInt(1));
                product.setNombre(rs.getString(2));
                product.setDescripcion(rs.getString(3));
                product.setPrecio(rs.getDouble(4));
                product.setCategoria(rs.getInt(5));
                product.setFoto(rs.getString(6));
                lista.add(product);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al listar el producto BDS");
        }
        
        return lista;
    }
    
    public int actualizar(productos p){
        String sql ="UPDATE productos SET nombre = ?,descripcion=?, precio=?, categoria=?, foto=? WHERE codigo_producto = ?";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, p.getNombre());
            ps.setString(2, p.getDescripcion());
            ps.setDouble(3, p.getPrecio());
            ps.setInt(4, p.getCategoria());
            ps.setString(5, p.getFoto());
            ps.setInt(6, p.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al actualizar el producto");
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql ="delete from productos where codigo_producto="+id;
        JOptionPane.showMessageDialog(null, id);
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "error al eliminar el producto BDS");
        }
    }
}
