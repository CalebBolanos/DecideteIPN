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
public class guardaCalificaciones {
    private boolean _validaExamen = false;
    private boolean _validaAptitudes = false;
    private boolean _validaNecesidades = false;
    
    public guardaCalificaciones(){
        
    }
    
    public boolean guardaExamen(Object xId, int total, int c1, int c2, int c3, int c4, int c5, int c6, int c7, int c8, int c9, int c10){
        BD.cDatos basexd = new BD.cDatos();
        try{
            basexd.conectar();
            ResultSet res = basexd.consulta("call spGuardaResConocimiento(0,"+(Integer)xId+",3,0,0,0,"+c1+","+c2+","+c3+","+c4+","+c5+","+c6+","+c7+","+c8+","+c9+","+c10+");");
            if(res.next()){
                if(res.getString("msj").equals("Resultado agregado con éxito")){
                    this._validaExamen = true;
                    return this._validaExamen;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return this._validaExamen;
    }
    
    public boolean guardaAptitudes(Object xId, int servicioSocial, int ejecutiva, int verbal, int artistico, int musical, int organizacion, int cientifico, int calculo, int mecanica, int aireLibre){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet resultado = base.consulta("call spGuardaResAptitudes(0,"+(Integer)xId+",1,0,0,0,"+servicioSocial+","+ejecutiva+","+verbal+","+artistico+","+musical+","+organizacion+","+cientifico+","+calculo+","+mecanica+","+aireLibre+");");
            if(resultado.next()){
                if(resultado.getString("msj").equals("Resultado agregado con éxito")){
                    this._validaAptitudes = true;
                    return this._validaAptitudes;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return this._validaAptitudes;
    }
    
    public boolean guardaNecesidades(Object xId, int n1, int n2, int n3, int n4, int n5, int n6, int n7, int n8){
        
        BD.cDatos bd = new BD.cDatos();
        try{
            bd.conectar();
            ResultSet resultado = bd.consulta("call spGuardaNecesidades(0,"+(Integer)xId+",2,0,"+n1+","+n2+","+n3+","+n4+","+n5+","+n6+","+n7+","+n8+");");
            if(resultado.next()){
                if(resultado.getString("msj").equals("Resultado agregado con éxito")){
                    this._validaNecesidades = true;
                    return this._validaNecesidades;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return this._validaNecesidades;
    }
    
}
