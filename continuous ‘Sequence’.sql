#Problem Statement
# : Write a SQL query to find the maximum and minimum values of continuous ‘Sequence’ in each ‘Group’
select grp,MIN(seq) as min_seq,MAX(seq) as max_seq from 
(

select grp,Seq, seq - row_number() over (partition by grp order by seq) as split
from emp 
)A
group by grp,split
