<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables 1</title>
    </head>
    <body>
        <h1>Variables 1</h1>
        
        <h1>
            <%
                int var_01 = 7;
                int var_02 = 9;
                
                out.println("var_01 + var_02 = " + (var_01 + var_02));
            %>
        </h1>

        <h1>
            <%
                double dblVar_01 = 3.47;
                double dblVar_02 = 24.3;
                
                out.println("dblVar_01 + dblVar_02 = " + (dblVar_01 + dblVar_02));
            %>
        </h1>

    </body>
</html>
