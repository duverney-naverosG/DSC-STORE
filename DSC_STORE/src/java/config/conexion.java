/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {
   private final String baseDatos = "dsc_store";
   private final String url = "jdbc:postgresql://localhost:5432/"+baseDatos;
   private final String usuario = "admin_dsc";
   private final String clave = "18cpzitc42";
   Connection cn = null;
   
   public Connection conectar(){
       try{
            Class.forName("org.postgresql.Driver");
            cn = DriverManager.getConnection(url, usuario, clave);
       } catch (Exception e) {
           System.out.println("error al conectar"+e.getMessage());
       }
       return cn;
    }
}
