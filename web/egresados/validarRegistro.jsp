<%-- 
    Document   : validarRegistro
    Created on : 14/05/2017, 08:44:27 PM
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
    String cecyt = request.getParameter("cecyt") == null ? "" : request.getParameter("cecyt");

    validacionesEgresados.registro registrarse = new validacionesEgresados.registro(nombre, email, edad, genero, contrasena, contrasena1, cecyt);

    if (registrarse.VALIDO()) {
        if(registrarse.registrar()){
            String error = "¡Registrado exitosamente!<br>Inicia sesion para continuar";
            response.sendRedirect("iniciarSesion.jsp?e=" + error + "");
        }
        else{
            String error = "Algo salio mal. Tu correo electronico ya ha sido usado para registrarte";
            response.sendRedirect("registro.jsp?e=" + error + "");
        }
    } else {
        String error = registrarse.ERROR();
        response.sendRedirect("registro.jsp?e=" + error + "");
    }
%>
