/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Publicacion;

import Database.Database;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cnk
 */
public class PublicacionDAO implements PublicacionCRUD {
    private Database database;
    
    public PublicacionDAO(){
        this.database = new Database();
    }

    @Override
    public void InsertarPublicacion(Publicacion pos) {
        System.out.print(pos.getArticulo().getNombre());
        int idArt = pos.getArticulo().getIdArticulo();
        int idCue = pos.getCuenta().getIdCuenta();
        String lo = pos.getUbicacion();
        try {
            this.database.excuteUpdate("insert into Publicaciones(idProducto,idCuenta,fec_Post,estado,ubicacion)"
                    + "values("+idArt+","+idCue+",NOW(),0,'"+pos.getUbicacion()+"')");
        } catch (SQLException ex) {
            Logger.getLogger(PublicacionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Publicacion LeerPublicacion(Publicacion pos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
