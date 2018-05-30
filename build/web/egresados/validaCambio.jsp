<%-- 
    Document   : validaCambio
    Created on : 16/05/2017, 04:12:59 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession egresado = request.getSession();
    if (egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null) {
        response.sendRedirect("../.");
    }
    int id = (Integer)egresado.getAttribute("id");
    String email = (String)egresado.getAttribute("correo");
    String nombre = new String(request.getParameter("nombre").getBytes(), "UTF-8") == null ? "" : new String(request.getParameter("nombre").getBytes(), "UTF-8");
    String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
    String genero = request.getParameter("genero") == null ? "" : request.getParameter("genero");
    String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
    String contrasena1 = (String)egresado.getAttribute("contrasena");
    String cecyt = "1";
    
    validacionesEgresados.registro valida = new validacionesEgresados.registro(nombre, email, edad, genero, contrasena, contrasena1, cecyt);
    validacionesEgresados.cambiaDatos cambiar = new validacionesEgresados.cambiaDatos();
    
    if(contrasena.equals(contrasena1)){
        if(valida.VALIDO()){
            if(cambiar.cambiarDatos(id, nombre, email, edad, genero, contrasena)){
                egresado.setAttribute("nombre", nombre);
                egresado.setAttribute("contrasena", contrasena);
                egresado.setAttribute("edad", edad);
                egresado.setAttribute("genero", genero);
                
                String error = "Datos actualizados";
                response.sendRedirect("obtenerData.jsp?e=" + error + "");
                
            }
            else{
                String error = "Algo salio mal";
                response.sendRedirect("usuario.jsp?e="+error+"");
            }
        }
        else{
            String error = valida.ERROR();
            response.sendRedirect("usuario.jsp?e="+error+"");
        }
    }
    else{
        String error = "Contraseña incorrecta";
        response.sendRedirect("usuario.jsp?e="+error+"");
    }
    
    
    
%>
