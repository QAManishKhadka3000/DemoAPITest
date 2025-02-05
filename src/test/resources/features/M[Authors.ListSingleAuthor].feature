Feature: List Single Authors

  Background: 
   * url karate.get('FAKERESTAPI')

  Scenario: List Single Author 
    Given path 'api/v1/Authors/2'
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
    * def Author = response
    Then print 'The Author is:\n' ,Author
    * def id = Author.id
    * def Book = Author.idBook
    * def FirstName = Author.firstName
    * def LastName = Author.lastName
    Then print 'The given ID is:\n' ,id
    Then print 'The given Book is:\n' ,Book
    Then print 'The given First Name is:\n' ,FirstName
    Then print 'The given Last Name is:\n' ,LastName