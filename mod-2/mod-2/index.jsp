<%-- 
    Anton DeCesare
    Module 2 - CSD 430

    This JSP file dynamically displays data about the movie "Frozen", currently on repeat at my house, using Java scriptlets.
    It defines a simple MovieRecord class to store character, actor, and role type information.
    A list of these records is created and populated within the scriptlet.
    The HTML table below then uses another scriptlet to loop through the data and display
    the records dynamically in table rows.
    External CSS styling can be applied for better visual formatting.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Movie: Frozen</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<%
    // Scriptlet section: Java code to prepare the movie data
    // Movie Record class
    class MovieRecord {
        String character;
        String actor;
        String roleType;
	//Movie record constructor
        MovieRecord(String character, String actor, String roleType) {
            this.character = character;
            this.actor = actor;
            this.roleType = roleType;
        }
    }

    // Create a list of MovieRecord objects
    List<MovieRecord> records = new ArrayList<>();
    records.add(new MovieRecord("Elsa", "Idina Menzel", "Main Protagonist"));
    records.add(new MovieRecord("Anna", "Kristen Bell", "Supporting Protagonist"));
    records.add(new MovieRecord("Olaf", "Josh Gad", "Comic Relief"));
    records.add(new MovieRecord("Kristoff", "Jonathan Groff", "Supporting Role"));
    records.add(new MovieRecord("Hans", "Santino Fontana", "Antagonist"));
%>

<h1>Dynamic JSP Table for the Movie: Frozen</h1>
<p>This page displays a record of characters, actors, and their role types in Frozen.</p>

<table>
    <tr>
        <th>Character</th>
        <th>Actor</th>
        <th>Role Type</th>
    </tr>
    <%
        // Use a scriptlet to loop through the records and display them in table rows
        for (MovieRecord record : records) {
    %>
    
    <tr>
        <td><%= record.character %></td>
        <td><%= record.actor %></td>
        <td><%= record.roleType %></td>
    </tr>
    <%
        }
    %>
</table>

<p>Date of Generation: <%= new java.util.Date() %></p>

</body>
</html>
