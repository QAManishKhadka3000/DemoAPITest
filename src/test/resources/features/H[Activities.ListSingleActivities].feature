Feature: Single Activities

  Background: 
    * url karate.get('FAKERESTAPI')

  Scenario: Send GET request to List Single user  
    Given path 'api/v1/Activities/2'
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
    