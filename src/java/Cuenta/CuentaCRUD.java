/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cuenta;

import Usuario.Usuario;
import java.util.ArrayList;

/**
 *
 * @author cnk
 */
public interface CuentaCRUD {
    public void CrearCuenta(Cuenta ct);
    public void ActualizarFoto(Cuenta ct);
    public Cuenta LeerCuenta(Usuario user);
    public ArrayList<Cuenta> LeerCuentas();
}
