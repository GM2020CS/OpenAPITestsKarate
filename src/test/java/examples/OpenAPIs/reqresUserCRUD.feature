Feature: Validate CRUD operations for user creation with valid and invalid parameters

  Background:
    * url 'https://reqres.in'

  Scenario Outline: Create User using name and job detail with valid and invalid parameters
    Given path 'api/users'
    And request { name:<name>, job:<job> }
    When method <method>
    Then status <status>
    * print response

    Examples:
      |read('../../Data/CreateAPI.csv')|


  Scenario Outline: Update User using PATCH and UPDATE method with valid and invalid parameters
    Given path 'api/users/2'
    And request { name:<name>, job:<job> }
    When method <method>
    Then status <status>
    * print response

    Examples:
      |read ('../../Data/UpdateAPI.csv')|



  Scenario Outline: Delete User using valid and invalid parameters
    Given path 'api/users/<id>'
    When method <method>
    Then status <status>
    * print response
    Examples:
      |read ('../../Data/DeleteAPI.csv')|
