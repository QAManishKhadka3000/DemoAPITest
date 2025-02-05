Feature: Add Author

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Add the Author 
    Given path 'api/v1/Authors'
    Then print 'The Author of this Script is: ' +Author
    Given request {"id": 0, "idBook": 3, "firstName": "QA", "lastName": "Manish"}
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