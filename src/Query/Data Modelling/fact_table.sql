CREATE TABLE dbo.FactTransaction
(
    ClientKey varchar(50) PRIMARY KEY,
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