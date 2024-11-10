use Customer_DB

select * from 
Final_Data

Create View vw_ChurnData as 
	Select * from Final_Data where Customer_Status In ('Churned','Stayed')


Create View vw_JoinData as 
	Select * from Final_Data where Customer_Status like 'Joined'