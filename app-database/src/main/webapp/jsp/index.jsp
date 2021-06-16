<%-- 
    Document   : index
    Created on : 28/05/2021, 09:12:09 AM
    Author     : RICARDO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Primera Web Con base de Datos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link type="text/css" rel="stylesheet" href="../css/estlios.css">
    </head>
    <body>

        <div class="container">
        
        <div class="titulo">        
            <%
                String titulo;
                titulo = " FORMULARIO PARA CAPTURAR INFORMACIÓN WEB";
            %>
        </div>


        <div>
            <h1><%=titulo%></h1>
        </div>




        <form action="VerDatos.jsp"  method="POST">
            <div class="row mb-3">
                <div class="col-6">
                  <input name="nombre"  type="text" class="form-control" placeholder="Nombre de Producto" aria-label="Nombre de Producto">
                </div>
                   
            </div>
            
            <div class="row mb-3">
                <div class="col-2">
                  <input name="cantidad"  type="text" class="form-control" placeholder="Cantidad" aria-label="Cantidad">
                </div>
                <div class="col-2 mb-3">
                  <input name="valor"  type="text" class="form-control" placeholder="Valor" aria-label="Valor">
                </div>
                <div class="col-2 mb-3">
                    <input name="fecha"  type="date" class="form-control" placeholder="fecha" aria-label="fecha">
                </div>
                   
            </div>
            
            <div class="row mb-3">
                <div class="col-2">
                  <input name="proveedor"  type="text" class="form-control" placeholder="proveedor" aria-label="proveedor">
                </div>
                <div class="col-2 mb-3">
                  <input name="descripcion"  type="text" class="form-control" placeholder="descripcion" aria-label="descripcion">
                </div>
                
                
                
            </div>    

            

            


            
            <button type="submit" class="btn btn-primary">Registrar Productos</button>
        </form>

        
        </div>  
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

    </body>
</html>
