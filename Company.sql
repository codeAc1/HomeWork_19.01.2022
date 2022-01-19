Create Database Company

	Use Company

CREATE TABLE Departments
	(
		Id int primary key identity,
		Name nvarchar(30) NOT NULL CONSTRAINT CH_NAME CHECK(LEN(Name)>2)
	)

Create Table Employees
	(
		ID int primary key identity,
		FullName nvarchar(50) NOT NULL CONSTRAINT CH_FullName CHECK(LEN(FullName)>3),
		Salary money NOT NULL CONSTRAINT CK_Salary Check(Salary>0),
		DepartmentId int NOT NULL REFERENCES Departments(Id)
	)
--DepartmentID not null mehdudiyyetini gotur

	Alter table Employees 
	Alter Column DepartmentId int

--Test ucun--
--Departamentler elave et
	Insert Into Departments
	values ('İnformasiya texnologiyaları'),
		   ('İnsan resursları'),
		   ('Maliyyə və təminat'),
		   ('Nəzarət və qiymətləndirmə')

--Emekdaslar elave et
	Insert Into Employees(FullName,DepartmentId,Salary)
	values  ('Ruslan Muradov',6,1500),
			('Tural Şəfiyev',6,1200),
			('Səxavət Əliyev',3,855),
			('Tural Seyidov',3,855),
			('Vüsal Əsgərov',4,845),
			('Seymur Quliyev',4,835),
			('Elmir Quliyev',5,835),
			('Nəcəf Məmmədov',5,550),
			('Bəhruz Novruzov',6,550),
			('Sadiq Əliyev',3,280),
			('Hüseyn Məmmədov',4,280)

-- Iki Cedvel arasinda munasibetleri yoxlamaq ucun sorgular

--1.Emekdaslar ve Departamentler cedvelini istifade ederek FullName.Salary ve Departament adini geri qaytar.
   --Join  üzləşdirdiyi dəyərlər null olmayanları gətirəcək
	Select FullName,Salary,Dep.Name 'Departament Name' from Employees as Emp
	join Departments as Dep
	on Emp.DepartmentId=Dep.Id

	--Left Join üzləşdirdiyi dəyərlər null olsa belə gətirəcək

	Select FullName,Salary,Dep.Name 'Departament Name' from Employees as Emp
	 left join Departments as Dep
	on Emp.DepartmentId=Dep.Id

