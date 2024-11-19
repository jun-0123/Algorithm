select sum_score as score, e.EMP_NO,e.emp_name, e.position, e.email
from HR_EMPLOYEES e 
join (SELECT emp_no,SUM(SCORE) as sum_score,
      rank() over (order by sum(score) desc) as top_score
      from HR_GRADE 
      group by EMP_NO) r
on e.emp_no= r.emp_no
where top_score =1



