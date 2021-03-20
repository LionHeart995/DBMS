-- Userlogin Table Creation
Create table userlogin(
  username varchar(20) not null primary key,
  password varchar(20),
  name varchar(50),
  email varchar(50),
  mobile_no nchar(10));

	-- Insert Values into UserLogin
	INSERT INTO [College Placements System].[dbo].[userlogin]
	VALUES ('pushpak','pushpak','Pushpak Chaudhari','pushpakb.chaudhari@gmail.com','8380043531');

	INSERT INTO [College Placements System].[dbo].[userlogin]
	VALUES ('suyog','suyog','Suyog Patil','suyogpatil@gmail.com','8888817000');

	INSERT INTO [College Placements System].[dbo].[userlogin]
	VALUES ('dinesh','dinesh','Dinesh Jawale','djdineshjawale@gmail.com','7775656995');

	INSERT INTO [College Placements System].[dbo].[userlogin]
	VALUES ('rohan','rohan','Rohan Chadhari','rohanchaudhari@gmail.com','9422849934');

-- student Table Creation
Create table student(
  studentid varchar(20) not null primary key,
  studname varchar(50),
  gender varchar(11),
  dob date,
  studmob_no nchar(10),
  studemail varchar(50),
  grades float,
);

-- Insert Values into student
	INSERT INTO [College Placements System].[dbo].[student]
	VALUES ('20MCA007','Pushpak Chaudhari','male','1995-07-06','8380043531','pushpakb.chaudhari@gmail.com','9.71');

	INSERT INTO [College Placements System].[dbo].[student]
	VALUES ('20MCA020','Suyog Patil','male','1995-04-21','88888170000','suyogpatil@gmail.com','8.56');

	INSERT INTO [College Placements System].[dbo].[student]
	VALUES ('dinesh','dinesh','Dinesh Jawale','djdineshjawale@gmail.com','7775656995');
	VALUES ('20MCA012','Pushpak Chaudhari','male','1995-07-06','8380043531','pushpakb.chaudhari@gmail.com','9.71');

	INSERT INTO [College Placements System].[dbo].[student]
	VALUES ('rohan','rohan','Rohan Chadhari','rohanchaudhari@gmail.com','9422849934');
	VALUES ('20MCA010','Rohan Chaudhari','male','1995-07-06','8380043531','pushpakb.chaudhari@gmail.com','9.71');

  -- Company Table Creation
  Create table company(
  companyid nchar(10) not null primary key,
  comName varchar(50) not null,
  com_type varchar(30) not null,
  comAdd varchar(50) not null,
  comEmail varchar(50) not null,
  contact_no nchar(10) not null,
  com_Website varchar(30) not null);
  
	-- Insert Values into Company
	INSERT INTO [College Placements System].[dbo].[company]
	VALUES (101,'Google','MNC international','America','google@gmai.com',8380043531,'www.google.com');

	INSERT INTO [College Placements System].[dbo].[company]
	VALUES (102,'Wipro','IT international','Bangalore','google@gmai.com',8759365215,'www.wipro.com');

	INSERT INTO [College Placements System].[dbo].[company]
	VALUES (103,'Tata Consultancy Services','IT international','Mumbai','google@gmai.com',9637412580,'www.tcs.com');

	INSERT INTO [College Placements System].[dbo].[company]
	VALUES (104,'Capgemini India Pvt ltd','IT international','Noida','google@gmai.com',8795214789,'www.capgemini.com');

	 -- Course Table Creation
  Create table course(
  courseid nchar(10) not null primary key,
  courseName varchar(50) not null,
  com_type varchar(30) not null);

  -- Insert Values into Course
	INSERT INTO [College Placements System].[dbo].[course]
	VALUES (101,'Master of Computer Application','MCA Management');

	INSERT INTO [College Placements System].[dbo].[course]
	VALUES (102,'Master of Business Administration','MBA Finance');

	INSERT INTO [College Placements System].[dbo].[course]
	VALUES (103,'Master of Business Administration','MBA Marketing');

	INSERT INTO [College Placements System].[dbo].[course]
	VALUES (104,'Master of Business Administration','MBA IT');

	INSERT INTO [College Placements System].[dbo].[course]
	VALUES (105,'Master of Business Administration','MBA HR');

-- College Table Creation
  Create table college(
  collegeid nchar(10) not null primary key,
  collegeName varchar(50) not null,
  contactNo varchar(10) not null,
  collegeEmail varchar(50) not null,
  collgeAdd varchar(30) not null);

  -- Insert Values into College
	INSERT INTO [College Placements System].[dbo].[college]
	VALUES (101,'MIT World Peace University',2071177104,'mitwpu@mitwpu.edu.in','Pune');

-- Job Table Creation
  Create table job(
  jobid nchar(10) not null primary key,
  jobName varchar(50) not null,
  jobType varchar(20) not null,
  jobSalary nchar(20) not null,
  jobDesc varchar(500) not null,
  jobVacancy varchar(5) not null);

  -- Insert Values into job
	INSERT INTO [College Placements System].[dbo].[job]
	VALUES (101,'Full Stack Developer','Web Developer',30000,'Full Stack Web Development with GUVI with Ample Projects for Hands-on Practice.','5');

	INSERT INTO [College Placements System].[dbo].[job]
	VALUES (102,'Java Developer','Java Developer',50000,'A Java Developer is responsible for the design, development, and management of Java-based applications.','2');

	-- Placement Table Creation
  Create table placement(
  plid nchar(10) not null primary key,
  plStudId varchar(20) not null,
  plCollegeId varchar(20) not null,
  plType varchar(20) not null,
  plDesig varchar(50) not null,
  plDate date not null,
  plPackage nchar(20) not null,
  plDesc varchar(500) not null);


  -- Insert Values into placement
	INSERT INTO [College Placements System].[dbo].[placement]
	VALUES (1111,'20MCA007',101,'Placed','Business Analyst','2020-07-06',1200000,'A business analyst is a person who analyzes an organization or business domain and documents its business, processes, or systems, assessing the business model or its integration with technology.');


--	ALTER TABLE student
--ALTER COLUMN studentid nchar(10);

--drop table

--ALTER TABLE placement 
--ADD CONSTRAINT FK_plStudId
--FOREIGN KEY (StudentID) REFERENCES student(studentid);	