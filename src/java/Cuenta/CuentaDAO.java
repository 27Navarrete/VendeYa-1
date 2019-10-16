/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cuenta;

import Database.Database;
import Usuario.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cnk
 */
public class CuentaDAO implements CuentaCRUD {

    private Database database;

    public CuentaDAO() {
        this.database = new Database();
    }

    @Override
    public void CrearCuenta(Cuenta ct) {
        try {
            this.database.excuteUpdate("insert into Cuentas(foto,fec_creacion,idUsuario)"
                    + "values('" + ct.getFoto() + "',NOW(),'" + ct.getUser().getIdUsuario() + "')");
        } catch (SQLException ex) {
            Logger.getLogger(CuentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void ActualizarFoto(Cuenta ct) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Cuenta LeerCuenta(Usuario user) {
        ResultSet rs = null;
        Cuenta ct = new Cuenta();
        try {
            rs = this.database.excuteQuery("select * from Cuentas where idUsuario=" + user.getIdUsuario());

            while (rs.next()) {
                ct.setIdCuenta(rs.getInt("idCuenta"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(CuentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ct;
    }

    @Override
    public ArrayList<Cuenta> LeerCuentas() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
