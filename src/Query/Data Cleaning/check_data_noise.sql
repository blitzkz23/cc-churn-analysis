-- Check for null value from all fields
SELECT *
FROM dbo.CDHStaging
WHERE 
    ClientKey IS NULL
    OR StatusKey IS NULL
    OR CustomerAge IS NULL
    OR Gender IS NULL
    OR DependentCount IS NULL
    OR EducationKey IS NULL
    OR MaritalKey IS NULL
    OR IncomeCategory IS NULL
    OR CategoryKey IS NULL
    OR MonthsOnBook IS NULL
    OR TotalRelationshipCount IS NULL
    OR MonthsInactive12Mon IS NULL
    OR ContactsCount12Mon IS NULL
    OR CreditLimit IS NULL
    OR TotalRevolvingBal IS NULL
    OR AvgOpenToBuy IS NULL
    OR TotalTransAmt IS NULL
    OR TotalTransCt IS NULL
    OR AvgUtilization IS NULL;

-- Check if there's duplicate data based on primary key
SELECT 
    ClientKey,
    COUNT(ClientKey)
FROM dbo.CDHStaging
GROUP BY ClientKey
HAVING COUNT(ClientKey) > 1;