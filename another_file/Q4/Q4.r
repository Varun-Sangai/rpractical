
# Write R commands to do the following:
library(RMySQL)
driver <- dbDriver("MySQL")
con <- dbConnect(driver,
                 dbname = 'Prac4',
                 host = 'localhost',
                 port = 3306,
                 user = 'admin',
                 password = "pass123")

#a. Create a sample STUDENT table in the MySQL database.
dbSendQuery(con, "CREATE TABLE STUDENT (
                    RollNumber INT NOT NULL AUTO_INCREMENT,
                    Name VARCHAR(30) NOT NULL,
                    Age INT,
                    grade VARCHAR(2),
                    PRIMARY KEY (RollNumber))")


#b. Insert 5 rows into the STUDENT table.
dbSendQuery(con, "INSERT INTO STUDENT (name, age, grade) 
                    VALUES ('George', 18, 'A'), 
                           ('Dergham', 19, 'B'),
                           ('Kalakel', 17, 'C'),
                           ('GGS', 20, 'A'),
                           ('DU', 18, 'B')")

#c. Display all the information stored in STUDENT table.
result <- dbSendQuery(con, "SELECT * FROM STUDENT")
df <- dbFetch(result)
df

#d. Delete all the rows from STUDENT table.
dbSendQuery(con, "DELETE FROM STUDENT")

#e. Drop the STUDENT table.
dbSendQuery(con, "DROP TABLE STUDENT")

