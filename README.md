# _National and State Park API_

#### **State and National Park API is an independent project for Epicodus, 01/17/20**

#### By _**Angela Weber**_

## Description
  _This application was created to demonstrate concepts of creating an API on Rails. The application allows the user to get a list of Park names, and whether it is a State or National Park. The API also allows you to add, update, and delete parks from the API._

## Setup/Installation Requirements

* Copy link from github
* Open terminal and __git clone__ link
* __cd__ into project and if you have bundler installed you can run __bundle install__ to install gems
* To create database run __rake db:create__ in project directory
* To migrate database run __rake db:migrate__ in project directory
* To seed the database run __rake db:seed__
* To open server run __rails s__

## Navigating the Park API
* If you would like, you can run __rails s__ and open Postman to view and have CRUD functionality to API
* **_GET_** You can make a GET request to see all Parks.
  * **_GET_** _localHost:3000/parks_ will return a list of parks
  * **_GET_** _localHost:3000/parks/**parkID**_ will return the specific park related to the park_id number
* **_POST_** You can make post to the API adding a park
  * **_POST_** _localHost:3000/parks_ you will new to add the params of "name" and "type_of_park".
  | name      | type_of_park    |
| :------------- | :----------: |
|  Yellow Stone | National Park   |
* **_PATCH_** You can also make updates to specific parks.
  * **_PATCH_** _localHost:3000/parks/**parkID**_ you will need to add either name or type_of_park to params with the updated values
  * This will return "This park has been updated successfully"
* **_DELETE_** You can delete specific parks as well.
  * **_DELETE_** _localHost:3000/parks/**parkID**_ once you delete the API will return "Destroyed park"


## Known Bugs

_There are no known bugs. If you come across one please contact me._

## Support and contact details

_For question you can email me at AngelaWeber95@hotmail.com_

## Technologies Used

_This application was built using __Ruby__._
* __Ruby and Rails__ was used for routing
* __RSPEC__ was used for testing
* __Pry__ was used for debugging
* __Postgres__ was used for the database
* __Rake__ was used for task management

### License

Copyright (c) 2019 **_Angela Weber_**
