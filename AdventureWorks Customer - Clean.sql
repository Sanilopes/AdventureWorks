--Cleaning Customer Data-- 

SELECT DC.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,DC.[FirstName]
      --,[MiddleName]
      ,DC.[LastName]
	  ,DC.FirstName + ' ' + DC.LastName as [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,Case DC.[Gender] 
		When 'M' then 'Male'
		When 'F' then 'Female'
	   End Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,DC.[DateFirstPurchase]
	  ,DG.City as [Customer City]
      --,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] DC
  Left Join [AdventureWorksDW2022].[dbo].[DimGeography] DG
	on DG.GeographyKey = DC.GeographyKey
  Order by CustomerKey ASC

  