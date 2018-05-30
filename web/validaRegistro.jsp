<%-- 
    Document   : validaRegistro
    Created on : 4/05/2017, 05:17:54 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = new String(request.getParameter("nombre").getBytes(), "UTF-8") == null ? "" : new String(request.getParameter("nombre").getBytes(), "UTF-8");
    String email = request.getParameter("email") == null ? "" : request.getParameter("email");
    String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
    String genero = request.getParameter("genero") == null ? "" : request.getParameter("genero");
    String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");
    String contrasena1 = request.getParameter("contrasena1") == null ? "" : request.getParameter("contrasena1");

    validaciones.registro registrar = new validaciones.registro(nombre, email, edad, genero, contrasena, contrasena1);

    validaciones.inicioDeSesion verificar = new validaciones.inicioDeSesion();
    if (registrar.VALIDO()) {
        if(verificar.RgistraUSR(nombre, email, edad, genero, contrasena, contrasena1)){
            String error = "¡Registrado exitosamente!<br>Inicia sesion para continuar";
            response.sendRedirect("iniciarSesion.jsp?e=" + error + "");
        }
        else{
            String error = "Algo salio mal. Tu correo electronico ya ha sido usado para registrarte";
            response.sendRedirect("registroUsuarios.jsp?e=" + error + "");
        }
    } else {
        String error = registrar.ERROR();
        response.sendRedirect("registroUsuarios.jsp?e=" + error + "");
    }
%>
