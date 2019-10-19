/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Articulo;

import Categoria.CategoriaDAO;
import Categoria.SubCategoria;
import Database.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cnk
 */
public class ArticuloDAO implements ArticuloCRUD {

    private Database database;

    public ArticuloDAO() {
        this.database = new Database();
    }

    @Override
    public Articulo LeerArticulo(Articulo articulo) {
        ResultSet rs = null;
        CategoriaDAO ctD = new CategoriaDAO();
        Articulo ar = new Articulo();

        try {
            rs = this.database.excuteQuery("select * from Productos where nombre='" + articulo.getNombre() + "' and precio=" + articulo.getPrecio());
            while (rs.next()) {
                ar.setIdArticulo(rs.getInt("idProducto"));
                ar.setNombre(rs.getString("nombre"));
                ar.setPrecio(rs.getInt("precio"));
                SubCategoria sb = ctD.leerSubCategoria(rs.getInt("idsubCategoria"));
                ar.setSubCategoria(sb);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ArticuloDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ar;
    }

    @Override
    public ArrayList<Articulo> LeerArticulos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void ActualizarArticulo(Articulo articulo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void InsertarArticulo(Articulo articulo) {
        try {
            this.database.excuteUpdate("insert into Productos(nombre,precio,idSubCategoria) values "
                    + "('" + articulo.getNombre() + "', " + articulo.getPrecio() + ","
                    + "" + articulo.getSubCategoria().getIdCat() + ")");

        } catch (SQLException ex) {
            Logger.getLogger(ArticuloDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void insertarArticuloImages(int id, String imagen) {
        try {
            this.database.excuteUpdate("insert into Productos_Imagenes(idProducto,Imagen) values"
                    + "(" + id + ",'" + imagen + "')");

        } catch (SQLException ex) {
            Logger.getLogger(ArticuloDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
