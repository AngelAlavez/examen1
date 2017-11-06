<%--

    Document   : sumadora
    Created on : 6/11/2017, 08:36:04 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String num1 = request.getParameter("num1")==null?"":request.getParameter("num1");
    String num2 = request.getParameter("num2")==null?"":request.getParameter("num2");
    String[] numeros = {num1 + num2};
    int suma = 0;
    String resultado = ""; 
    for(int i = 0; i<numeros.length ; i++ ){
        try{
            suma = suma + Integer.parseInt(numeros[i]);
            resultado = "El resultado de la suma es: "+String.valueOf("suma");
        }
        catch(Exception ex){
            resultado = "Hubo un problema con los numeros ingresados";
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="POST">
            <label for="num1" >Usuario:</label><br/>
            <input type="text" id="num1" name="num1" required="" placeholder="Ingrese el primer numero" /><br/><br/>
            <label for="num2" >Contraseña: </label><br/>
            <input type="text" id="num2" name="num2" required="" placeholder="Ingrese el segundo numero" /><br/><br/>
            <input type="submit" name="btn" id="btn" value="Suma"/>
            <%=resultado%>
        </form>
    </body>
</html>
