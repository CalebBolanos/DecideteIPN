<%-- 
    Document   : validarContenido
    Created on : 15/05/2017, 01:32:11 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession egresado = request.getSession();
    if(egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null ){
        response.sendRedirect("../../.");
    }
    int xId = (Integer)egresado.getAttribute("id");
    int xescComentario = (Integer)egresado.getAttribute("escComentario");
    String comentario = request.getParameter("comentario");
    
    validacionesEgresados.comentarios comenta = new validacionesEgresados.comentarios(xId, xescComentario, comentario);
    
    if(comenta.validoxd()){
        if(comenta.comentar()){
           String error = comenta.errorxd();
           response.sendRedirect("cecyts/cecyt"+xescComentario+".jsp?e=" + error + "");
        }
        else{
            String error = comenta.errorxd();
            response.sendRedirect("cecyts/cecyt"+xescComentario+".jsp?e=" + error + "");
        }
    }
    else{
        String error = comenta.errorxd();
        response.sendRedirect("cecyts/cecyt"+xescComentario+".jsp?e=" + error + "");
    }
    
%>
