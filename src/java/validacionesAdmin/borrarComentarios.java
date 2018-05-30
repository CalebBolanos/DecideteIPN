/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validacionesAdmin;

import java.sql.ResultSet;

/**
 *
 * @author Caleb
 */
public class borrarComentarios {
    int _id = 0;
    String _error = "";
    boolean _valido = false;
    
    public borrarComentarios(int id){
        this._id = id;
    }
    
    public boolean borrarxUsr(){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spEliminaComentariosUsr("+_id+");");
            if(res.next()){
                if(res.getString("msj").equals("ok")){
                    this._error = "Comentarios borrados exitosamente";
                    this._valido = true;
                    return this._valido;
                }
            }
        }
        catch(Exception xd){
            this._error = "El usuario no existe";
        }
        return _valido;
    }
    
    public boolean borrarxId(){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spEliminaComentariosId("+_id+");");
            if(res.next()){
                if(res.getString("msj").equals("ok")){
                    this._error = "Comentario borrado exitosamente";
                    this._valido = true;
                    return this._valido;
                }
            }
        }
        catch(Exception xd){
            this._error = "El comentario que intentas borrar no existe";
        }
        return _valido;
    }
    
    public boolean validoo(){
        if (_id <= 0) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        }else{
            return true;
        }
    }
    
    public String err(){
        return this._error;
    }
}
