function fn() { 
  var config = {};

  // Read from system properties or environment variables
  config.FAKERESTAPI = karate.properties['FAKERESTAPI'] || java.lang.System.getenv('FAKERESTAPI') || 'https://fakerestapi.azurewebsites.net/';

  if (!config.FAKERESTAPI) {
    throw new Error("FAKERESTAPI is not set. Check environment variables or system properties.");
  }

  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);

  return config;
}
