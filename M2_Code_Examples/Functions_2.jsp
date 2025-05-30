<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<!-- Allows more than one declaration in the declaration tag // -->
<!-- Methods that print must catch or declare the java.io.Exception // -->
<%!
  // Here we must pass JWriter object,
  //  object declared inside method _jspService
  //  and this method have class scope
  void function_1(JspWriter out) throws java.io.IOException{

    out.println("Function 1 <br />");
  }

  void function_2(JspWriter out) throws java.io.IOException{

    out.println("Function 2 <br />");
  }
%>

<%!
  void function_3(JspWriter out) throws java.io.IOException{

    out.println("Function 3 <br />");
  }
%>

<%!
  void function_4(JspWriter out) throws java.io.IOException{

    out.println("Function 4 <br />");
  }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Functions 2</title>
    </head>
    <body>
        <h1>Functions 2</h1>
        
        <%
            function_1(out);
            function_2(out);
            function_3(out);
            function_4(out);
        %>

    </body>
</html>
