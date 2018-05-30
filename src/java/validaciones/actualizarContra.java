/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaciones;

import java.sql.ResultSet;

/**
 *
 * @author Caleb
 */
public class actualizarContra {
    private boolean _valido = false;
    
    public actualizarContra(){
        
    }
    
    public boolean actualiza(int xId, String contrasenav, String contrasena){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spActualizaContraseña("+xId+", '"+contrasenav+"', '"+contrasena+"');");
            if(res.next()){
                if(res.getString("msj").equals("Contraseña actualizada"));
                this._valido = true;
                return this._valido;
            }
        }
        catch(Exception xd){
            
        }
        return _valido;
    }
}
