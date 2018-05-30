<%-- 
    Document   : validaSesion
    Created on : 17/04/2017, 05:17:14 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String correo = request.getParameter("email");
    String contrasena = request.getParameter("contrasena");
    validaciones.verificaCorreo validar = new validaciones.verificaCorreo(correo, contrasena);

    validaciones.inicioDeSesion verifica = new validaciones.inicioDeSesion(correo, contrasena);

    if (validar.VALIDO()) {
        if (verifica.validaUsr()) {
            if (verifica.idTipo() == 1) {
                HttpSession sesion = request.getSession();
                int id = verifica.IDUSR();
                int tipo = verifica.idTipo();
                String nombre = verifica.NOMBREPERSONA();
                sesion.setAttribute("correo", correo);
                sesion.setAttribute("id", id);
                sesion.setAttribute("tipo", tipo);
                sesion.setAttribute("nombre", nombre);
                sesion.setAttribute("xContrasena", contrasena);
                //tipo examen
                session.setAttribute("c1", -1);
                session.setAttribute("c2", -1);
                session.setAttribute("c3", -1);
                session.setAttribute("c4", -1);
                session.setAttribute("c5", -1);
                session.setAttribute("c6", -1);
                session.setAttribute("c7", -1);
                session.setAttribute("c8", -1);
                session.setAttribute("c9", -1);
                session.setAttribute("c10", -1);

                //aptitudes
                session.setAttribute("servicioSocial", -1);
                session.setAttribute("ejecutiva", -1);
                session.setAttribute("verbal", -1);
                session.setAttribute("artistico", -1);
                session.setAttribute("musical", -1);
                session.setAttribute("organizacion", -1);
                session.setAttribute("cientifico", -1);
                session.setAttribute("calculo", -1);
                session.setAttribute("mecanica", -1);
                session.setAttribute("aireLibre", -1);

                //necesidades
                session.setAttribute("n1", -1);
                session.setAttribute("n2", -1);
                session.setAttribute("n3", -1);
                session.setAttribute("n4", -1);
                session.setAttribute("n5", -1);
                session.setAttribute("n6", -1);
                session.setAttribute("n7", -1);
                session.setAttribute("n8", -1);

                response.sendRedirect("paginaPrincipal.jsp");
            } else {

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
