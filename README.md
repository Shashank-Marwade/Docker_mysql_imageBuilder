# Docker_mysql_imageBuilder
Dockerfile - Build image with MySQL schema

Assignment: Dockerfile - Build image with MySQL schema
----------------------------------------------------------------------------------------------------------------------------------------------------
Problem Statement
Dockerfile is used to create custom images in the docker. You can install binaries/packages in the base image and start the full-fledged application in one go.
Now you are aware of the Dockerfile concept and copying the host files in the Dockerfile, you have to write a docker file that will build a MySQL image with the default loaded student schema. 
Steps 1: Created two files in the same directory
	Test.sql: Containing Student table Schema and some insertion commands for inserting records
	Dockerfile: Contains script to build the docker image.
  
		FROM mysql:latest  	#refrensing mysql
    ENV MYSQL_ROOT_PASSWORD=root		#Setting mysql root password
    ENV MYSQL_DATABASE=pucsdStudents 	#creating db
    ENV MYSQL_USER=pucsd			#creating user
    ENV MYSQL_PASSWORD=pucsd		#creating user associated passwd
 
    ADD test.sql /docker-entrypoint-initdb.d	             #copying file form source to destination
    EXPOSE 3306			# To expose container port for internal networking
 
 
Step 2: Executing Command to build Image 
sudo docker build -t mysqltest .
	
Step 3: To Creating container use run command
 sudo docker run -itd --name try -p 3306:3306 mysqltest 

 
Step 4: To execute the container use command
	sudo docker exec -it try bash
  
Step 5: To check successful execution of all sql command 
Launch mysql in Interactive mode
Login to mysql using root password
Switch to pucsdStudents database
Fire Select command

 
