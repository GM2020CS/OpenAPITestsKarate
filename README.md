# OpenAPIKarate
Repo having sample tests for open API using karate DSL


This is a sampple project using some of the OPEN APIs available on https://reqres.in/, the objective of the project is to demonstrate a simple framework of data driven API tests which ensure data integrity and challenges validation on API level.

We use postive and negative inputs as parameters to all the methods (GET, POST, PUT, PATCH, DELETE .etc), we have used some of the inbuilt feature of karate DSL tool and framework and most of the motivation has come from https://github.com/intuit/karate
and https://github.com/intuit/karate/tree/master/karate-demo demo project, we have used following features predominantly for test cases

1. dynamic-params.feature https://github.com/intuit/karate/blob/master/karate-demo/src/test/java/demo/search/dynamic-params.feature
2. dynamic-csv.feature https://github.com/intuit/karate/blob/master/karate-demo/src/test/java/demo/outline/dynamic-csv.feature
3. outline.feature https://github.com/intuit/karate/blob/master/karate-junit4/src/test/java/com/intuit/karate/junit4/demos/outline.feature

During the implimentation we also found a bug in karate which is leading to a issue while implementing dynamic-params.feature for GET method, we are raising it soon, here is the stackoverflow exhcnage for the same https://stackoverflow.com/questions/64184714/karate-can-dynamic-csv-feature-work-for-get-request-how-to-pass-dynamic-path

We have developed 7 feature files to cover list of 14 APIs on https://reqres.in/


Feature file reqresUsers.feature ensures there is coverage against 3 APIs on the list which are 
1. List Users (GET)
2. Single User (GET)
3. Single User Not Found (GET)
 
*under the feature file we have 2 scenarios*
 
1. Get multiple user from a particular page based on valid and invalid inputs using scenario outline feature & 
2. Get single user based on id value - Valid & invalid using scenario outline feature
 
Feature file reqresResources.feature has tests against 2 APIs on the list which are 
1. LIST <RESOURCE> (GET)
2. SINGLE <RESOURCE> (GET)
3. SINGLE <RESOURCE> NOT FOUND (GET)

we have 2 scearios covering all possible positive and negative cases for tehse 3 APIs in the feature file using Scenario outline and simple sceanrio feature.
  

   
