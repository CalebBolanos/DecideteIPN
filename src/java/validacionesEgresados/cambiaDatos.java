/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validacionesEgresados;

import java.sql.ResultSet;

/**
 *
 * @author Caleb
 */
public class cambiaDatos {
    public boolean _valido = false;
    
    public cambiaDatos(){
        
    }
    
    public boolean cambiarDatos(int id, String nombre, String email, String edad, String genero, String contrasena){
        BD.cDatos conexion = new BD.cDatos();
        try{
            conexion.conectar();
            ResultSet res = conexion.consulta("call spActualizaEgrsado("+id+",'"+nombre+"','"+email+"',"+Integer.parseInt(edad)+","+Integer.parseInt(genero)+",'"+contrasena+"');");
            
            if(res.next()){
                if(res.getString("msj").equals("Actualizó con exito")){
                    this._valido = true;
                    return this._valido;
                }
            }
            
        }
        catch(Exception xd){
            
        }
        return _valido;
    }
}
