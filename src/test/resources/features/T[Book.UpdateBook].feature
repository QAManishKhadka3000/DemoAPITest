Feature: Update Book

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Update the Book 
    Given path 'api/v1/Books/1'
    Then print 'The Author of this Script is: ' +Author
    Given request {"id": 1,"title": "Story","description": "The names are still the same The story's still the truth I was alone You found me waiting and made me your own I was afraid That somehow I never could be The man that you wanted of me You are the story of my life And every word is true Each chapter sings your name Each page begins with you It's the story of our times And never letting go And if I die today I wanted you to know","pageCount": 100,"excerpt": "Life is all about the story", "publishDate": "2022-05-03T10:40:23.4085556+00:00"}
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
    * def Book = response
    Then print 'The Response is:\n' ,Book
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