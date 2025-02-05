Feature: Add Cover Photo

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Add Cover Photo
    Given path 'api/v1/CoverPhotos'
    Then print 'The Author of this Script is: ' +karate.get('Author')
    Given request { "id": 2,"idBook": 2, "url": "https://QAManishKhadka.com"}
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
    * def CoverPhoto = response
    Then print 'The Added CoverPhoto details is :\n' ,CoverPhoto
    * def id = CoverPhoto.id
    * def BookId = CoverPhoto.idBook
    * def URL = CoverPhoto.url
    Then print 'The Cover Photo ID is:\n' ,id
    Then print 'The Book Id is:\n' ,BookId
    Then print 'The Cover photo URL is:\n' ,URL
