CREATE TABLE dbo.CDHStaging
(
    ClientKey varchar(50),
    StatusKey int,
    CustomerAge int,
    Gender varchar(1),
    DependentCount int,
    EducationKey int,
    MaritalKey int,
    IncomeCategory varchar(100),
    CategoryKey int,
    MonthsOnBook int,
    TotalRelationshipCount int,
    MonthsInactive12Mon int,
    ContactsCount12Mon int,
    CreditLimit float,
    TotalRevolvingBal int,
    AvgOpenToBuy float,
    TotalTransAmt int,
    TotalTransCt int,
    AvgUtilization float
)
GO