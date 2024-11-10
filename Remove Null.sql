
-- Remove null and insert the  new data into Final _Table
Select
Customer_ID,
Gender,
Age,
Under_30,
Senior_Citizen,
Married,
Dependents,
Number_of_Dependents,
Country,
State,
City,
Zip_Code,
Latitude,
Longitude,
Population,
Quarter,
Referred_a_Friend,
Number_of_Referrals,
Tenure_in_Months,
Offer,
Phone_Service,
Avg_Monthly_Long_Distance_Charges,
Multiple_Lines,
Internet_Service,
Internet_Type,
Avg_Monthly_GB_Download,
Online_Backup,
Online_Security,
Device_Protection_Plan,
Premium_Tech_Support,
Streaming_TV,
Streaming_Movies,
Streaming_Music,
Unlimited_Data,
Contract,
Paperless_Billing,
Payment_Method,
Monthly_Charge,
Total_Charges,
Total_Refunds,
Total_Extra_Data_Charges,
Total_Long_Distance_Charges,
Total_Revenue,
Satisfaction_Score,
Customer_Status,
Churn_Label,
Churn_Score,
CLTV,
ISNULL(Churn_Category, 'others') As Churn_Category,
ISNULL(Churn_Reason, 'others') As Churn_Reason

INTO [Customer_DB].[dbo].[Final_Data]
from [Customer_DB].[dbo].[Customer_Data_1]

select * from
Final_Data

select * from
INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'Customer_Data_1'
