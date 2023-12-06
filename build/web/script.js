/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

document.getElementById('signInForm').addEventListener('submit', function(event) {
  event.preventDefault();

  const username = document.getElementById('username').value;
  const password = document.getElementById('password').value;

  // Send the credentials to the backend (Java) for authentication
  fetch('/signin', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ username, password })
  })
  .then(response => {
    if(response.ok) {
      alert('Successfully signed in!');
      // Handle success, like redirecting to a new page
      // window.location.href = '/dashboard';
    } else {
      alert('Sign in failed. Please check your credentials.');
    }
  })
  .catch(error => {
    console.error('Error:', error);
  });
});
