<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
    Anton DeCesare - Mod 3 - CSD 430
    This JSP page gathers user feedback from a restaurant experience.
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Feedback Form</title>
    <style>
        body { font-family: Arial; margin: 30px; }
        label { display: block; margin-top: 10px; }
        input, textarea, select { width: 100%; padding: 8px; }
        input[type=submit] { width: auto; margin-top: 20px; }
    </style>
</head>
<body>
	<h1> Restaurant Feedback Form</h1>
	<form method = "post" action = "feedback_result.jsp">
		<label for= "name"> Full Name:</label>
		<input type= "text" id= "name" name= name required>
		
		<label for= "email">Enter your email:</label>
		<input type= "email" id= "email" name= "email" required>
		
		<label for= "meal">Meal Type:</label>
		<select id= "meal" name= "meal" required>
			<option value= "Breakfast">Breakfast</option>
			<option value= "Lunch">Lunch</option>
			<option value= "Dinner">Dinner</option> 
		</select> 
		
		<label for= "rating">Rate on scale of 1 (worst) to 5 (best)</label>
		<input type= "number" id= "rating" name= "rating" min= "1" max= "5" required> 
	
		<label for= "comments">Comments:</label>
		<textarea id="comments" name= "comments" rows= "4"></textarea>

		<input type="submit" value="Submit Feedback">
	</form>

</body>
</html>
	