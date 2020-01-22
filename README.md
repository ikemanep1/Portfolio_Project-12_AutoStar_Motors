# _AutoStar Motors!_

### _a used car dealership website using rails._

### By _**Ike Esquivel-Pilloud**_

# Description

_This program is a database-practice site. It lists vehicles, and reviews for those used vehicles._

### Setup/Installation Requirements

* _1: download this application from github_
* _2: navigate to the file through the terminal_
* _3: type 'gem install' and 'bundle' into the console_
* _4: type 'ruby app.rb' into the console and navigate to 'localhost:4567' in your browser_
* _5: in the terminal, create a database using psql and type psql [DATABASE_NAME] < database_backup.sql to upload the database that this application uses to your computer. Make sure your computer has all the necessary applications to run a ruby program.

# dump code

# database visual

![This is how the database looks](images/visual.jpg)

# Known Bugs

_For some reason, the test for titileize fails, but works just fine on the application. I am unable to find any typos. The scope for the product with the most reviews will not display in the views. The 'each' portion is absent, when present the page will not load properly, stating "undefined method: each" as its error._

# specs
| Behavior        | Input           | Outcome  |
| ------------- |:-------------:| -----:|
| The program will add a vehicle to the database. | "hydro-powered supercycle" | "hydro-powered supercycle" |
| The program will store a list of reviews for vehicles recently purchased. | "hydro-powered supercycle", "wow this is awesome!" | "hydro-powered supercycle", "wow this is awesome!" |
| The program will delete/update vehicles in the database if the client deems it necessary. | "Delete" | "there are no vehicles to display" |
| The program will delete/update reviews for vehicles stored in its database in case the user changes their mind about their purchase. | "Wow, this car is awful!" | "Update" | "Wow, this car is awesome!" |
| The program will prevent incomplete entries from being added to the database for both vehicles and reviews, and will check to make sure additional parameters are met. | *name: Volvo car* | "Cost can't be blank, Country of origin cannot be blank" |

### Support and contact details

_ike.esquivelpilloud@gmail.com_

### Technologies Used

_the program as written in ruby, using atom, and tested with rspec and capybara. Sinatra was used as a visual guide in the development of this project._

### Gems used:

-'pry'
-'rspec'
-'sinatra'
-'capybara'
-'sinatra-contrib'
-'psql'
-'postgres'

# License

_MIT licensing_

Copyright (c) 2019 **_Ike Esquivel-Pilloud_**
