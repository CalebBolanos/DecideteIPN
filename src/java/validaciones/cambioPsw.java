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
public class cambioPsw {
    
    private String _contrasena, _contrasena1, _contrasenav;
    private String _error = "";
    
    public cambioPsw(String contrasena, String contrasena1, String contrasenav){
        this._contrasena = contrasena;
        this._contrasena1 = contrasena1;
        this._contrasenav = contrasenav;
    }
    
    
    public boolean valido(){
        if (_contrasenav.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_contrasena.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_contrasena1.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if(_contrasena.equals(_contrasena1) == false){
            this._error = "Algo esta mal. Asegurate de que las contraseñas sean identicas";
            return false;
        } else{
            this._error = "ok";
            return true;
        }
    }
    
    public String error(){
        return this._error;
    }
}
