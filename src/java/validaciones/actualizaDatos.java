/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaciones;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Caleb
 */
public class actualizaDatos {
    private String _nombre = "", _contrasena = "";
    private int _edad, _genero;
    private boolean _valido = false;
    
    public actualizaDatos(){
        
    }
    
    public boolean actualizar(int xId, String nombre, String xCorreo, String edad, String genero, String contrasena){ 
        BD.cDatos conexion = new BD.cDatos();
        
        try{
            conexion.conectar();
            ResultSet resultado = conexion.consulta("call spGuardaUsuarios(" +xId+ ", 1, " +Integer.parseInt(genero)+ ", '"+nombre+"', '"+xCorreo+"', "+Integer.parseInt(edad)+", '"+contrasena+"');");
            
            if(resultado.next()){
                if(resultado.getString("msj").equals("Actualizó con exito")){
                    this._nombre = nombre;
                    this._edad = Integer.parseInt(edad);
                    this._genero = Integer.parseInt(genero);
                    this._contrasena = contrasena;
                    this._valido = true;
                    return this._valido;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return _valido;
    }
}
