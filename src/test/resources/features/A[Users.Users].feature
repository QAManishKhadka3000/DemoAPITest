Feature: List Users

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: GET the List of Users
    Given path 'api/v1/Users'
    Then print 'The Author of this Script is: ' +Author
    When method GET
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
    * def id = response[0].id
    * def name = response[0].userName
    * def pwd = response[0].password
    Then print 'The given ID is:\n' ,id
    Then print 'The given User Name is:\n' ,name
    Then print 'The given PassWord is:\n' ,pwd
