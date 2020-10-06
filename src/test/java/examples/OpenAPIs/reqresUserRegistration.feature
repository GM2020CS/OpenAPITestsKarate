Feature: Perform all the Registration operations for user by email

  Background:

    * url 'https://reqres.in'

  Scenario Outline: register a user by a email id and password with valid and invalid parameters

    Given path '/api/register'
    And request { email:<email>, password:<password> }
    When method <method>
    Then status <status>

* match response == <response>

    Examples:
      |read ('../../Data/RegisterAPI.csv')|

    Scenario: When registering with request without password header in request payload.

      Given path '/api/register'
      And request {"email": "sydney@fife"}
      When method POST
      Then status 400

      * match response == {"error":"Missing password"}