<%-- 
    Document   : guardar
    Created on : 12/05/2017, 08:02:51 AM
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
    
    int totalc = (Integer) sesion.getAttribute("totalc");
    int totalAp = (Integer) sesion.getAttribute("totalAp");
    int totaln = (Integer) sesion.getAttribute("totaln");
    String escuela = (String) sesion.getAttribute("escuela");
    
    validaciones.guardaHistorial guarda = new validaciones.guardaHistorial();
    
    if(guarda.guardar(xId, totalAp, totalc, totaln, escuela)){
        if(guarda.borraAptitudes(xId)){
            if(guarda.borraExamen(xId)){
                if(guarda.borraNecesidades(xId)){
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
                    response.sendRedirect("obtenerExamenes.jsp");
                }
            }
        }
    }
    else{
        
    }
    
%>
