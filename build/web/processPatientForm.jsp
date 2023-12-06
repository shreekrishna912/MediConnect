<%-- 
    Document   : processPatientForm
    Created on : Dec 5, 2023, 2:13:09 PM
    Author     : Hp
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Processing Patient Information</title>
</head>
<body>
    <h1>Processing Patient Information</h1>
    <%-- Retrieve form data --%>
    <% String firstName = request.getParameter("firstName");
       String lastName = request.getParameter("lastName");
       int age = Integer.parseInt(request.getParameter("age"));
       String gender = request.getParameter("gender");
       String address = request.getParameter("address");
       String symptoms = request.getParameter("symptoms");
    %>

    <%-- Perform processing or database operations with retrieved data --%>
    <%-- This is a placeholder for the actual logic --%>
    <p>Patient Information:</p>
    <p>First Name: <%= firstName %></p>
    <p>Last Name: <%= lastName %></p>
    <p>Age: <%= age %></p>
    <p>Gender: <%= gender %></p>
    <p>Address: <%= address %></p>
    <p>Symptoms: <%= symptoms %></p>
</body>
</html>
