<%-- 
    Document   : checaResultados
    Created on : 5/05/2017, 09:00:01 AM
    Author     : Caleb
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession sesion = request.getSession();
  if(sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null){
      response.sendRedirect("index.html");
  }
  String xNombre = (String)sesion.getAttribute("nombre");
  int xId = (Integer)session.getAttribute("id");
  String xCorreo = (String)sesion.getAttribute("correo");
  
  ArrayList <Integer> resultados = new ArrayList();
  ArrayList <Integer> aptitud = new ArrayList();
  ArrayList <Integer> necesidades = new ArrayList();
  
  validaciones.obtenerCalificaciones revisar = new validaciones.obtenerCalificaciones();
  
   if(revisar.calificaExamen(xId) && revisar.calificaAptitudes(xId) && revisar.calificaNecesidades(xId)){
       resultados = revisar.xCamposExamen();
       int c1 = resultados.get(0);
       int c2 = resultados.get(1);
       int c3 = resultados.get(2);
       int c4 = resultados.get(3);
       int c5 = resultados.get(4);
       int c6 = resultados.get(5);
       int c7 = resultados.get(6);
       int c8 = resultados.get(7);
       int c9 = resultados.get(8);
       int c10 = resultados.get(9);
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
       
       aptitud = revisar.xCamposAptitudes();
       int servicioSocial = aptitud.get(0); 
       int ejecutiva = aptitud.get(1);
       int verbal = aptitud.get(2);
       int artistico = aptitud.get(3);
       int musical = aptitud.get(4);
       int organizacion = aptitud.get(5);
       int cientifico = aptitud.get(6);
       int calculo = aptitud.get(7);
       int mecanica = aptitud.get(8);
       int aireLibre = aptitud.get(9);
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
       
       necesidades = revisar.xCamposNecesidades();
       int n1 = necesidades.get(0);
       int n2 = necesidades.get(1);
       int n3 = necesidades.get(2);
       int n4 = necesidades.get(3);
       int n5 = necesidades.get(4);
       int n6 = necesidades.get(5);
       int n7 = necesidades.get(6);
       int n8 = necesidades.get(7);
       session.setAttribute("n1", n1);
       session.setAttribute("n2", n2);
       session.setAttribute("n3", n3);
       session.setAttribute("n4", n4);
       session.setAttribute("n5", n5);
       session.setAttribute("n6", n6);
       session.setAttribute("n7", n7);
       session.setAttribute("n8", n8);
       
       response.sendRedirect("resultados.jsp");
   }
   else{
       String error = "La otra pagina xd";
       response.sendRedirect("hacerExamenes.jsp");
   }
%>
