Feature: Perform all the CRUD operations on User module with valid and invalid inputs

  Background:

    * url 'https://reqres.in'

  Scenario Outline : create a user with valid and invalid input
    * def users =
    """
    {
    "name": "name",
    "job": "job"
}
    """

    Given path '/api/users'
    And request users
    When method POST
    Then status <status>
    * print response

    Examples:
      | read('../../Data/userCRUD.csv') |



  Scenario: Update job field for a created user by PUT method

    * def user =
      """
 {
    "name": "morpheus",
    "job": "zion resident"
}
      """
    Given path '/api/users/2'
    And request user
    When method PUT
    Then status 200
    * print response

  Scenario: Update job field for a created user by PATCH method

    * def user =
      """
 {
    "name": "morpheus",
    "job": "zion President"
}
      """
    Given path '/api/users/2'
    And request user
    When method PATCH
    Then status 200
    * print response


  Scenario: Delete a created user by Delete method

    Given path '/api/users/2'
    When method DELETE
    Then status 204
    * print response
