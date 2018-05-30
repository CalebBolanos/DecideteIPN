/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaciones;

/**
 *
 * @author Caleb
 */
public class verificaCorreo {
    
    private String _email, _contrasena;
    private String _error = "";
    
    public verificaCorreo(String email, String contrasena) {
        this._email = email;
        this._contrasena = contrasena;
    }
    
    
    public boolean VALIDO() {
        if (_email.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_contrasena.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        }
        if (_email.matches("^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})$") == false) {
            this._error = "Algo salio mal. Verifica que tu correo electrónico sea valido";
            return false;
        } else {
            this._error = "bien hecho xd";
            return true;
        }
    }
    
        public String ERROR() {
        return this._error;
    }
}
