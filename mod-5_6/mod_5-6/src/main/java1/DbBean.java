// Anton DeCesare
// CSD 430 Assignment 5 & 6.2
// DbBean class for database access using JDBC to retrieve and manage U.S. state records

package java1;

import java.sql.*;                     
import java.util.*;                    
import java1.StateBean;               

public class DbBean {

    // Instance variables for DB connection and query execution
    private Connection conn;           // Manages the connection to the database
    private Statement stmt;           // Used to execute general SQL statements
    private ResultSet rs;             // Holds the result set returned by SQL queries

    // Constructor: Initializes the database connection
    public DbBean() {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Set up the database connection parameters
            String dbURL = "jdbc:mysql://localhost:3306/CSD430";
            String username = "student1";
            String password = "pass";

            // Establish the connection and create a statement object
            conn = DriverManager.getConnection(dbURL, username, password);
            stmt = conn.createStatement();

            // Confirmation for successful connection (for debugging, now commented out)
            //System.out.println("Connected");
        } catch (SQLException | ClassNotFoundException ex) {
            // Handle both driver loading and DB connection errors
            System.err.println("Database connection failed: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    // Retrieves a list of all state names from the database (used for dropdown menus)
    public List<String> getStateName() {
        List<String> states = new ArrayList<>();
        try {
            // Execute SQL query to get all state names ordered alphabetically
            rs = stmt.executeQuery("SELECT state_name FROM anton_states_data ORDER BY state_name");

            // Loop through each result row and add the state name to the list
            while (rs.next()) {
                String state = rs.getString("state_name");
                states.add(state);
               // System.out.println("Fetched state: " + state);  // Debugging output
            }
        } catch (Exception e) {
            // Print error stack trace if something goes wrong
            e.printStackTrace();
        }
        return states;
    }

    // Retrieves a full record for a given state name
    public StateBean getStateRecord(String stateName) {
        StateBean info = null;
        try {
            // Prepare SQL query using a parameterized statement to avoid SQL injection
            String sql = "SELECT * FROM anton_states_data WHERE state_name = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, stateName); // Set the state name in the query

            rs = ps.executeQuery(); // Execute the query

            // If a record is found, create a StateBean object from the result
            if (rs.next()) {
                info = new StateBean(
                    rs.getString("state_name"),
                    rs.getString("capital"),
                    rs.getDouble("population_millions"),
                    rs.getString("region"),
                    rs.getString("abbreviation")
                );
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        return info; // Return the bean (or null if not found)
    }

    // Closes all open JDBC resources to prevent memory leaks
    public void close() {
        try {
            if (rs != null) rs.close();       // Close result set
            if (stmt != null) stmt.close();   // Close statement
            if (conn != null) conn.close();   // Close connection
        } catch (Exception e) {
            e.printStackTrace();              // Print error if close fails
        }
    }
}


//  Forgot scope of this week's assignment, but I am sure I will need it eventually
//	
//	public boolean insertState(StateBean state){
//		try {
//			String sql = "INSERT INTO anton_states_data VALUES (?, ?, ?, ?, ?)";
//			PreparedStatement ps = conn.prepareStatement(sql);
//			ps.setString(1, state.getStateName());
//			ps.setString(2, state.getCapital());
//			ps.setDouble(3, state.getPopulation());
//			ps.setString(4, state.getRegion());
//			ps.setString(5, state.getAbbreviation());
//			return ps.executeUpdate() > 0;
//		} catch (Exception e) {
//	        e.printStackTrace();
//	        return false;
//	    }
//	}
//	
//	









