select
	case when creditLimit < 75000 then 'a: Below $75K'
		 when creditLimit between 75000 and 100000 then 'b : $75K - $100K'
         when creditLimit between 100000 and 150000 then 'b : $100K - $150K'
         when creditLimit > 150000 then 'b : Over $150K'
         else 'others' end as credit_limit_grp,
	count(distinct customerNumber) as customers 
from customers
group by credit_limit_grp;