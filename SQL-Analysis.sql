
select * from Customers

select count(*) from Customers

-----------------------------Gender count------------------
select Gender,COUNT(*) as totalcount from Customers group by Gender;

select COUNT(*) as totalcount from Customers where  Customer_Status='Churned'

select Gender,COUNT(*) as totalcount from Customers where Gender='Male' and Customer_Status='Churned'
group by gender;

select Gender,COUNT(*) as totalcount from Customers where Gender='Female' and Customer_Status='Churned'
group by gender;

select COUNT(*) as totalcount from Customers where  Customer_Status='Churned' and Premium_Support='Yes'

---------------------State-------------------

select State,COUNT(*) as totalcount from Customers group by state

select State,COUNT(*) as totalcount from Customers where  Customer_Status='Churned' 
group by state order by totalcount desc

select State,COUNT(*) as totalcount from Customers where  Customer_Status='Stayed' 
group by state order by totalcount desc

select * from Customers where Churn_Category is NULL

------------------- Deal, Tenure, Revenue ------------------------

select State,COUNT(*) as totalcount from Customers where  Customer_Status='Churned' 
group by state order by totalcount desc

select Customer_Status,COUNT(*) as totalcount from Customers 
group by Customer_Status

select Tenure_in_Months,COUNT(*) as totalcount from Customers where  Customer_Status='Churned' 
group by Tenure_in_Months
order by Tenure_in_Months


select Value_Deal,AVG(Total_Revenue) as Avg_revenue ,COUNT(*) as totalcount from Customers 
where  Customer_Status='Churned' 
group by Value_Deal order by totalcount desc

select Value_Deal,AVG(Total_Revenue) as Avg_revenue ,COUNT(*) as totalcount from Customers 
where  Customer_Status='Stayed' 
group by Value_Deal order by totalcount desc

select Value_Deal,AVG(Total_Revenue) as Avg_revenue ,COUNT(*) as totalcount from Customers 
group by Value_Deal order by totalcount desc

-- To identify what issues might be there in which service for churning in each state
select State,Internet_Type,COUNT(*) as totalcount from Customers where  Customer_Status='Churned' 
group by State,Internet_Type
order by State, Internet_Type

---------------Contract--------------------------

select Contract,COUNT(*) as totalcount from Customers 
group by Contract

select Contract,COUNT(*) as totalcount from Customers where Customer_Status='Churned'
group by Contract


select AVG(age) from Customers


----------------creating view for PowerBI-------------------------
create view churn_view as
	select * from Prod where Customer_Status in ('Churned', 'Stayed');

create view joined_view as
	select * from Prod where Customer_Status ='Joined';


select count(*) from joined_view
select count(*) from churn_view
