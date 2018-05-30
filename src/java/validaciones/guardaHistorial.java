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
public class guardaHistorial {
    private boolean _validoAp = false, _validoEx = false, _validoN = false, _validoG;
    
    public guardaHistorial(){
        
    }
    
    public boolean guardar(int xId, int totalAp, int totalc, int totaln, String escuela){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet res = base.consulta("call spGuardaHistorial(0,"+xId+","+totalAp+","+totalc+","+totaln+",'"+escuela+"');");
            if(res.next()){
                if(res.getString("msj").equals("Historial agregado corrctamente")){
                    this._validoG = true;
                    return _validoG;
                }
            }
        }
        catch(Exception xd){
            
        }
        return _validoG;
    }
    
    public boolean borraAptitudes(int xId){
        BD.cDatos basee = new BD.cDatos();
        try{
            basee.conectar();
            ResultSet rs = basee.consulta("call spDestruyeRegAptitudes("+xId+");");
            if(rs.next()){
                if(rs.getString("msj").equals("ok")){
                    this._validoAp = true;
                    return _validoAp;
                }
            }
        }
        catch(Exception xd){
            
        }
        return _validoAp;
    }
    
    public boolean borraNecesidades(int xId){
        BD.cDatos basex = new BD.cDatos();
        try{
            basex.conectar();
            ResultSet rt = basex.consulta("call spDestruyeRegNecesidades("+xId+");");
            if(rt.next()){
                if(rt.getString("msj").equals("ok")){
                    this._validoN = true;
                    return _validoN;
                }
            }
        }
        catch(Exception xd){
            
        }
        return _validoN;
    }
    
    public boolean borraExamen(int xId){
        BD.cDatos basexd = new BD.cDatos();
        try{
            basexd.conectar();
            ResultSet resultado = basexd.consulta("call spDestruyeRegConocimientos("+xId+");");
            if(resultado.next()){
                if(resultado.getString("msj").equals("OK")){
                    this._validoEx = true;
                    return _validoEx;
                }
            }
        }
        catch(Exception xd){
            
        }
        return _validoEx;
    }
    
    
    
    
}
