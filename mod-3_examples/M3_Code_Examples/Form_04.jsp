<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form 4</title>
    </head>
    <body>
        <h1>Form Get & Post</h1>
        
        <%
            if(request.getMethod().equals("POST")){
                
                out.println("hiddenInput");
                out.println(request.getParameter("hiddenInput"));
                out.println("<br />");
                
                out.println("select");
                out.println(request.getParameter("select"));
                out.println("<br />");
                
                out.println("textarea");
                out.println(request.getParameter("textarea"));
                out.println("<br />");
                
                out.println("radioButton");
                out.println(request.getParameter("radioButton"));
                out.println("<br />");

                // Checkbox
                if(request.getParameter("checkBox_1") == null){
                    
                    out.println("No checkboxes were selected.");
                }
                else{
                    
                    String[] checkBoxSelected = request.getParameterValues("checkBox_1");
                    
                    out.println("<ul>");
                    
                    for(String value : checkBoxSelected){
                        
                        out.println("<li>" + value + "</li>");
                    }
                    
                    out.println("</ul>");
                }
                
                out.println("<br />");
                
                out.println("password_1");
                out.println(request.getParameter("password_1"));
                out.println("<br />");
            }
        %>
        
        <%
            if(request.getMethod().equals("GET")){
        %>
        
        <form action='Form_04.jsp' method='post'>
            <p>
                <input type='hidden' name='hiddenInput' value='hiddenValue' />
            </p>
            <p>
                <label>
                    Option Selection
                    <br />
                </label>
                
                <select name='select'>
                    <option selected='selected' value='1'>Selection One</option>
                    <option value='2'>Selection Tow</option>
                    <option value='3'>Selection Three</option>
                    <option value='4'>Selection Four</option>
                    <option value='5'>Selection Five</option>
                    <option value='6'>Selection Six</option>
                    <option value='7'>Selection Seven</option>
                </select>
            </p>
            <p>
                <label>
                    Text Area
                    <br />
                </label>
                <textarea name='textarea' rows='6' cols='20'></textarea>
            </p>
            <p>
                <label>
                    Radio Button 1
                    <input name='radioButton' type='radio' value='Radio_1' checked='checked' />
                </label>
                <br />
                <label>
                    Radio Button 2
                    <input name='radioButton' type='radio' value='Radio_2' />
                </label>
                <br />
                <label>
                    Radio Button 3
                    <input name='radioButton' type='radio' value='Radio_3' />
                </label>
                <br />
                <label>
                    Radio Button 4
                    <input name='radioButton' type='radio' value='Radio_4' />
                </label>
            </p>
            <p>
                <label>
                    Check Box 1
                    <input name='checkBox_1' type='checkbox' value='CheckBox_1' />
                    <br />
                </label>
                <label>
                    Check Box 2
                    <input name='checkBox_1' type='checkbox' value='CheckBox_2' />
                    <br />
                </label>
                <label>
                    Check Box 3
                    <input name='checkBox_1' type='checkbox' value='CheckBox_3' />
                    <br />
                </label>
                <label>
                    Check Box 4
                    <input name='checkBox_1' type='checkbox' value='CheckBox_4' />
                    <br />
                </label>
            </p>
            <p>
                <label>
                    Password:
                    <input name='password_1' type='password' size='15' />
                </label>
            </p>
            <p>
                <input type='submit' value='Submit' />
            </p>
            <p>
                <input type='reset' value='Clear Entries' />
            </p>
        </form>
        <%
            }
        %>
        
    </body>
</html>
