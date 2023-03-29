CREATE TABLE dbo.DimCategory
(
	CategoryKey int PRIMARY KEY NOT NULL,
	CardCategory varchar(25) NOT NULL
)
GO

CREATE TABLE dbo.DimEducation
(
	EducationKey int PRIMARY KEY NOT NULL,
	EducationLevel varchar(50) NOT NULL
)
GO

CREATE TABLE dbo.DimMaritalStatus
(
	MaritalKey int PRIMARY KEY NOT NULL,
	MaritalStatus varchar(25) NOT NULL
)
GO

CREATE TABLE dbo.DimCustomerStatus
(
	StatusKey int PRIMARY KEY NOT NULL,
	CustomerStatus varchar(40) NOT NULL
)
GO

CREATE TABLE dbo.DimClient (
    ClientKey varchar(50) PRIMARY KEY,
    StatusKey int,
    EducationKey int,
    MaritalKey int,
    CategoryKey int,
    CustomerAge int,
    Gender varchar(1),
    DependentCount int,
    IncomeCategory varchar(100),
    FOREIGN KEY (StatusKey) REFERENCES dbo.DimCustomerStatus(StatusKey),
    FOREIGN KEY (EducationKey) REFERENCES dbo.DimEducation(EducationKey),
    FOREIGN KEY (MaritalKey) REFERENCES dbo.DimMaritalStatus(MaritalKey),
    FOREIGN KEY (CategoryKey) REFERENCES dbo.DimCategory(CategoryKey)
)
GO

