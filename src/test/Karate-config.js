<<<<<<< HEAD:Karate-config.js
function fn() { 
  
  var config = {
  JSONPLACEHOLDER : 'https://jsonplaceholder.typicode.com/',
  FAKERESTAPI : 'https://fakerestapi.azurewebsites.net/',
  Author : 'QA Manish Khadka'
	   
  } 



  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);

  return config;
 }
=======
function fn() { 
  
  var config = {
   JSONPLACEHOLDER : 'https://jsonplaceholder.typicode.com/',
  FAKERESTAPI : 'https://fakerestapi.azurewebsites.net/',
   Author : 'QA Manish Khadka'
	   
  } 

  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);
  return config;
 }
>>>>>>> 1180d718b7a691593e46a7f0b336d984eca692ae:src/test/Karate-config.js
