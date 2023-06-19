
create table sales3 (CustID int, Transaction_Date Date)
insert into sales3(CustID, Transaction_Date)
values (1111, '2022-12-01'), (1111,'2022-10-01'),(1111,'2022-09-01'),
(1111,'2023-01-01'),(2222,'2022-01-01'),(2222,'2022-05-01'),(2222, '2022-04-01');

select sales3.CustID, format(sales3.Transaction_Date, 'yyyyMM') as trans_date,
ABS(datediff(month,min(sales3.Transaction_Date) over (partition by sales3.CustID),sales3.Transaction_Date))
as MonthDifference
from sales3;