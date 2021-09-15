-- show all tables 
SELECT * FROM wages;
SELECT * FROM rainfall;
SELECT * FROM population;
SELECT * FROM housing;

-- Inner join all tables into new master table 

SELECT  po.county,
		po.year,
		po.totalpopulation,
		po.unincorporatedpop,
		po.incorporatedpop,
        w.average_yearly_wage,
		h.lowtiermedianhomevalue,
		h.hightiermedianhomevalue,
		h.singlefamilymedianhomevalue,
		r.value_inches
		
INTO master_data
FROM population AS po
    INNER JOIN wages AS w
        ON (po.county = w.county)AND(po.year = w.year)
    INNER JOIN housing AS h
        ON (po.county = h.county)AND(po.year = h.year)
	INNER JOIN rainfall AS r
		ON (po.county = r.county)AND(po.year = r.year);
		
Select * FROM master_data;