<%-- 
    Anton DeCesare
    CSD 430 Assignment 5 & 6.2
    JSP file to display a list of U.S. states from a MySQL database.
    Allows the user to select a state from a dropdown and view its details.
--%>

<%@ page import="java1.DbBean, java1.StateBean, java.util.*" %>

<%-- Instantiate the database access bean (DbBean) --%>
<jsp:useBean id="myDB" class="java1.DbBean" />

<!DOCTYPE html>
<html>
<head>
    <title>State Lookup</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>US State Info Portal</h1>
    <p>Select a U.S. state from the dropdown to view its details.</p>

    <%-- Form to select a state and submit via GET method --%>
    <form method="GET">
        <label for="stateName">Choose a State:</label>
        <select name="stateName" id="stateName" required>
            <%
                // Fetch state names from the database
                List<String> stateNames = myDB.getStateName();
                // Get the selected state from request parameter (if any)
                String selected = request.getParameter("stateName");

                // If no states are available, show disabled option
                if (stateNames == null || stateNames.isEmpty()) {
            %>
                <option disabled selected>No states found</option>
            <%
                } else {
            %>
                <%-- Default prompt option, shown only when nothing is selected --%>
                <option value="" disabled <%= (selected == null || selected.isEmpty()) ? "selected" : "" %>>Select a state</option>
                <%
                    // Loop through the state list and populate each option
                    for (String name : stateNames) {
                %>
                    <option value="<%= name %>" <%= name.equals(selected) ? "selected" : "" %>><%= name %></option>
                <%
                    }
                }
            %>
        </select>
        <input type="submit" value="Show Details" />
    </form>

    <%
        // If a state has been selected, fetch and display its details
        if (selected != null && !selected.trim().isEmpty()) {
            try {
                // Retrieve state details using the selected name
                StateBean record = myDB.getStateRecord(selected);
                if (record != null) {
    %>
        <h2>State Info</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>State Name</th>
                    <th>Capital</th>
                    <th>Population (millions)</th>
                    <th>Region</th>
                    <th>Abbreviation</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= record.getStateName() %></td>
                    <td><%= record.getCapital() %></td>
                    <td><%= record.getPopulation() %></td>
                    <td><%= record.getRegion() %></td>
                    <td><%= record.getAbbreviation() %></td>
                </tr>
            </tbody>
        </table>
    <%
                } else {
                    // State was selected but no matching record found
                    out.println("<p><b>No info found for:</b> " + selected + "</p>");
                }
            } catch (Exception e) {
                // Catch and display any errors during data retrieval
                out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            }
        }
    %>    
</body>
</html>

