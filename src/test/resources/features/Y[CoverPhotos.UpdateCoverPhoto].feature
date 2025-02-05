Feature: Update Cover Photo

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Update Cover Photo
    Given path 'api/v1/CoverPhotos/1'
    Then print 'The Author of this Script is: ' +Author
    Given request { "id": 1,"idBook": 2, "url": "https://QAManish.com"}
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
    * def CoverPhoto = response
    Then print 'The Updated CoverPhoto details is :\n' ,CoverPhoto
    * def id = CoverPhoto.id
    * def BookId = CoverPhoto.idBook
    * def URL = CoverPhoto.url
    Then print 'The Cover Photo ID is:\n' ,id
    Then print 'The Book Id is:\n' ,BookId
    Then print 'The Cover photo URL is:\n' ,URL
