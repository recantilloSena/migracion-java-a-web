<%-- 
    Document   : VerDatos
    Created on : 11/06/2021, 08:32:26 AM
    Author     : RICARDO
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="com.adsi.app.modelo.Producto"%>
<%@page import="com.adsi.app.controlador.Controlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Productos</h1>
        
        
        
        <% 
               String nombre;
               String cantidad ;
               String valor ;
               String proveedor ;
               String descripcion;
              
               
                nombre = request.getParameter("nombre");
                cantidad = request.getParameter("cantidad") ;
                valor = request.getParameter("valor") ;
                proveedor  = request.getParameter("proveedor");
                descripcion = request.getParameter("descripcion");
               
                
               
            
            
           Controlador controlador = new Controlador();
           
           controlador.conectar();
           
           if (controlador.hayConexion()) {
               
               //Agregar un producto de pruebas
               Producto producto = new Producto();
               
               
               
               producto.setNombre(nombre);
               producto.setCantidad(cantidad);
               producto.setValor(valor);
               producto.setProveedor(proveedor);
               producto.setDescripcion(descripcion);
               
               controlador.addProductos(producto);
               
               
               
               List<Producto> lista = controlador.findAllProductos();
               
               Long totalProductos = controlador.totalProductos();
               

               

   
                  
        %>
        
        
        <div class="azul" >Total Productos Método : <%=totalProductos %></div>        
        
        
        <div>
        <select  class="rojo" name="productos" id="productos">
            
            <%
              for (Producto item:lista)
              {
            %>
            <option value="<%=item.getId() %>"><%=item.getNombre() + " -  "+ item.getProveedor() %></option>
            <% }%>
       </select>
       </div> 
       
       
       
                
        
        <%
          List<Producto> listaEscasos = controlador.listarProductosEscasos(5);
        %>
        <div class="azul" >Total Productos Escasos : <%=listaEscasos.stream().count() %></div>
        
        <div>
        <select  class="rojo" name="productos" id="productos">
            
            <%
              for (Producto item:listaEscasos)
              {
            %>
            <option value="<%=item.getId() %>"><%=item.getNombre() + " -  "+ item.getProveedor() %></option>
            <% }%>
       </select>
       </div> 
       
       
       
       
        <%}else { %>
        
           <h1> NO ME PUDE CONECTAR</h1>
        
        
        <%}%>
        
        
        <div id="resumen" class="rojo">  Resumen  Productos </div
        
        
        
        
    </body>
</html>
