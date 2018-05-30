<%-- 
    Document   : verificaNecesidades
    Created on : 7/05/2017, 02:12:14 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null) {
        response.sendRedirect("index.html");
    }
    String xNombre = (String) sesion.getAttribute("nombre");
    Object xId = session.getAttribute("id");
    String xCorreo = (String) sesion.getAttribute("correo");

    int n1, n2, n3, n4, n5, n6, n7, n8;

    n1 = Integer.parseInt(request.getParameter("preg1"));
    n2 = Integer.parseInt(request.getParameter("preg2"));
    n3 = Integer.parseInt(request.getParameter("preg3"));
    n4 = Integer.parseInt(request.getParameter("preg4"));
    n5 = Integer.parseInt(request.getParameter("preg5"));
    n6 = Integer.parseInt(request.getParameter("preg6"));
    n7 = Integer.parseInt(request.getParameter("preg7"));
    n8 = Integer.parseInt(request.getParameter("preg8"));

    validaciones.guardaCalificaciones verificar = new validaciones.guardaCalificaciones();

    if (verificar.guardaNecesidades(xId, n1, n2, n3, n4, n5, n6, n7, n8)) {
        session.setAttribute("n1", n1);
        session.setAttribute("n2", n2);
        session.setAttribute("n3", n3);
        session.setAttribute("n4", n4);
        session.setAttribute("n5", n5);
        session.setAttribute("n6", n6);
        session.setAttribute("n7", n7);
        session.setAttribute("n8", n8);
        response.sendRedirect("examenes.jsp");
    }
    else{
        response.sendRedirect("examenes/necesidades.jsp");
    }


%>