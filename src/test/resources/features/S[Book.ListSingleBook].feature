Feature: Single Book

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Books
    Given path 'api/v1/Books'
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
    * def Books = response
    Then print 'The Book List are:\n' ,Books
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
    #--------------------List Single Book----------------------------------------------------------------------
    Given path 'api/v1/Books'
    And path id
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
    * def Book = response
    Then print 'The Book is:\n' ,Books
    * def id = Book.id
    * def Title = Book.title
    * def Description = Book.description
    * def Pagination = Book.pageCount
    * def Excerpt = Book.excerpt
    * def PublishedDate = Book.publishDate
    Then print 'The Book ID is:\n' ,id
    Then print 'The Book Title is:\n' ,Title
     Then print 'The Book Description is:\n' ,Description
    Then print 'The Book Pagination is:\n' ,Pagination
    Then print 'The Book Excerpt is:\n' ,Excerpt
    Then print 'The Book Published Date is is:\n' ,PublishedDate