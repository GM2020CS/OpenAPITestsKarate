Feature: Get users details based on valid and invalid inputs

  Background:

  * url 'https://reqres.in'

  Scenario Outline: Get multiple user from a particular page based on valid and invalid inputs
    Given path '/api/users?page=<id>'
    When method <method>
    Then status <status>
    * print response

    Examples:
      |id|status|method|Scenario|
      |2|200|GET|Valid id as input|
      |4|200|GET|Valid id as input|
      |5|200|GET|Valid id as input|
      |&|404|GET|Special character as Input|
      | |404|GET|Empty space as Input|
      |A|404|GET|Alphabet as input|
      |999|404|GET|Invalid Number as input|
      |-1|404|GET|Invalid Number as input|

    Scenario Outline: Get single user based on id value - Valid & invalid
      Given path '/api/users/<id>'

      When method <method>
      Then status <status>

      * print response
      ##* match response.data.id contains <id>

      Examples:
        |id|status|method|Scenario|
        |2|200|GET|Valid id as input|
        |4|200|GET|Valid id as input|
        |5|200|GET|Valid id as input|
        |&|404|GET|Special character as Input|
        | |404|GET|Empty space as Input|
        |A|404|GET|Alphabet as input|
        |999|404|GET|Invalid Number as input|
        |-1|404|GET|Invalid Number as input|

      #|read('../../Data/users.csv')|






