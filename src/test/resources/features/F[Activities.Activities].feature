Feature: Activities

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: GET the Activites
    Given path 'api/v1/Activities'
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
    * def Activities = response
    Then print 'The user list are:\n' ,Activities
    * def id = Activities[0].id
    * def Title = Activities[0].title
    * def DueDate = Activities[0].dueDate
    * def Completed = Activities[0].completed
    Then print 'The given ID is:\n' ,id
    Then print 'The given Title is:\n' ,Title
    Then print 'The given DueDate is:\n' ,DueDate
    Then print 'Has completed ?:\n' ,Completed
