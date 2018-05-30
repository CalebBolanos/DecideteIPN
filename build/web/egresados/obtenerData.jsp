<%-- 
    Document   : obtenerData
    Created on : 16/05/2017, 03:47:49 PM
    Author     : Caleb
--%>
<%
  HttpSession egresado = request.getSession();
  if(egresado.getAttribute("correo") == null && egresado.getAttribute("id") == null){
      response.sendRedirect("../.");
  }
  String xNombre = (String)egresado.getAttribute("nombre");
  int xId = (Integer)egresado.getAttribute("id");
  
  validaciones.verDatos obtener = new validaciones.verDatos();
  
  if(obtener.conseguirDatos(xId, xNombre)){
      String genero = obtener.genero();
      int edad = obtener.edad();
      String contrasena = obtener.contrasena();
      egresado.setAttribute("genero", genero);
      egresado.setAttribute("edad", edad);
      egresado.setAttribute("contrasena", contrasena);
      
      response.sendRedirect("usuario.jsp");
  }
  else{
      String error = "no deberia de llegar aqui";
  }
  
%>
