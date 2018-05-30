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
public class inicioDeSesion {

    private String _nombre = "";
    private String _apellidos = "";
    private String _mail = "";
    private char _genero = 'x';
    private int _idUsr = 0, _idTipo = 0;
    private String _error = "";
    private boolean _valido = false;

    public inicioDeSesion() {

    }

    public inicioDeSesion(int idusr) {
        BD.cDatos bd = new BD.cDatos();
        try {
            bd.conectar();
            ResultSet rsVal = bd.consulta("call spDatosPersona(" + idusr + ");");

            while (rsVal.next()) {
                int idper = Integer.parseInt(rsVal.getString("personaId"));
                if (idper > 0) {
                    this._idUsr = idper;
                    this._valido = true;
                    this._error = rsVal.getString("NombreC");
                    this._nombre = rsVal.getString("NombreC");
                    this._apellidos = "";//rsVal.getString("apellidos");
                }
            }

        } catch (Exception xxD) {
            this._idUsr = 0;
            this._valido = false;
            this._error = xxD.getMessage();
        }
    }

    public inicioDeSesion(String correo, String contrasena) {

        BD.cDatos bd = new BD.cDatos();
        try {
            bd.conectar();
            ResultSet rsVal = bd.consulta("call spValidaUsr('" + correo + "', '" + contrasena + "');");

            if (rsVal.next()) {
                int idper = Integer.parseInt(rsVal.getString("idPer"));
                int idTipo = Integer.parseInt(rsVal.getString("idTipo"));
                if (idTipo == 1) {
                    this._idUsr = idper;
                    this._idTipo = idTipo;
                    this._valido = true;
                    this._error = rsVal.getString("msj");
                    this._nombre = rsVal.getString("NombreC");
                }
            }

        } catch (Exception xxD) {
            this._idUsr = 0;
            this._valido = false;
            this._error = xxD.getMessage();
        }

    }
    
    public String NOMBREPERSONA(){
        return this._nombre;
    }

    public int IDUSR() {
        return this._idUsr;
    }
    
    public int idTipo(){
        return this._idTipo;
    }

    public boolean validaUsr() {
        /*
        conectamos a bd y regresamos
         */

        //de la base de datos
        if (this._idUsr == 1) {
            this._valido = true;
            this._error = "el papu de los papus pro +100000 lince";
        } else {
            this._error = "mal msj de lbd";
        }

        return this._valido;
    }

    public int registraUsr() {
        return this._idUsr;
    }

    public String ERROR() {
        return this._error;
    }

    public boolean RgistraUSR(String nombre, String email, String edad, String genero, String contrasena, String contrasena1) {

        BD.cDatos conex = new BD.cDatos();

        try {
            conex.conectar();

            ResultSet rsguarda = conex.consulta("call spGuardaUsuarios(0, 1, " +Integer.parseInt(genero)+ ", '"+nombre+"', '"+email+"', "+Integer.parseInt(edad)+", '"+contrasena+"');");//(0,1,2,'Obed','obed@gmail.com',17,'qwerty')

            if (rsguarda.next()) {

                if (rsguarda.getString("msj").equals("Usuario registrado exitosamente")) {

                    /*int rgesoDelSP = Integer.parseInt(rsguarda.getString("idPer"));//poner el sp
                    this._idUsr = rgesoDelSP;
                    this._error = rsguarda.getString("msj");
                    this._nombre = rsguarda.getString("NombreC");*/
                    return this._valido = true;
                }
            }

        } catch (Exception xxxxD) {
            return this._valido;
        }
        /*if (this._idUsr > 0) {
            this._valido = true;
        }*/

        return this._valido;
    }
    
}

