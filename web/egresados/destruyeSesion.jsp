<%-- 
    Document   : destruyeSesion
    Created on : 14/05/2017, 10:27:36 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession egresado = request.getSession();
    egresado.invalidate();
    response.sendRedirect("../.");
%>
