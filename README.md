# AlphaBlog

**Resources**

***Users**

- Add CRUD actions to the user's MVC
- Create a users table and model
- Add validations to the users model

  * Username must be present, unique and between 3 -25 characters
  * Email must be present and unique, max 105 characters
  * Email must use a valid format, check with email regex
 
***Articles**

- Add CRUD actions to the article's MVC
- Create an article's table and model
- Add validations to the article model

  * title must be present, unique, and between 6 - 100 characters
  * description must be present and unique, between 10 - 100 characters

***Associations***

- One-to-many relationship between users and articles

***Authentication***

- Login using a secure password

***Authorization***

- Add restrictions to add CRUD actions to articles if user isn't logged in

***Security***
- Add admin user functionality and access level
