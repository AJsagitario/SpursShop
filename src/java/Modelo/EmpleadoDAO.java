/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public Empleado validar(String user, String dni) {
        Empleado em = new Empleado();
        String sql = "select * from empleado where User=? and Dni=?";
        try {
            con = cn.ConexionBD();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt("IdEmpleado"));
                em.setUser(rs.getString("user"));
                em.setDni(rs.getString("Dni"));
                em.setNom(rs.getString("Nombres"));
            }
        } catch (Exception e) {

        }
        return em;
    }

    //Operacion CRUD
    public List listar() {
        String sql = "select * from empleado";
        List<Empleado> lista = new ArrayList<>();
        try {
            con = cn.ConexionBD();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setId(rs.getInt(1));
                em.setDni(rs.getString(2));
                em.setNom(rs.getString(3));
                em.setTel(rs.getString(4));
                em.setEstado(rs.getString(5));
                em.setUser(rs.getString(6));
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;

    }

    public int agregar(Empleado em) {
        String sql = "insert into empleado(Dni, Nombres, Telefono, Estado, User)value(?,?,?,?,?,?)";
        try {
            con = cn.ConexionBD();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getTel());
            ps.setString(4, em.getEstado());
            ps.setString(5, em.getUser());     
        } catch (Exception e) {          
        }
        return r;
    }
    public Empleado listarId(int id){
        Empleado emp=new Empleado();
        String sql="select * from empleado where IdEmpleado="+id;
        try {
            con = cn.ConexionBD();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                emp.setDni(rs.getString(1));
                emp.setNom(rs.getString(2));
                emp.setTel(rs.getString(3));
                emp.setEstado(rs.getString(4));
                emp.setUser(rs.getString(5));               
            }
            } catch (Exception e) {
        }
        return emp;                 
    }

    public int actualizar(Empleado em) {
        String sql = "update empleado set Dni=?, Nombres=?, Telefono=?, Estado=?, User=? where IdEmpleado=?";
        try {
            con = cn.ConexionBD();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getTel());
            ps.setString(4, em.getEstado());
            ps.setString(5, em.getUser()); 
            ps.setInt(6, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {          
        }
        return r;
    }

    public void delete(int id) {
        String sql="delete from empleado where IdEmpleado="+id;
        try {
            con=cn.ConexionBD();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e) {          
        }

    }

}
