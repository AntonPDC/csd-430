<%-- 
    Name: Anton DeCesare
    Class: CSD 430 – Java Web Development
    Module: 4

    This JSP file uses a JavaBean (MovieRecord) to create and display 
    a list of movie characters in styled HTML card format.
--%>

<%@ page import="javaBean1.MovieRecord, java.util.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Movie Record Results</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
    <h1>NEW JavaBean: "MovieRecord"!</h1> 
    <h2>Frozen's Movie Characters</h2>
<!-- Declare the shared bean -->
<jsp:useBean id="movieResults" class="javaBean1.MovieRecord" />

<%
    List<MovieRecord> records = new ArrayList<>();
    records.add(new MovieRecord("Elsa", "Idina Menzel", "Main Protagonist", 14, 23.22f));
    records.add(new MovieRecord("Anna", "Kristen Bell", "Supporting Protagonist", 18, 52.80f));
    records.add(new MovieRecord("Olaf", "Josh Gad", "Comic Relief", 8, 13.93f));
    records.add(new MovieRecord("Kristoff", "Jonathan Groff", "Supporting Role", 10, 25.77f));
    records.add(new MovieRecord("Hans", "Santino Fontana", "Antagonist", 6, 13.15f));

    for (MovieRecord m : records) {
        movieResults.setCharacter(m.getCharacter());
        movieResults.setActor(m.getActor());
        movieResults.setRoleType(m.getRoleType());
        movieResults.setSceneCount(m.getSceneCount());
        movieResults.setScreenTime(m.getScreenTime());
%>
    <div class="card">
        <h3> <jsp:getProperty name="movieResults" property="character"/> </h3>
        <p><strong>Actor: </strong><jsp:getProperty name="movieResults" property="actor"/> </p>
        <p><strong>Role Type: </strong><jsp:getProperty name="movieResults" property="roleType"/></p>
        <p><strong>Scene Count: </strong><jsp:getProperty name="movieResults" property="sceneCount"/></p>
        <p><strong>Screen Time: </strong><jsp:getProperty name="movieResults" property="screenTime"/></p>
    </div>

<%--
	**This also works (inside the loop) but I wanted to make sure I used your format
	 for full credit. Lines 39-55 are not needed for the below code to display**

    <div class="card">
        <h3><%= m.getCharacter() %></h3>
        <p><strong>Actor: </strong> <%= m.getActor() %></p>
        <p><strong>Role Type: </strong> <%= m.getRoleType() %></p>
        <p><strong>Scene Count: </strong> <%= m.getSceneCount %></p>
        <p><strong>Screen Time: </strong> <%= m.getScreenTime %></p>
    </div>
 --%>

<%
    } // End of for-loop
%>

</body>
</html>
