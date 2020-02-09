
# _Code Review 12_
## _Building an API_
#### _An API for residents in a nursing home_
****************
## _January 17, 2019_
****************
#### _By: Joann Carter_
***************
#### _Description_
This app will create an API for residents in an elderly community. This app can be used on postman. There are no views for this app.
***************
# _Instructions for Code Review Assignment_
* Endpoints for GET (all and by id), POST, PUT and DELETE.
* A RANDOM endpoint that randomly returns a park/business/animal.
* A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
* Model scopes to process parameters from API calls.
* At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
* Thorough exception handling.
* Complete testing with request specs.
* Randomized data with Faker or your own custom seed code.
* A README that thoroughly documents all endpoints, including parameters that can be passed in.

******************
#### _Instructions_
* open directory in terminal
* run 'bundle install'
* run 'rake db:create'
* run 'rake db:migrate'
* run 'rake db:seed'
* run 'rails s'
* open localhost:3000 in browser
* open postman
***************
#  _End Points_
### _view endpoints on Postman_
* View all residents by: 'get' localhost:3000/residents
* View a single resident by: get localhost:3000/residents/#{resident.id}
* create a new resident by: 'post' localhost:3000/residents and entering key's: name, room_number, and age with corresponding and values on Postman
* Delete a single resident by: 'delete' localhost:3000/residents/#{resident.id}
* edit a single resident by: 'put' localhost:3000/residents/#{resident.id} and passing in the information for the key and value on Postman

***************
#### _Known Bugs_
* User authentication isn't working due to unknown API key
***************
# _Technology Used_
* Ruby
* Rails- API
* BCRYPT
* Pry
* RSPEC
* Postman
* Rake
* Faker
*******
###### _Licensing_
MIT public
