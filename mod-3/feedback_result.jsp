<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!--
    Anton DeCesare - Mod 3 - CSD 430
    This JSP page receives user feedback and validates each input using try-catch blocks.
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Results</title>
    <style>
        body { font-family: Arial; margin: 30px; }
        table { border-collapse: collapse; width: 60%; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>

<h1>Your Feedback Summary</h1>

<%

// Initialize variables for the data we are going to retrieve

String name= "Invalid";
String email= "Invalid";
String meal= "Invalid";
int rating= -1; // Using -1 to indicate an invalid rating
String comments= "Invalid";

// Try-Catch blocks that throw a specific exception or gets caught as catch all error
// and outputs directional errors to guide user to fix their input.

try {
    name = request.getParameter("name");
    if (name == null || name.trim().isEmpty()) throw new Exception("Missing name");
} catch (Exception e) {
    name = "Name Not Provided";
}


try{
	email= request.getParameter("email");
	if(email == null || !email.contains("@")) throw new Exception ("Invalid Email");
} catch (Exception e){
	email = "Invalid Email";
}

try{
	meal= request.getParameter("meal");
	if(meal == null || meal.trim().isEmpty()) throw new Exception ("Please Pick a meal option.");
} catch (Exception e){
	meal = "Meal Not Selected";
}


try{
	String ratingInput = request.getParameter("rating");
	if(ratingInput == null || ratingInput.trim().isEmpty()) throw new Exception ("No rating selected.");
	rating = Integer.parseInt(ratingInput);
	if(rating < 1 || rating > 5) throw new Exception ("Scale of 1-5 please.");
} catch (Exception e){
	rating = -1;
}

try{
	comments = request.getParameter("comments");
	if(comments == null || comments.trim().isEmpty()) throw new Exception ("Comments empty");
} catch (Exception e){
	comments= "No comments submitted";
}

// Table to display data recieved from user
%>

<table>
    <tr><th>Field</th><th>User Input</th></tr>
    <tr><td>Name</td><td><%= name %></td></tr>
    <tr><td>Email</td><td><%= email %></td></tr>
    <tr><td>Meal Type</td><td><%= meal %></td></tr>
    <tr><td>Rating</td><td><%= rating %></td></tr>
    <tr><td>Comments</td><td><%= comments %></td></tr>
</table>

<p>Submitted on: <%= new Date() %></p>

</body>
</html>
