-- Check the card category distribution of the customer
SELECT 
	CardCategory,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
INNER JOIN dbo.DimCategory as dc2
	ON dc2.CategoryKey = dc.CategoryKey
GROUP BY CardCategory
ORDER BY CustomerCount DESC;

-- Check the count of customer by their status and also the percentage
SELECT 
    CustomerStatus,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
GROUP BY CustomerStatus;

-- Check the age group distribution of the customer
SELECT 
	CASE 
		WHEN CustomerAge BETWEEN 20 AND 29 THEN '20s'
		WHEN CustomerAge BETWEEN 30 AND 39 THEN '30s'
		WHEN CustomerAge BETWEEN 40 AND 49 THEN '40s'
		WHEN CustomerAge BETWEEN 50 AND 59 THEN '50s'
		WHEN CustomerAge BETWEEN 60 AND 69 THEN '60s'
		WHEN CustomerAge BETWEEN 70 AND 79 THEN '70s'
		ELSE '80s+' 
	END AS AgeRange,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
GROUP BY 
	CASE 
		WHEN CustomerAge BETWEEN 20 AND 29 THEN '20s'
		WHEN CustomerAge BETWEEN 30 AND 39 THEN '30s'
		WHEN CustomerAge BETWEEN 40 AND 49 THEN '40s'
		WHEN CustomerAge BETWEEN 50 AND 59 THEN '50s'
		WHEN CustomerAge BETWEEN 60 AND 69 THEN '60s'
		WHEN CustomerAge BETWEEN 70 AND 79 THEN '70s'
		ELSE '80s+' 
	END
ORDER BY AgeRange ASC

-- Check the marital status distribution of the customer
SELECT 
	MaritalStatus,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
INNER JOIN dbo.DimMaritalStatus as dm
	ON dm.MaritalKey = dc.MaritalKey
GROUP BY MaritalStatus
ORDER BY CustomerCount DESC

-- Check the education level distribution of the customer
SELECT 
	EducationLevel,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
INNER JOIN dbo.DimEducation as de
	ON de.EducationKey = dc.EducationKey
GROUP BY EducationLevel
ORDER BY CustomerCount DESC

-- Check the income category distribution of the customer
SELECT 
	IncomeCategory,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
GROUP BY IncomeCategory
ORDER BY CustomerCount DESC