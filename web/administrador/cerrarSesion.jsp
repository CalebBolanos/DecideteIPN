<%-- 
    Document   : cerrarSesion
    Created on : 17/05/2017, 11:25:00 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession admin = request.getSession();
    admin.invalidate();
    response.sendRedirect("../.");
%>
