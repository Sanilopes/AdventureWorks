--Cleaning Product Data--

SELECT
	   DP.[ProductKey]
      ,DP.[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,DP.[EnglishProductName] as [Product Name]
	  ,DPS.EnglishProductSubcategoryName as [Sub Category]
	  ,DPC.EnglishProductCategoryName as [Product Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,DP.[Color] [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,DP.[Size] [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,DP.[ProductLine] [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,DP.[ModelName] [Product Model Name]
      --,[LargePhoto]
      ,DP.[EnglishDescription] [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (DP.Status, 'Outdated') [Product Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] DP
  Left Join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] DPS
		on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
  Left Join [AdventureWorksDW2022].[dbo].[DimProductCategory] DPC
		on DPS.ProductCategoryKey = DPC.ProductCategoryKey
  Order by
	DP.ProductKey ASC

