select Gender, count(Gender) as Totalcount,
count(gender) * 100.0 / (select count(*) from Customer_Data_1) as Percentage
from Customer_Data_1
group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from Customer_Data_1)  as Percentage
from Customer_Data_1
Group by Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from Customer_Data_1)* 100.0 as RevPercentage
from Customer_Data_1
Group by Customer_Status

SELECT City, Count(City) as TotalCount,
Count(City) * 100.0 / (Select Count(*) from Customer_Data_1)  as Percentage
from Customer_Data_1
Group by City
Order by Percentage desc
