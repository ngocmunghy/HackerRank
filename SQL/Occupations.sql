SELECT 
MIN(CASE WHEN OCCUPATION = 'DOCTOR'      THEN NAME ELSE NULL END) ,
MIN(CASE WHEN OCCUPATION = 'PROFESSOR'   THEN NAME ELSE NULL END) ,
MIN(CASE WHEN OCCUPATION = 'SINGER'      THEN NAME ELSE NULL END) ,
MIN(CASE WHEN OCCUPATION = 'ACTOR'       THEN NAME ELSE NULL END)
FROM
(SELECT OCCUPATION, NAME, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS OCCUS
FROM OCCUPATIONS) AS T
GROUP BY OCCUS
