# Contracts Management System

## General info
This web application is a simple management system, which let companies manage their products and contracts. <br>
In this case, it's a software house, which offer operating systems to their clients for subscription fee.   

## Aim of project
This project was prepared as recruitment task for Junior Java Developer position in one polish software house in 2018. 

## Technologies
### Backend:
- Java 8
- Apache Maven (version >= 3)
- Spring Framework (no Spring Boot)
- Apache Tomcat server (version 8)
- Hibernate ORM
- Oracle Database 11g xe
- SQL

### Frontend:
- JavaServer Pages
- HTML 5
- CSS 3
- Bootstrap
- jQuery

## Project structure
- project is built in Maven technology
- it uses Spring MVC pattern
- you can find view layer in '/src/main/webapp/WEB-INF/views' (JSP)
- you can find backend in 'src/main/java' (Java 8)

## Setup

In directory 'doc' you can find scripts necessary to create Oracle database.

### Building project:
In console go to directory with 'pom.xml' file and execute command:
- mvn clean install

### Starting project:
To start project use Tomcat server on port: 8084, JMX port: 1099


