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
public class borrarUsr {

    int _id = 0;
    String _error = "";
    boolean _valido = false;

    public borrarUsr(int idUsr) {
        this._id = idUsr;
    }

    public boolean borrar() {
        BD.cDatos base = new BD.cDatos();
        try {
            base.conectar();
            ResultSet res = base.consulta("call spEliminaUsuarios(" + _id + ");");
            if (res.next()) {
                if (res.getString("msjFinal").equals("El usr no existe")) {
                    this._error = "El usuario que intentas borrar no existe";
                    return _valido;
                }
            }
        } catch (Exception xd) {
            this._error = "Usuario borrado exitosamente";
            this._valido = true;
            return this._valido;

        }
        return _valido;
    }

    public boolean validar() {
        if (_id <= 0) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        }else if (_id == 1) {
            this._error = "No puedes borrar al administrador";
            return false;
        } else{
            return true;
        }
    }

    public String Err() {
        return this._error;
    }
}
