# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Built using Corneal gem.  App contains MVC components.  Models folder includes 2 classes.  Views folder contains erb files that are displayed to the user.  Controller folder contains routes and controller actions.  This folder controls the flow of the application.
- [x] Use ActiveRecord for storing information in a database - I was unable to use rake commands to create the database, create tables, or any migrations. When running any rake commands, nothing happens and no error messages appear. I manually used SQLite3 commands to create the database and tables.
- [x] Include more than one model class (e.g. User, Post, Category) - Application contains a User model and a Sneaker Model.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many Sneakers.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Sneakers belongs_to User
- [x] Include user accounts with unique login attribute (username or email) - User will use a username and password to login.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Sneakers Controller contains CRUD actions that allows users to create, read, update and destroy their objects.
- [x] Ensure that users can't modify content created by other users - Users' unique profiles cannot be accessed without logging in.  
- [ ] Include user input validations - User class validates_presence_of a username and password.  This requires both aattributes to be present and unique when creating a User instance.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - If validations fail, a /failure route is triggered and failure.erb file displays error to user.
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message
