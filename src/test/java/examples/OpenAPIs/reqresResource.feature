Feature: Get all resource details based on valid and invalid inputs

  Background:

    * url 'https://reqres.in'

  Scenario: Get list of all resource

    * def expected =
    """
    {
    "page": 1,
    "per_page": 6,
    "total": 12,
    "total_pages": 2,
    "data": [
        {
            "id": 1,
            "name": "cerulean",
            "year": 2000,
            "color": "#98B2D1",
            "pantone_value": "15-4020"
        },
        {
            "id": 2,
            "name": "fuchsia rose",
            "year": 2001,
            "color": "#C74375",
            "pantone_value": "17-2031"
        },
        {
            "id": 3,
            "name": "true red",
            "year": 2002,
            "color": "#BF1932",
            "pantone_value": "19-1664"
        },
        {
            "id": 4,
            "name": "aqua sky",
            "year": 2003,
            "color": "#7BC4C4",
            "pantone_value": "14-4811"
        },
        {
            "id": 5,
            "name": "tigerlily",
            "year": 2004,
            "color": "#E2583E",
            "pantone_value": "17-1456"
        },
        {
            "id": 6,
            "name": "blue turquoise",
            "year": 2005,
            "color": "#53B0AE",
            "pantone_value": "15-5217"
        }
    ],
    "ad": {
        "company": "StatusCode Weekly",
        "url": "http://statuscode.org/",
        "text": "A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."
    }
}
    """
    Given path '/api/unknown'
    When method GET
    Then status 200

    And match response == expected


  Scenario Outline: Get single resource based on id value - Valid & invalid
    Given path '/api/unknown/<id>'

    When method <method>
    Then status <status>


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