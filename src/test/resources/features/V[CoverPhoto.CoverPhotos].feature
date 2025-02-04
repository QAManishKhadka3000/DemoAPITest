Feature: Cover Photos

  Background: 
    * url FAKERESTAPI

  Scenario: List of Cover Photos
    Given path 'api/v1/CoverPhotos'
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
    * def CoverPhotos = response
    Then print 'The Cover Photo list are:\n' ,CoverPhotos
    * def id = CoverPhotos[1].id
    * def BookId = CoverPhotos[1].idBook
    * def URL = CoverPhotos[1].url
    Then print 'The Cover Photo ID is:\n' ,id
    Then print 'The Book Id is:\n' ,BookId
    Then print 'The Cover photo URL is:\n' ,URL
