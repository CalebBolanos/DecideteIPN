<%-- 
    Document   : verificaActualizacion
    Created on : 5/05/2017, 06:29:48 PM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession sesion = request.getSession();
  if(sesion.getAttribute("correo") == null && sesion.getAttribute("id") == null){
      response.sendRedirect("index.html");
  }
  String xNombre = (String)sesion.getAttribute("nombre");
  int xId = (Integer)session.getAttribute("id");
  String xCorreo = (String)sesion.getAttribute("correo");
  
  
  validaciones.verDatos obtener = new validaciones.verDatos();
  
   if(obtener.conseguirDatos(xId, xNombre)){
       String contrasena = obtener.contrasena();
       String genero = obtener.genero();
       int edad = obtener.edad();
       sesion.setAttribute("contrasena", contrasena);
       sesion.setAttribute("genero", genero);
       sesion.setAttribute("edad", edad);
       response.sendRedirect("usuario.jsp");
   }
   else{
       String error = "khe verga";
   }
%>
