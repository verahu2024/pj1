-- 1.
select
studentId,
studentName,
mathResult,
  count(*) from MathExam
group by studentId,
studentName,
mathResult
having count(*)>1


-- 2.
delete from MathExam where id not in(
select min(id) 
from MathExam
group by
studentId,
studentName,
mathResult
）

