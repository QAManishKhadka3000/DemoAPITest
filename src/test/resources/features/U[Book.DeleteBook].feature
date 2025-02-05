Feature: Delete Book

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Books   
    Given path 'api/v1/Books'
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
    * def Books = response
    Then print 'The Book list are:\n' ,Books
    * def id = Books[1].id
    * def Title = Books[1].title
    * def Description = Books[1].description
    * def Pagination = Books[1].pageCount
    * def Excerpt = Books[1].excerpt
    * def PublishedDate = Books[1].publishDate
    Then print 'The Book ID is:\n' ,id
    Then print 'The Book Title is:\n' ,Title
     Then print 'The Book Description is:\n' ,Description
    Then print 'The Book Pagination is:\n' ,Pagination
    Then print 'The Book Excerpt is:\n' ,Excerpt
    Then print 'The Book Published Date is is:\n' ,PublishedDate
    #-----------------------Delete Book---------------------------------------------------
    Given path 'api/v1/Books'
    And path id
    Then print 'The Author of this Script is: ' +Author
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
