/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import Usuario.Usuario;
import Usuario.UsuarioDAO;

/**
 *
 * @author cnk
 */
public class Login {
    private Usuario user;
    private UsuarioDAO userDao;
    
    public Login(String user, String password){
        this.user = new Usuario();
        this.userDao = new UsuarioDAO();
        this.user.setCorreo(user);
        this.user.setPassword(password);
    }
    
    public String validarDatos(){
        Usuario us = new Usuario();
        us = this.userDao.leerUsuario(this.user);
        this.user = us;
        return this.user.getNombre();
    }
    
    public Usuario getUsuario(){
        return this.user;
    }
}
