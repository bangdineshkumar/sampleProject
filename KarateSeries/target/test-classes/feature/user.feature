Feature: check return user by the API
	
	Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'c7b59796ad1ddc1cab315d10217112771d42b38a2c7c53ba0fc24c09d34654a6'
	
	Scenario: List all the user having name with john
		
		Given path '/public-api/users'
		And param first_name = 'john'
		When method get
		Then status 200 