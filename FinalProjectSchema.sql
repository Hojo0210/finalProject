FLCensusCounts
-
County varchar pk
CountyWidePop int
UnincorpPop int
U%ofTotal int
IncorpPop int
I%ofTotal int
Year int pk


RainfallFLCounties00-21
-
Date int
County varchar pk
value int
anaomly int

CountyUnemployment
-
County varchar pk
year int pk
employment int
employYchange int
LaborForce int
LaborForceYchange int
Unemployment int
unemploymentYchange int
UnemploymentRate int
UnemploymentRateYchange int

EmploymentData
-
2011 int FK >- CountyUnemployment.year
2012 int FK >- CountyUnemployment.year
2013 int FK >- CountyUnemployment.year
2014 int FK >- CountyUnemployment.year
2015 int FK >- CountyUnemployment.year
2016 int FK >- CountyUnemployment.year
2017 int FK >- CountyUnemployment.year
2018 int FK >- CountyUnemployment.year
2019 int FK >- CountyUnemployment.year
2020 int FK >- CountyUnemployment.year
2021 int FK >- CountyUnemployment.year
County varchar pk FK >- HomeValuesByZip.RegionName

WageDataByCounty
-
County varchar pk FK >- FLCensusCounts.Year
2011 int FK >- FLCensusCounts.Year
2012 int FK >- FLCensusCounts.Year
2013 int FK >- FLCensusCounts.Year
2014 int FK >- FLCensusCounts.Year
2015 int FK >- FLCensusCounts.Year
2016 int FK >- FLCensusCounts.Year
2017 int FK >- FLCensusCounts.Year
2018 int FK >- FLCensusCounts.Year
2019 int FK >- FLCensusCounts.Year
2020 int FK >- FLCensusCounts.Year
2021 int

HomeValuesByZip
-
Home int
SizeRank int
RegionName int pk
RegionType varchar
StateName varchar
State varchar
City varchar
Metro varchar
CountyName varchar
...MM/DD/YYYY int

FLAvgHomeValuesZillow
-
RegionID int
SizeRank int
RegionName varchar pk FK >- EmploymentData.County
RegionType varchar
StateName varchar
State varchar
Metro varchar
StateCodeFIPS int
MunicipalCodeFIPS int
...MM/DD/YYY int
