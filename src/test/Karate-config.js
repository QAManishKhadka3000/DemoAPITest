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
