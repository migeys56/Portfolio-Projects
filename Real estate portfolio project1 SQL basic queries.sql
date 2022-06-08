/* I've built two tables based off my wife's current real estate sales for 2022 so far*/

Select * from VSales_22

Select * from SalesProductivity
--I was able to update the client name with Sales_id
Update VSales_22
Set Client_name = 'Sergio'
Where Sales_id = 1;
--I'm able to do a full out join between the two tables

SELECT * FROM VSales_22
Full outer JOIN SalesProductivity
ON VSales_22.Sales_id = SalesProductivity.Sales_id;

--I was able to perform a left join and right join along with an inner join

Select * 
From VSales_22
Right join SalesProductivity
on VSales_22.Sales_id = SalesProductivity.Sales_id

Select * 
From VSales_22
Left join SalesProductivity
on VSales_22.Sales_id = SalesProductivity.Sales_id

Select * 
From VSales_22
Inner join SalesProductivity
on VSales_22.Sales_id = SalesProductivity.Sales_id

--Determine the total number of Sales for the year 2022

Select Sum(Sales_price)
From VSales_22;

--Determine the number of Sales made from working with Sellers vs working with buyers

Select Count(Buyer_Seller), Buyer_Seller
From VSales_22
Group by Buyer_Seller

--More work has come from working with Sellers than buyers
--Show the number of sales made from working with sellers along with the name of the sellers

Select Sales_price, Buyer_Seller, Client_name
From VSales_22
Where Buyer_Seller = 'Seller'
Order by Sales_price desc;

--Determine the total number of sales made from working with sellers

Select Sum(Sales_price)
From VSales_22
Where Buyer_Seller = 'Seller'

--Determine the avg, max, min of sale price of a property

Select AvG(Sales_price) as AVGSale, Max(Sales_price) as MaxSale, Min(Sales_price) as MinSale
From VSales_22

Select * From VSales_22;
--I changed the names of the clients to keep their information confidential
Update VSales_22
Set Client_name = 'client8'
where Sales_id =8

/* The avg sales price was 291200. Determine if the sale price was above average or below average. If above average then show as above, and if below then show as below
*/

Select Sales_price, Buyer_Seller, Client_name,
Case
When Sales_price > 291200 then 'Above'
Else 'Below'
End
From VSales_22
Order by Sales_price DESC;

/* Based off working with a buyer, you suspect that in 3-5 years they will sell their house again and they will use you as the listing agent to help sell their house
*/

Select *,
Case
When Buyer_Seller = 'Buyer' then 'Refferral'
Else 'No Lead'
End as 'Future Business'
From VSales_22
Order by Sales_price

/* I was able to perform an aggregate function of the Sales_id and the aggregate function of Sales_price grouping by Buyer_Seller
*/

Select Count(Sales_id), Buyer_Seller, AVG(Sales_price)
From VSales_22
Group by Buyer_Seller

