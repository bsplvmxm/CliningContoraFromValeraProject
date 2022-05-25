﻿CREATE PROCEDURE [dbo].[GetEmployeeSchedule]
@MinDate nvarchar (10),
@MaxDate nvarchar (10)
AS
BEGIN
	  SELECT E.Id, E.FirstName, E.LastName, WT.[Date], WT.StartTime, WT.FinishTime FROM [dbo].[Employee] AS E
	  join dbo.WorkTime as WT on E.Id = WT.EmployeeId
      WHERE E.IsDeleted = 0 AND WT.[Date] >= @MinDate AND WT.[Date] <= @MaxDate
END
