<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World JSP</title>
    </head>
    <body>
        <h1>
            <%
                out.println("Hello World JSP!");
            %>
        </h1>

        <a href="HelloWorld.html">Hello World HTML</a>
    </body>
</html>
