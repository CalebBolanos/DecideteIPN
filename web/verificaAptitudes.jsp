<%-- 
    Document   : verificaAptitudes
    Created on : 6/05/2017, 04:49:41 PM
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
    
    int servicioSocial, ejecutiva, verbal, artistico, musical, organizacion, cientifico, calculo, mecanica, aireLibre;
    servicioSocial = Integer.parseInt(request.getParameter("preg1")) + Integer.parseInt(request.getParameter("preg11"));
    ejecutiva = Integer.parseInt(request.getParameter("preg2")) + Integer.parseInt(request.getParameter("preg12"));
    verbal = Integer.parseInt(request.getParameter("preg3")) + Integer.parseInt(request.getParameter("preg13"));
    artistico = Integer.parseInt(request.getParameter("preg4")) + Integer.parseInt(request.getParameter("preg14"));
    musical = Integer.parseInt(request.getParameter("preg5")) + Integer.parseInt(request.getParameter("preg15"));
    organizacion = Integer.parseInt(request.getParameter("preg6")) + Integer.parseInt(request.getParameter("preg16"));
    cientifico = Integer.parseInt(request.getParameter("preg7")) + Integer.parseInt(request.getParameter("preg17"));
    calculo = Integer.parseInt(request.getParameter("preg8")) + Integer.parseInt(request.getParameter("preg18"));
    mecanica = Integer.parseInt(request.getParameter("preg9")) + Integer.parseInt(request.getParameter("preg19"));
    aireLibre = Integer.parseInt(request.getParameter("preg10")) + Integer.parseInt(request.getParameter("preg20"));
    
    validaciones.guardaCalificaciones verificar = new validaciones.guardaCalificaciones();
    if(verificar.guardaAptitudes(xId, servicioSocial, ejecutiva, verbal, artistico, musical, organizacion, cientifico, calculo, mecanica, aireLibre)){
        session.setAttribute("servicioSocial", servicioSocial);
        session.setAttribute("ejecutiva", ejecutiva);
        session.setAttribute("verbal", verbal);
        session.setAttribute("artistico", artistico);
        session.setAttribute("musical", musical);
        session.setAttribute("organizacion", organizacion);
        session.setAttribute("cientifico", cientifico);
        session.setAttribute("calculo", calculo);
        session.setAttribute("mecanica", mecanica);
        session.setAttribute("aireLibre", aireLibre);
        response.sendRedirect("examenes.jsp");
    }
    else{
        response.sendRedirect("examenes/aptitudes.jsp");
    }
%>
