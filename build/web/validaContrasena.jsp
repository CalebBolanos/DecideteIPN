<%-- 
    Document   : validaContrasena
    Created on : 10/05/2017, 10:53:48 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    int xId = (Integer) session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");
    String xContrasena = (String) sesion.getAttribute("xContrasena");

    String contrasenav= request.getParameter("psw") == null ? "" : request.getParameter("psw");
    String contrasena= request.getParameter("pswnew") == null ? "" : request.getParameter("pswnew");
    String contrasena1= request.getParameter("pswnew1") == null ? "" : request.getParameter("pswnew1");

    validaciones.cambioPsw revisar = new validaciones.cambioPsw(contrasena, contrasena1, contrasenav);
    validaciones.actualizarContra contra = new validaciones.actualizarContra();
    if (contrasenav.equals(xContrasena)) {
        if (revisar.valido()) {
            if (contra.actualiza(xId, contrasenav, contrasena)) {
                sesion.setAttribute("contrasena", contrasena);
                sesion.setAttribute("xContrasena", contrasena);

                String error = "Ok";
                response.sendRedirect("obtenerDatos.jsp?e=" + error + "");
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