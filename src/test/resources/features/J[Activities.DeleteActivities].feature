Feature: Delete Activities

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Delete the User
    Given path 'api/v1/Activities/2'
    Then print 'The Author of this Script is: ' +Author
    When method DELETE
    Then print response
    Then print responseBytes
    Then print responseStatus
    Then print responseHeaders
    Then print responseCookies
    Then print responseTime
    Then print requestTimeStamp
    Then status 200
