// Anton DeCesare
// CSD 430 Assignment 5 & 6.2
// StateBean class - A JavaBean to represent and store U.S. state information

package java1;

// This class is serializable so it can be safely passed between JSPs and servlets
public class StateBean implements java.io.Serializable {

    // Recommended for Serializable classes to ensure compatibility across versions
    private static final long serialVersionUID = -5692434515347285933L;

    // Private instance variables representing state attributes
    private String stateName;       // Name of the state (Primary Key)
    private String capital;         
    private double population;      // Displayed in Millions
    private String region;          
    private String abbreviation;    // Two-letter postal abbreviation

    // Default constructor (required for JavaBeans)
    public StateBean() {
        // No initialization here;
    }

    // Parameterized constructor 
    public StateBean(String stateName, String capital, double population, String region, String abbreviation) {
        this.stateName = stateName;
        this.capital = capital;
        this.population = population;
        this.region = region;
        this.abbreviation = abbreviation;
    }

    // Getter for state name
    public String getStateName() {
        return stateName;
    }

    // Getter for capital city
    public String getCapital() {
        return capital;
    }

    // Getter for population in millions
    public double getPopulation() {
        return population;
    }

    // Getter for geographic region
    public String getRegion() {
        return region;
    }

    // Getter for state abbreviation
    public String getAbbreviation() {
        return abbreviation;
    }

    // Setter for state name
    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    // Setter for capital city
    public void setCapital(String capital) {
        this.capital = capital;
    }

    // Setter for population
    public void setPopulation(double population) {
        this.population = population;
    }

    // Setter for region
    public void setRegion(String region) {
        this.region = region;
    }

    // Setter for abbreviation
    public void setAbbreviation(String abbreviation) {
        this.abbreviation = abbreviation;
    }
}
