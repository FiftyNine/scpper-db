# scpper/db
Database schema and required seeding data for scpper project.

### Local deployment
 - MySQL 5.8 or newer
 - Create a database
 - Execute all sql files in the repo in ascending order in that database context. Alternatively run a backup sql file if you have one.
 - Add a user and execute `GRANT ALL` on your new database to them.

### Docker container
Define following environment variables
  - MYSQL_DATABASE - name of the database to be created
  - MYSQL_USER - name of a user with SUPER rights on this database
  - MYSQL_PASSWORD - password for this user

Author: Alexander "FiftyNine" Krivopalov  
E-mail: admin@scpper.com