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
public class comentarios {
    private int _id = 0, _escComentario = 0;
    private String _comentario;
    private String _error = "";
    public boolean _valido = false;
    
    public comentarios(int xId, int xescComentario, String comentario){
        this._id = xId;
        this._escComentario = xescComentario;
        this._comentario = comentario;
        
    }
    
    public boolean comentar(){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spGuardaComentarios(0,"+_id+","+_escComentario+",'"+_comentario+"');");
            if(res.next()){
                if(res.getString("msj").equals("ok")){
                    this._error = "Comentario subido";
                    this._valido = true;
                    return this._valido;
                }
            }
        }
        catch(Exception xd){
            
        }
        this._error = "error de base";
        return this._valido;
    }
    
    public boolean validoxd(){
        if(_comentario.length() > 140){
            this._error = "excedio numero de caracteres";
            return false;
        } else if(_comentario.length() == 0){
            this._error = "comentario vacio";
            return false;
        } else if(_comentario.matches("[^;<>]+") == false){
            this._error = "no escribas html";
            return false;
        } else if(_id == 0){
            this._error = "id erroneo";
            return false;
        } else if(_escComentario <=0){
            this._error = "id escuela erroneo";
            return false;
        } else{
            this._error = "bien";
            return true;
        }
    }
    
    public String errorxd(){
        return this._error;
    }
    
}
