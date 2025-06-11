<%-- 
    Name: Anton DeCesare
    Class: CSD 340 – Java Web Development
    Module: 4

    This JSP file uses a JavaBean (MovieRecord) to create and display 
    a list of movie characters in styled HTML card format.
--%>

<%@ page import="javaBean1.MovieRecord, java.util.*" %> 
<jsp:useBean id="movieResults" class="javaBean1.MovieRecord" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Movie Record Results</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
    <h1>JavaBean: "MovieRecord"</h1> 
    <h2>Movie Characters</h2>

<%
    // Create a list of MovieRecord objects with hardcoded movie character data
    List<MovieRecord> records = new ArrayList<>();
    records.add(new MovieRecord("Elsa", "Idina Menzel", "Main Protagonist"));
    records.add(new MovieRecord("Anna", "Kristen Bell", "Supporting Protagonist"));
    records.add(new MovieRecord("Olaf", "Josh Gad", "Comic Relief"));
    records.add(new MovieRecord("Kristoff", "Jonathan Groff", "Supporting Role"));
    records.add(new MovieRecord("Hans", "Santino Fontana", "Antagonist"));

    // Loop through the list and output each record inside a styled HTML div
    for (MovieRecord m : records) {
%>
    <%--Here is where we use our getters to display the data --%>
    <div class="card">
        <h3><%= m.getCharacter() %></h3>
        <p><strong>Actor:</strong> <%= m.getActor() %></p>
        <p><strong>Role Type:</strong> <%= m.getRoleType() %></p>
    </div>
<%
    } // End of for-loop
%>

</body>
</html>
