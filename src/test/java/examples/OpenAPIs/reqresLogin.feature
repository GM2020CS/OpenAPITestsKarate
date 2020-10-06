Feature: Validate Login for a registered user with valid and invalid parameters for email and username

  Background:
    * url 'https://reqres.in'

  Scenario Outline: login for a registered user with valid and invalid username and credentials as parameter

    Given path '/api/login'
    And request { email:<email>, password:<password> }
    When method <method>
    Then status <status>

    * match response == <response>

    Examples:
      |read ('../../Data/LoginAPI.csv')|

    Scenario: login failed due to incomplete request payload containing only email header.

      Given path '/api/login'
      And request {"email": "peter@klaven"}
      When method POST
      Then status 400

      * match response == {"error":"Missing password"}