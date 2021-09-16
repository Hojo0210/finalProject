-- create tables to hold data 
CREATE TABLE Population (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
Totalpopulation INT,
UnincorporatedPop INT,
IncorporatedPop INT,
PRIMARY KEY (County,Year));

CREATE TABLE Housing (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
LowTierMedianHomeValue INT,
HighTierMedianHomeValue INT,
SingleFamilyMedianHomeValue INT,
FOREIGN KEY (County, YEAR) REFERENCES Population (County, YEAR),
PRIMARY KEY (County,Year));
	
CREATE TABLE Rainfall (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
Value_inches DECIMAL,
FOREIGN KEY (County, YEAR) REFERENCES Population (County, YEAR),
PRIMARY KEY (County,Year));

CREATE TABLE Wages (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
Average_yearly_wage INT,
FOREIGN KEY (County, YEAR) REFERENCES Population (County, YEAR),
PRIMARY KEY (County,Year));

CREATE TABLE Employment (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
Employment INT,
Labor_force INT,
Unemployment INT,
Unemployment_rate DECIMAL,
FOREIGN KEY (County, YEAR) REFERENCES Population (County, YEAR),
PRIMARY KEY (County,Year));

CREATE TABLE Crime (
County VARCHAR NOT NULL,
Year INT NOT NULL,	
Murder INT,
Rape INT,
Robbery INT,
Aggravated_assault INT,
Burglary INT,
Larceny INT,
Motor_vehicle_theft INT,
Index_per_100k INT,
FOREIGN KEY (County, YEAR) REFERENCES Population (County, YEAR),
PRIMARY KEY (County,Year));