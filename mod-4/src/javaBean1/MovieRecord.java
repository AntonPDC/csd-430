/**
 * Name: Anton DeCesare
 * Class: CSD 340 – Java Web Development
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

    // No-argument constructor (required for JavaBean compliance)
    public MovieRecord() {
        // Default constructor logic (can be left empty)
    }

    // Overloaded constructor to create a fully-initialized MovieRecord object
    public MovieRecord(String character, String actor, String roleType) {
        this.character = character;
        this.actor = actor;
        this.roleType = roleType;
    }

    // Setters – typically used for dynamic updates, even if not used in this case

    public void setCharacter(String character) {
        this.character = character;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public void setRoleType(String roleType) {
        this.roleType = roleType;
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
}
