<%-- 
    Document   : crearSesion
    Created on : 17/05/2017, 11:12:49 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contra = request.getParameter("acceso");
    
    if(contra.equals("qwerty")){
        HttpSession admin = request.getSession();
        int id = 1;
        admin.setAttribute("id", id);
        response.sendRedirect("inicio.jsp");
    }
    else{
        response.sendRedirect("../.");
    }
    
%>
