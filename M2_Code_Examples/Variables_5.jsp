<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<%! int var1 = 88; %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables 5</title>
    </head>
    <body>
      <h1>
          <% int var2 = 77; %>
          var1 = <%= ++var1 %>
          <br />
          var2 = <%= ++var2 %>
      </h1>
    </body>
</html>
