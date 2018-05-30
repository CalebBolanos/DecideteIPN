<%-- 
    Document   : borraUsr
    Created on : 17/05/2017, 11:37:12 AM
    Author     : Caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String error = "";
  try{
      int idUsr = Integer.parseInt(request.getParameter("numero"));
      validacionesAdmin.borrarUsr borrar = new validacionesAdmin.borrarUsr(idUsr);
      if(borrar.validar()){
          if(borrar.borrar()){
              error = borrar.Err();
              response.sendRedirect("usuarios.jsp?e="+error);
          }
          else{
              error = borrar.Err();
              response.sendRedirect("usuarios.jsp?e="+error);
          }
      }
      else{
          error = borrar.Err();
          response.sendRedirect("usuarios.jsp?e="+error);
      }
          
  }
  catch(Exception xd){
      error = "Escribe un id valido";
      response.sendRedirect("usuarios.jsp?e="+error);
  }
   
  
  
%>
