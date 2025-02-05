Feature: Authors

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: List Authors   
    Given path 'api/v1/Authors'
    Then print 'The Author of this Script is: ' +karate.get('Author')
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
    * def Authors = response
    Then print 'The Authors are:\n' ,Authors
    * def id = Authors[0].id
    * def Book = Authors[0].idBook
    * def FirstName = Authors[0].firstName
    * def LastName = Authors[0].lastName
    Then print 'The given ID is:\n' ,id
    Then print 'The given Book is:\n' ,Book
    Then print 'The given First Name is:\n' ,FirstName
    Then print 'The given Last Name is:\n' ,LastName
    