function fn() {
	var config = {};

	// Accessing environment variable properly using karate.properties
	config.FAKERESTAPI = karate.properties['FAKERESTAPI'] || 'https://fakerestapi.azurewebsites.net/';
	config.Author = 'QA Manish Khadka';

	karate.configure('connectTimeout', 50000);
	karate.configure('readTimeout', 50000);

	return config;
}
