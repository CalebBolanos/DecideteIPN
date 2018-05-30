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
public class verDatos {
    private String _contrasena = "", _genero = "";
    private int _edad;
    private boolean _valido = false;
    
    public verDatos(){
        
    }
    
    public boolean conseguirDatos(int xId, String xNombre){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet rs = base.consulta("call spTraeDatos("+xId+");");
            if(rs.next()){
                if(rs.getString("nombre").equals(xNombre)){
                    this._contrasena = rs.getString("contraseña");
                    this._genero = rs.getString("genero");
                    this._edad = rs.getInt("edad");
                    this._valido = true;
                    return _valido;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return _valido;
    }
    
    public String genero(){
        return _genero;
    }
    
    public int edad(){
        return _edad;
    }
    
    public String contrasena(){
        return _contrasena;
    }
}
