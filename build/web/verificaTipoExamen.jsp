<%-- 
    Document   : verificaTipoExamen
    Created on : 7/05/2017, 06:29:04 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    Object xId = session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");
    
    int total = Integer.parseInt(request.getParameter("t"));
    int c1 = Integer.parseInt(request.getParameter("c1"));
    int c2 = Integer.parseInt(request.getParameter("c2"));
    int c3 = Integer.parseInt(request.getParameter("c3"));
    int c4 = Integer.parseInt(request.getParameter("c4"));
    int c5 = Integer.parseInt(request.getParameter("c5"));
    int c6 = Integer.parseInt(request.getParameter("c6"));
    int c7 = Integer.parseInt(request.getParameter("c7"));
    int c8 = Integer.parseInt(request.getParameter("c8"));
    int c9 = Integer.parseInt(request.getParameter("c9"));
    int c10 = Integer.parseInt(request.getParameter("c10"));
    
    validaciones.guardaCalificaciones verificar = new validaciones.guardaCalificaciones();
    
    if(verificar.guardaExamen(xId, total, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)){
        session.setAttribute("c1", c1);
        session.setAttribute("c2", c2);
        session.setAttribute("c3", c3);
        session.setAttribute("c4", c4);
        session.setAttribute("c5", c5);
        session.setAttribute("c6", c6);
        session.setAttribute("c7", c7);
        session.setAttribute("c8", c8);
        session.setAttribute("c9", c9);
        session.setAttribute("c10", c10);
        response.sendRedirect("examenes.jsp");
    }
    else{
        response.sendRedirect("examenes/tipoExamen.jsp");
    }
%>
