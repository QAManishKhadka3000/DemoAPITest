function fn() { 
  var config = {}; 

  // Read from system properties or environment variables
  config.FAKERESTAPI = 'https://fakerestapi.azurewebsites.net/';
  config.Author = 'QA Manish Khadka';

  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);

  return config;
}
