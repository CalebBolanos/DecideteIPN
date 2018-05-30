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
public class inicioSesion {

    private String _email, _contrasena, _nombre;
    private String _error = "";
    private int _idUsr = 0, _idTipo = 0;
    private boolean _valido = false;

    public inicioSesion(String correo, String contrasena) {
        this._email = correo;
        this._contrasena = contrasena;
    }

    public boolean iniciarSesion() {
        BD.cDatos basexd = new BD.cDatos();
        try {
            basexd.conectar();
            ResultSet resultado = basexd.consulta("call spValidaEgresado('" + _email + "','" + _contrasena + "');");
            if (resultado.next()) {
                if (resultado.getString("msj").equals("ok")) {
                    if (Integer.parseInt(resultado.getString("idTipo")) == 3) {
                        this._idUsr = Integer.parseInt(resultado.getString("idPer"));
                        this._nombre = resultado.getString("NombreC");
                        this._idTipo = Integer.parseInt(resultado.getString("idTipo"));
                        this._valido = true;
                        return this._valido;
                    }

                }
            }
        } catch (Exception xd) {

        }
        return this._valido;
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

    public int xId() {
        return this._idUsr;
    }
    
    public int xIdTipo(){
        return this._idTipo;
    }

    public String xNombre() {
        return this._nombre;
    }

}
