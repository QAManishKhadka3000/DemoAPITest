Feature: Single CoverPhoto

  Background: 
    * url FAKERESTAPI

  Scenario: Send GET request to List Single CoverPhoto 
    Given path 'api/v1/CoverPhotos/2'
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
   * def CoverPhoto = response
    Then print 'The CoverPhoto details is :\n' ,CoverPhoto
    * def id = CoverPhoto.id
    * def BookId = CoverPhoto.idBook
    * def URL = CoverPhoto.url
    Then print 'The Cover Photo ID is:\n' ,id
    Then print 'The Book Id is:\n' ,BookId
     Then print 'The Cover photo URL is:\n' ,URL
    