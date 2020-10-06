# OpenAPIKarate
Repo having sample tests for open API using karate DSL


This is a sample project using some of the OPEN APIs available on https://reqres.in/, the objective of the project is to demonstrate a simple framework of data driven API tests which ensure data integrity and challenges validation on API level.

We are using some postive/Valid and negative/ Invalid inputs as parameters to all the methods (GET, POST, PUT, PATCH, DELETE .etc), For this we are using some of the inbuilt feature of karate DSL tool and framework and most of the motivation has come from https://github.com/intuit/karate link
and https://github.com/intuit/karate/tree/master/karate-demo demo project.

From above demo project we have used following features predominantly for test cases:

1. dynamic-params.feature https://github.com/intuit/karate/blob/master/karate-demo/src/test/java/demo/search/dynamic-params.feature
2. dynamic-csv.feature https://github.com/intuit/karate/blob/master/karate-demo/src/test/java/demo/outline/dynamic-csv.feature
3. outline.feature https://github.com/intuit/karate/blob/master/karate-junit4/src/test/java/com/intuit/karate/junit4/demos/outline.feature

During the implimentation we also found a bug in karate which is leading to a issue while implementing dynamic-params.feature for GET method, we are raising it soon, here is the stackoverflow exhcnage for the same https://stackoverflow.com/questions/64184714/karate-can-dynamic-csv-feature-work-for-get-request-how-to-pass-dynamic-path

We have developed 7 feature files to cover list of 14 APIs on https://reqres.in/


## Feature file reqresUsers.feature ensures coverage for 3 APIs, which are:
1. List Users (GET)
2. Single User (GET)
3. Single User Not Found (GET)
 
*under the feature file we have 2 scenarios*
 
1. Get multiple user from a particular page based on valid and invalid inputs using scenario outline feature 
2. Get single user based on id value - Valid & invalid using scenario outline feature
 
## Feature file reqresResources.feature has tests against 3 APIs on the list which are 
1. LIST <RESOURCE> (GET)
2. SINGLE <RESOURCE> (GET)
3. SINGLE <RESOURCE> NOT FOUND (GET)

*we have 2 scearios covering the scope under this file*

1. Scenario defines variable of expected JSON response and makes the call to match the expected and received response, this covers 1st API in above list.
2. Scenario outline feature is used for 2nd scenario to Get single resource based on id value - Valid & invalid which we are passing under Example section. This covers API 2 and 3 in above list.

## Feature file reqresUserCRUD.feature has tests against 4 APIs on the list which are 
1. CREATE (POST)
2. UPDATE (PATCH)
3. UPDATE (PUT)
4. DELETE (DELETE)

*we have 3 scearios covering the scope under this file*

1. Scenario outline feature used here for 1st scanrio which ensures creating of user using name and job details with valid and invalid parameters, this cover API 1 in above list.
2. this scenario covers PUT and PATCH APIs in above list where a single csv file is used to pass invalid and valid parameters as request header for both API is same and methods are different. 
3. This scanrio covers DELETE API where scenario outline feature is used again to pass valid and invalid parameters.

## Feature file reqresRegister.feature has tests for 2 APIs on the list which are 
1. REGISTER - SUCCESSFUL (POST)
2. REGISTER - UNSUCCESSFUL (POST)

*we have 2 scearios covering the scope of both the APIS under this file*

1. scenario outline which ensures valid and invalid parameters for email and password, the csv file has all combination inputs agianst both the parameters.
2. Scenario covers the the condition with passing JSON with email header and data and no Password header and DATA. In scenario 1 we passed Password header but No data and thats how Scenario 2 is differnt than 1. 

## Feature file reqresLogin.feature has tests for 2 APIs on the list which are 
1. LOGIN - SUCCESSFUL (POST)
2. LOGIN - UNSUCCESSFUL (POST)

*we have 2 scearios covering the scope of both the APIS under this file*

1. Scanrio outline covers valid and invalid parameters for email and password, also we validate the expected JSON response from CSV file.
2. This scenario covers the condition with passing JSON with email header and data and no Password header and DATA. In scenario 1 we passed Password header but No data and thats how Scenario 2 is differnt than 1. 

## Feature file reqresResponseDelay.feature has tests for 1 APIs on the list which is
1. DELAYED RESPONSE (GET)

we have single scenario here using outline method passing invlaid and valid params

## Reporting structure.

we have configured a conaosildated report for the whole run, motivation was from link https://github.com/intuit/karate#test-reports
we have set up Open RestAPI's report under Target and also added parallelruns and TestParallel class.

##Please Note
  
 Assertions for expected results and response are based on API response code standards https://restfulapi.net/http-status-codes/ which ensures and Bad request for example should be 400 and unauthorised access should be 404 and so on and so forth. 

   
