Feature: Create User

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Create User
    Given path 'api/v1/Users'
    Then print 'The Author of this Script is: ' +karate.get('Author')
    Given request {"id": 0, "userName": "QA Manish", "password": "Manish1"}
    When method POST
    Then print response
    Then print responseBytes
    Then print responseStatus
    Then print responseHeaders
    Then print responseCookies
    Then print responseTime
    Then print responseType
    Then print requestTimeStamp
    Then status 200
    Then match header Content-Type contains 'application/json'
    * def User = response
    Then print 'The user list are:\n' ,User
    * def id = response.id
    * def name = response.userName
    * def pwd = response.password
    Then print 'The given ID is:\n' ,id
    Then print 'The given User Name is:\n' ,name
    Then print 'The given PassWord is:\n' ,pwd
