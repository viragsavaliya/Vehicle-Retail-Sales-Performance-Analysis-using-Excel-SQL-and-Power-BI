with cte as
(
select
customernumber,
paymentdate,
amount,

lag(amount) over (partition by customernumber order by paymentdate) as prev_payment

from payments
)

select *, amount - prev_payment as diff
from cte