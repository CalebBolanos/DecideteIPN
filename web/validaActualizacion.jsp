<%-- 
    Document   : validaActualizacion
    Created on : 5/05/2017, 11:23:05 PM
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

    String nombre = new String(request.getParameter("nombre").getBytes(), "UTF-8") == null ? "" : new String(request.getParameter("nombre").getBytes(), "UTF-8");
    String edad = request.getParameter("edad") == null ? "" : request.getParameter("edad");
    String genero = request.getParameter("genero") == null ? "" : request.getParameter("genero");
    String contrasena = request.getParameter("contrasena") == null ? "" : request.getParameter("contrasena");

    validaciones.registro parametros = new validaciones.registro(nombre, xCorreo, edad, genero, contrasena, xContrasena);
    validaciones.actualizaDatos verificar = new validaciones.actualizaDatos();
    if (contrasena.equals(xContrasena)) {
        if (parametros.VALIDO()) {
            if (verificar.actualizar(xId, nombre, xCorreo, edad, genero, contrasena)) {
                sesion.setAttribute("nombre", nombre);
                sesion.setAttribute("contrasena", contrasena);
                sesion.setAttribute("edad", edad);
                sesion.setAttribute("genero", genero);

                String error = "Ok";
                response.sendRedirect("obtenerDatos.jsp?e=" + error + "");
            } else {
                String error = "Algo salio mal. ";
                response.sendRedirect("usuario.jsp");

            }
        } else {
            String error = parametros.ERROR();
            response.sendRedirect("usuario.jsp?e=" + error + "");
        }
    } else {
        String error = "Contraseña incorrecta";
        response.sendRedirect("usuario.jsp?e="+error+"");
    }

%>
