Feature: Delete Author

  Background: 
   * url karate.get('FAKERESTAPI')

  Scenario: Authors   
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
    * def Author = response
    Then print 'The Author is:\n' ,Author
    * def id = Author[1].id
    * def Book = Author[1].idBook
    * def FirstName = Author[1].firstName
    * def LastName = Author[1].lastName
    Then print 'The given ID is:\n' ,id
    Then print 'The given Book is:\n' ,Book
    Then print 'The given First Name is:\n' ,FirstName
    Then print 'The given Last Name is:\n' ,LastName
    #-----------------------Delete Author---------------------------------------------------
    Given path 'api/v1/Authors'
    And path id
    Then print 'The Author of this Script is: ' +karate.get('Author')
    When method DELETE
    Then print response
    Then print responseBytes
    Then print responseStatus
    Then print responseHeaders
    Then print responseCookies
    Then print responseTime
    Then print responseType
    Then print requestTimeStamp
    Then status 200
