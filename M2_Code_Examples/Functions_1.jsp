<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<%!
  String getHelloWorld(){

    return "Hello World!";
  }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Functions 1</title>
    </head>
    <body>
        <h1>Functions 1</h1>
        
        <h1>
            
            <!-- No ; here //-->
            <%= getHelloWorld() %>
        
        </h1>

    </body>
</html>
