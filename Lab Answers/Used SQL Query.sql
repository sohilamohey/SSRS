create or alter PROCEDURE Course_Topic
as
select c.*, t.Top_Name from Course c
join Topic t on c.Top_Id = t.Top_Id;

Course_Topic

create or alter PROCEDURE Course_Topic_Student
as
select st.*, c.*, t.Top_Name, stcr.Grade from Course c
join Topic t on c.Top_Id = t.Top_Id
join Stud_Course stcr on stcr.Crs_Id = c.Crs_Id
join Student st on st.St_Id = stcr.St_Id

Course_Topic_Student

create or alter proc StudentBetweenAge
@Age1 int = 1, @age2 int =100
as
select * from Student a
where a.St_Age between @Age1 and @age2
create or alter proc courses
as
select * from Course

select d.Dept_Id, d.Dept_Name
from Department d