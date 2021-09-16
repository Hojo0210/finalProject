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
		r.value_inches,
		c.murder,
		c.rape,
		c.robbery,
		c.Aggravated_assault,
		c.Burglary,
		c.Larceny,
		c.Motor_vehicle_theft,
		c.Index_per_100k,
		e.Employment,
		e.Unemployment,
		e.Labor_force,
		e.Unemployment_rate


		
INTO master_data
FROM population AS po
    INNER JOIN wages AS w
        ON ((po.county = w.county)AND(po.year = w.year))
    INNER JOIN housing AS h
        ON ((po.county = h.county)AND(po.year = h.year))
	INNER JOIN rainfall AS r
		ON ((po.county = r.county)AND(po.year = r.year))
	INNER JOIN Crime as c
		ON ((po.county = c.county)AND(po.year = c.year))
	INNER JOIN Employment as e
		ON ((po.county = e.county)AND(po.year = e.year))
Select * FROM master_data;