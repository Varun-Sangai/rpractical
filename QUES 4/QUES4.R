con <- dbConnect(MySQL(), user='user_name', password='user_password', dbname='database_name', host='localhost')
query<-"CREATE TABLE student (
     id INT NOT NULL AUTO_INCREMENT,
     name VARCHAR(255) NOT NULL,
     age INT NOT NULL,
     gender VARCHAR(10) NOT NULL,
     PRIMARY KEY (id)
     );"
dbExecute(conn,query)
query2<-"INSERT INTO student (name, age, gender) VALUES 
                           ('John', 21, 'Male'),
                           ('Sarah', 19, 'Female'),
                           ('David', 20, 'Male'),
                           ('Emily', 22, 'Female'),
                           ('Michael', 18, 'Male');"
dbExecute(conn,query2)
dbGetQuery(conn,"SELECT * FROM STUDENT;")
dbExecute(conn,"DELETE FROM STUDENT;")
dbExecute(conn,"DROP TABLE STUDENT;")