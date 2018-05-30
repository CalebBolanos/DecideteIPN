<%-- 
    Document   : cambiarContra
    Created on : 17/05/2017, 08:58:09 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession egresado = request.getSession();
    if(egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null ){
        response.sendRedirect("../../.");
    }
    int xId = (Integer)egresado.getAttribute("id");
    String xContrasena = (String)egresado.getAttribute("contrasena");
    String contrasenav= request.getParameter("psw") == null ? "" : request.getParameter("psw");
    String contrasena= request.getParameter("pswnew") == null ? "" : request.getParameter("pswnew");
    String contrasena1= request.getParameter("pswnew1") == null ? "" : request.getParameter("pswnew1");
    
    validaciones.cambioPsw revisar = new validaciones.cambioPsw(contrasena, contrasena1, contrasenav);
    validaciones.actualizarContra contra = new validaciones.actualizarContra();
    if (contrasenav.equals(xContrasena)) {
        if (revisar.valido()) {
            if (contra.actualiza(xId, contrasenav, contrasena)) {
                egresado.setAttribute("contrasena", contrasena);

                String error = "Ok";
                response.sendRedirect("obtenerData.jsp?e=" + error + "");
            } else {
                String error = "Algo salio mal. ";
                response.sendRedirect("usuario.jsp");

            }
        } else {
            String error = revisar.error();
            response.sendRedirect("usuario.jsp?e=" + error + "");
        }
    } else {
        String error = "Contraseña incorrecta";
        response.sendRedirect("usuario.jsp?e="+error+"");
    }
    

    
%>