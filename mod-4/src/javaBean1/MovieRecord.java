/**
 * Name: Anton DeCesare
 * Class: CSD 430 – Java Web Development
 * Module: 4
 *
 * This JavaBean class represents a movie character record.
 * It stores the character's name, the actor's name, and the character's role type.
 */

package javaBean1;

public class MovieRecord implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    // Private instance variables to store character data
    private String character;
    private String actor;
    private String roleType;
    private double sceneCount;
    private float screenTime;

    // No-argument constructor (required for JavaBean compliance)
    public MovieRecord() {
        // Default constructor logic (can be left empty)
    }

    // Overloaded constructor to create a fully-initialized MovieRecord object
    public MovieRecord(String character, String actor, String roleType, double sceneCount, float screenTime) {
        this.character = character;
        this.actor = actor;
        this.roleType = roleType;
        this.sceneCount = sceneCount;
        this.screenTime = screenTime;
    }

    // Setters – typically used for dynamic updates

    public void setCharacter(String character) {
        this.character = character;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public void setRoleType(String roleType) {
        this.roleType = roleType;
    }
    
    public void setSceneCount(double sceneCount) {
    	this.sceneCount = sceneCount;
    }
    
    public void setScreenTime(float screenTime) {
    	this.screenTime = screenTime;
    }

    // Getters – used in JSP to access property values

    public String getCharacter() {
        return character;
    }

    public String getActor() {
        return actor;
    }

    public String getRoleType() {
        return roleType;
    }
    
    public double getSceneCount() {
    	return sceneCount;
    }
    
    public float getScreenTime() {
    	return screenTime;
    }
   
}
