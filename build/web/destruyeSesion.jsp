<%-- 
    Document   : destruyeSesion
    Created on : 17/04/2017, 05:49:04 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    response.sendRedirect("index.html");
%>
