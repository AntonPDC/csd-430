<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables 2</title>
    </head>
    <body>

        <h1>
            <%
                int var_01 = 11;
                int var_02 = 14;

                double dblVar_01 = 7.92;
                double dblVar_02 = 65.1;
                
            %>
        </h1>
        
        <br />
            Some HTML code here
        <br />

        <h1>
            <%
                out.println("var_01 + var_02 = " + (var_01 + var_02));
            %>
            <br /><br />
            <%
                out.println("dblVar_01 + dblVar_02 = " + (dblVar_01 + dblVar_02));
            %>
        </h1>

    </body>
</html>
