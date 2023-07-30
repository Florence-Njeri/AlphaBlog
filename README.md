# AlphaBlog

**Resources**
***Users**

- Create a users table and model
- Add validations to the users model

  * username must be present, unique and between 3 -25 characters
  * email must be present and unique, max 105 characters
  * email must use a valid format, check with email regex

***Associations***

- One-to-many relationship between users and articles

***Authentication***

- Login using a secure password

***Authorization***

- Add restrictions to add CRUD actions to artciles if user isn't logged in

***Security***
- Add admin user functionality and access level