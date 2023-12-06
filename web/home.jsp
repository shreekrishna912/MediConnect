<%-- 
    Document   : home
    Created on : Dec 4, 2023, 10:50:08 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Sign In</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <form id="signInForm">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    
    <input type="submit" value="Sign In">
  </form>

  <script src="script.js"></script>
</body>
</html>

