<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables 3</title>
    </head>
    <body>
        <h1>
            <%
                int var_1 = 34;
                int var_2 = 21;
                
                double dblVar1 = 7.41;
                double dblVar2 = 72.2;
                
                int intTotal = var_1 + var_2;
                double dblTotal = dblVar1 + dblVar2;
            %>
            
            intTotal = <%= intTotal %>
            <br />
            dblTotal = <%= dblTotal %>
        
        </h1>
    </body>
</html>
