º<%-- 
    Document   : validarSesion
    Created on : 14/05/2017, 09:35:37 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String correo = request.getParameter("email");
    String contrasena = request.getParameter("contrasena");
    validacionesEgresados.inicioSesion iniciar = new validacionesEgresados.inicioSesion(correo, contrasena);

    if (iniciar.VALIDO()) {
        if (iniciar.iniciarSesion()) {
            if (iniciar.xIdTipo()== 3) {
                HttpSession egresado = request.getSession();
                int id = iniciar.xId();
                int tipo = iniciar.xIdTipo();
                String nombre = iniciar.xNombre();
                int escComentario = 0;
                egresado.setAttribute("correo", correo);
                egresado.setAttribute("contrasena", contrasena);
                egresado.setAttribute("id", id);
                egresado.setAttribute("tipo", tipo);
                egresado.setAttribute("escComentario", escComentario);
                egresado.setAttribute("nombre", nombre);
                response.sendRedirect("paginaPrincipal.jsp");
            } else {
                String error = "No puedes iniciar sesión aquí porque eres aspirante";
                response.sendRedirect("iniciarSesion.jsp?e=" + error + "");
            }
        } else {
            String error = "Algo salio mal. Correo electronico o contraseña incorrecta";
            response.sendRedirect("iniciarSesion.jsp?e=" + error + "");
        }
    } else {
        String error = "Algo salio mal. Correo electronico o contraseña incorrecta";
        response.sendRedirect("iniciarSesion.jsp?e=" + error + "");
    }
%>
