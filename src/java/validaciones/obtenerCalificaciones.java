/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaciones;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author Caleb
 */
public class obtenerCalificaciones {
    private int _c1, _c2, _c3, _c4, _c5, _c6,_c7, _c8, _c9, _c10; //tipo examen
    ArrayList <Integer> camposExamen = new ArrayList<>();
    private boolean _validaExamen = false;
    
    private int _servicioSocial, _ejecutiva, _verbal, _artistico, _musical, _organizacion, _cientifico, _calculo, _mecanica, _aireLibre; //aptitudes
    ArrayList <Integer> camposAptitudes = new ArrayList<>();
    private boolean _validaAptitudes = false;
    
    
    private int _n1, _n2, _n3, _n4, _n5, _n6,_n7, _n8;  //necesidades
    ArrayList <Integer> camposNecesidades = new ArrayList<>();
    private boolean _validaNecesidades = false;
    
    public obtenerCalificaciones(){
        
    }
    
    public boolean calificaExamen(int xId){
        BD.cDatos base = new BD.cDatos();
        try{
            base.conectar();
            ResultSet rs = base.consulta("call spConsultaCalif("+xId+");");
            if(rs.next()){
                if(rs.getString("msj").equals("ok")){
                    this._c1 = rs.getInt("c1");
                    this._c2 = rs.getInt("c2");
                    this._c3 = rs.getInt("c3");
                    this._c4 = rs.getInt("c4");
                    this._c5 = rs.getInt("c5");
                    this._c6 = rs.getInt("c6");
                    this._c7 = rs.getInt("c7");
                    this._c8 = rs.getInt("c8");
                    this._c9 = rs.getInt("c9");
                    this._c10 = rs.getInt("c10");
                    camposExamen.add(_c1);
                    camposExamen.add(_c2);
                    camposExamen.add(_c3);
                    camposExamen.add(_c4);
                    camposExamen.add(_c5);
                    camposExamen.add(_c6);
                    camposExamen.add(_c7);
                    camposExamen.add(_c8);
                    camposExamen.add(_c9);
                    camposExamen.add(_c10);
                    this._validaExamen = true;
                    return _validaExamen;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return _validaExamen;
    }
    
    public ArrayList xCamposExamen(){
        return camposExamen;
    }
    
    public boolean calificaAptitudes(int xId){
        BD.cDatos basee = new BD.cDatos();
        try{
            basee.conectar();
            ResultSet rs = basee.consulta("call spConsultaAptitudes("+xId+");");
            if(rs.next()){
                if(rs.getString("msj").equals("El resultado es:")){
                    this._servicioSocial = rs.getInt("c1");
                    this._ejecutiva = rs.getInt("c2");
                    this._verbal = rs.getInt("c3");
                    this._artistico = rs.getInt("c4");
                    this._musical = rs.getInt("c5");
                    this._organizacion = rs.getInt("c6");
                    this._cientifico = rs.getInt("c7");
                    this._calculo = rs.getInt("c8");
                    this._mecanica = rs.getInt("c9");
                    this._aireLibre = rs.getInt("c10");
                    camposAptitudes.add(_servicioSocial);
                    camposAptitudes.add(_ejecutiva);
                    camposAptitudes.add(_verbal);
                    camposAptitudes.add(_artistico);
                    camposAptitudes.add(_musical);
                    camposAptitudes.add(_organizacion);
                    camposAptitudes.add(_cientifico);
                    camposAptitudes.add(_calculo);
                    camposAptitudes.add(_mecanica);
                    camposAptitudes.add(_aireLibre);
                    this._validaAptitudes = true;
                    return _validaAptitudes;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return _validaAptitudes;
    }
    
    public ArrayList xCamposAptitudes(){
        return camposAptitudes;
    }
    
    public boolean calificaNecesidades(int xId){
        BD.cDatos bd = new BD.cDatos();
        try{
            bd.conectar();
            ResultSet rs = bd.consulta("call spConsultaNecesidades("+xId+");");
            if(rs.next()){
                if(rs.getString("msj").equals("ok")){
                    this._n1 = rs.getInt("c1");
                    this._n2= rs.getInt("c2");
                    this._n3 = rs.getInt("c3");
                    this._n4 = rs.getInt("c4");
                    this._n5 = rs.getInt("c5");
                    this._n6 = rs.getInt("c6");
                    this._n7 = rs.getInt("c7");
                    this._n8 = rs.getInt("c8");
                    camposNecesidades.add(_n1);
                    camposNecesidades.add(_n2);
                    camposNecesidades.add(_n3);
                    camposNecesidades.add(_n4);
                    camposNecesidades.add(_n5);
                    camposNecesidades.add(_n6);
                    camposNecesidades.add(_n7);
                    camposNecesidades.add(_n8);
                    this._validaNecesidades = true;
                    return _validaNecesidades;
                }
            }
        }
        catch(Exception xDios){
            
        }
        return _validaNecesidades;
    }
    
    public ArrayList xCamposNecesidades(){
        return camposNecesidades;
    }
}
