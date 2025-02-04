Feature: Update User

  Background: 
    * url FAKERESTAPI

  Scenario: Update the User
    Given path 'api/v1/Users/2'
    Then print 'The Author of this Script is: ' +Author
    Given request {"id": 2, "userName": "QA Manish", "password": "Manish1"}
    When method PUT
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