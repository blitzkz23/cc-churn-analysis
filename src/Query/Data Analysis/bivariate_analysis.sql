-- Check the correlation between attrited customer and category of their credit card
SELECT 
    CustomerStatus,
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
GROUP BY CustomerStatus, CardCategory
ORDER BY CustomerCount DESC, CardCategory DESC, CustomerStatus;

-- Check the correlation between attrited customer and their marital status
SELECT 
    CustomerStatus,
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
GROUP BY CustomerStatus, MaritalStatus
ORDER BY CustomerCount DESC

-- Check the correlation between attrited customer and their education level
SELECT 
    CustomerStatus,
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
GROUP BY CustomerStatus, EducationLevel
ORDER BY CustomerCount DESC

-- Check the correlation between attrited customer and their income category
SELECT 
    CustomerStatus,
	IncomeCategory,
    COUNT(*) as CustomerCount,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as CountPercentage
FROM dbo.FactTransaction as ft
INNER JOIN dbo.DimClient as dc 
	ON ft.ClientKey = dc.ClientKey
INNER JOIN dbo.DimCustomerStatus as cs 
	ON dc.StatusKey = cs.StatusKey
GROUP BY CustomerStatus, IncomeCategory
ORDER BY CustomerCount DESC

-- Check the correlation between income category and credit card category they chose
SELECT 
	IncomeCategory,
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
GROUP BY IncomeCategory, CardCategory
ORDER BY CustomerCount DESC
