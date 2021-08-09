--By Month
select DATENAME(mm, [Date]) as [Month], count(*) as NoOfBookBagRequests FROM [BookBagRequest]
group by DATENAME(mm, [Date]) order by [Month]
--By Pickup Branch 
select [Location].LocationName as [Pickup Branch], count(*) as NoOfBookBagRequests FROM [BookBagRequest]
inner join [Location] on [BookBagRequest].LocationID = [Location].LocationID
group by [Location].LocationName order by [Pickup Branch]


