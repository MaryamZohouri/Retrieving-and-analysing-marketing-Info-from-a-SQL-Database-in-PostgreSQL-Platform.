--Temporary results:
--1. Derived tables
--2. CTE: Common Table Expression
--3. Temporary table  
--4. Table Variable

--1.Derived tables
use SAB
select*from Student_Course
--derived tables
select S_Id, AVG(grade)
from Student_Course
group by S_Id

select*from Student_Course

select S_Id, average
from
(select S_Id, AVG(grade) average
from Student_Course
group by S_Id) as SC
where average>80

--2. CTE: for more readble scripts
with SC
as
(select S_Id, AVG(grade) average
from Student_Course
group by S_Id
)
select*from SC
where average>80

--3. Temporary tables
--Key Points:
-- . Temporary tables in SQL server used to store intermediate results temporarily.
-- For example, we have a sequence of operations & it's complex to calculate & you want to break
-- the calculation into multiple steps.
--. They are stored in the tempdb system database and are automatically deleted once they are no longer in scope.

                                  -- Types of temporary tables:
       -- Local temporary tables                                 -- Global temporary tables
       --.prefixed with a single #                                  . prefixed with double ##
       --.visible only to the session that created it               . visible to all sessions
       --.Automatically dropped when session ends                   . automatically dropped when session ends
                                                                  -- & no longer sessions are using it

--Ex. 
select S_Id, avg(grade) average
into #SC
from Student_Course
group by S_Id

select*from #SC
where average>80
 

 
 --4. Table Variable: varibles of table types
 declare @SC table(
 S_Id int,
 average float
 )
 insert into @SC
 select S_Id, AVG(grade) average
 from Student_Course
 group by S_Id
 
 select*from @SC
 where average>80
 