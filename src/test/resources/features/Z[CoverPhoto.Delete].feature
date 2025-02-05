Feature: DELETE Cover Photo

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: DELETE Cover Photo
    Given path 'api/v1/CoverPhotos/1'
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
