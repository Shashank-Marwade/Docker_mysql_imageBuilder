FROM mysql:latest 
	#refrensing mysql

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=pucsdStudents 	
	#creating db
ENV MYSQL_USER=pucsd			
	#creating user
ENV MYSQL_PASSWORD=pucsd		
	#creating user associated passwd

ADD test.sql /docker-entrypoint-initdb.d	
	#copying file form source to destination
	
EXPOSE 3306

