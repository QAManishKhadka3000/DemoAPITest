Feature: Author By Book ID

  Background: 
    * url FAKERESTAPI

  Scenario: First List Author and chain the idBook 
    Given path 'api/v1/Authors'
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
    * def Authors = response
    Then print 'The Author list are:\n' ,Authors
    * def id = Authors[2].id
    * def Book = Authors[2].idBook
    * def FirstName = Authors[2].firstName
    * def LastName = Authors[2].lastName
    Then print 'The given ID is:\n' ,id
    Then print 'The given Book is:\n' ,Book
    Then print 'The given First Name is:\n' ,FirstName
    Then print 'The given Last Name is:\n' ,LastName
    #-------------Chaining The API-------------------------------------------------------------
    Given path 'api/v1/Authors/authors/books'
    Given path Book
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
    * def id = response[1].id
    * def Book = response[1].idBook
    * def FirstName = response[1].firstName
    * def LastName = response[1].lastName
    Then print 'The given ID is:\n' ,id
    Then print 'The given Book is:\n' ,Book
    Then print 'The given First Name is:\n' ,FirstName
    Then print 'The given Last Name is:\n' ,LastName
    
    
    