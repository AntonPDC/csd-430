<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University

 JSP global variable
-->
<!DOCTYPE html>
<%! int var1; %>
<%! int var2; %>
<!-- Member variables they are automatically initialize //-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables 4</title>
    </head>
    <body>
        
        <h1>
            
            var1 = <%= var1 %>
            <br />
            var2 = <%= var2 %>
        
        </h1>
    </body>
</html>
