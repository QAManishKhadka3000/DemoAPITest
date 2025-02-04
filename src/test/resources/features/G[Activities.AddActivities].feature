Feature: Add Activites 

  Background: 
    * url FAKERESTAPI

  Scenario: Add the Activities
    Given path 'api/v1/Activities'
    Then print 'The Author of this Script is: ' +Author
    Given request {"id": 0, "title": "QA incharge", "dueDate": "2022-05-02T04:16:58.692Z","completed": true}
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
    * def Activity = response
    Then print 'The Activity is:\n' ,Activity
    * def id = Activity.id
    * def Title = Activity.title
    * def DueDate = Activity.dueDate
    * def Completed = Activity.completed
    Then print 'The given ID is:\n' ,id
    Then print 'The given Title is:\n' ,Title
    Then print 'The given DueDate is:\n' ,DueDate
    Then print 'Has completed ?:\n' ,Completed
