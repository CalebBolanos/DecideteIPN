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
public class registro {
    private String _nombre, _email, _edad, _genero, _contrasena, _contrasena1, _cecyt;
    private String _error = "";
    private boolean _valido = false;
    
    public registro(String nombre, String email, String edad, String genero, String contrasena, String contrasena1, String cecyt) {
        this._nombre = nombre;
        this._email = email;
        this._edad = edad;
        this._genero = genero;
        this._contrasena = contrasena;
        this._contrasena1 = contrasena1;
        this._cecyt = cecyt;
    }
    
    public boolean VALIDO() {
        if (_nombre.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_email.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_edad.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_genero.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_contrasena.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_contrasena1.equals("")) {
            this._error = "Asegurate de no dejar datos en blanco";
            return false;
        } else if (_nombre.matches("[^0-9@:<>]+") == false) {//acepta caraceteres :'v
            this._error = "Escribe tu nombre sin numeros ni caracteres especiales";
            return false;
        } else if (_email.matches("^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})$") == false) {
            this._error = "Algo salio mal. Verifica que tu correo electronico sea valido";
            return false;
        } else if (_contrasena.equals(_contrasena1) == false) {
            this._error = "Algo esta mal. Asegurate de que las contraseñas sean identicas";
            return false;
        } else {
            try {
                if (Integer.parseInt(_edad) < 12) {
                    this._error = "Algo esta mal. Tu edad debe de ser mayor a 11";
                    return false;
                } else if (Integer.parseInt(_edad) > 99) {
                    this._error = "Algo esta mal. Tu edad debe de ser menor a 100";
                    return false;
                } else if (Integer.parseInt(_edad) - Math.floor(Integer.parseInt(_edad)) != 0) {
                    this._error = "Algo esta mal. Tu edad debe de ser un numero entero";
                    return false;
                } else if (Double.isNaN(Double.parseDouble(_edad))) {
                    this._error = "Algo esta mal. Escribe tu edad con numeros";
                    return false;
                } else if ((Integer.parseInt(_cecyt) >= 1 && Integer.parseInt(_cecyt) <=16) == false) {
                    this._error = "Algo esta mal. Escribe tu edad con numeros";
                    return false;
                } else if (Double.isNaN(Double.parseDouble(_genero))) {
                    this._error = "Algo esta mal. Probablemente alteraste los values de este select";
                    return false;
                } else if ((Integer.parseInt(_genero) == 1 || Integer.parseInt(_genero) == 2) == false) {
                    this._error = "Algo esta mal. Probablemente alteraste los values de este select";
                    return false;
                } else {
                    
                }
            } catch (Exception xDios) {
                this._error = "Algo esta mal. Verifica tus Datos";
                return false;
            }
        }
        {
            this._error = "bien hecho xd";
            return true;
        }
    }
    
    public boolean registrar(){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spGuardaEgresado(0,3,"+Integer.parseInt(_genero)+",'"+_nombre+"','"+_email+"',"+Integer.parseInt(_edad)+",'"+_contrasena+"',0,"+Integer.parseInt(_cecyt)+");");
            if(res.next()){
                if(res.getString("msj").equals("Usuario registrado exitosamente")){
                    this._valido = true;
                    return _valido;
                }
            }
        }
        catch(Exception xd){
            this._error = "Algo está mal, checa tus datos";
        }
        return _valido;
    }
    

    public String ERROR() {
        return this._error;
    }
}
