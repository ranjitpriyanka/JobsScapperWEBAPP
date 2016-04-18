<%-- 
    Document   : jobsnepal.jsp
    Created on : Apr 18, 2016, 1:34:52 PM
    Author     : priyankar
--%>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <body>
        <h1>JobsNepal</h1>
         <%
           String thisLine = null;
            try {
                // open input stream test.txt for reading purpose.
                FileReader fr = new FileReader("D:/Leapfrog Academy/WEB APPLICATION/WebApplication1/jobsnepal.txt");
                BufferedReader br = new BufferedReader(fr);
                while ((thisLine = br.readLine()) != null) {
                   %>
        <br><% out.println(thisLine);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
    </body>
</html>
