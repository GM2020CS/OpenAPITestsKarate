Feature: Validate register operation for user with valid and invalid parameters for email and username

  Background:
    * url 'https://reqres.in'

  Scenario Outline: Register user with valid and invalid username and credentials as parameter
    Given path '/api/register'
    And request { email:<email>, password:<password> }
    When method <method>
    Then status <status>
    ##Then response <response>

    Examples:
      |read ('../../Data/RegisterAPI.csv')|