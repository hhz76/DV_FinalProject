CREATE TABLE m_births_max_race AS
(SELECT a.zip_code, a.variable, a.value FROM
	(SELECT zip_code, value, variable
	FROM m_births
	WHERE variable LIKE 'race_%') a
JOIN
	(SELECT zip_code, MAX(value) AS highest_count
	FROM m_births
	WHERE variable LIKE 'race_%'
	GROUP BY zip_code) b
ON a.zip_code = b.zip_code
AND a.value = b.highest_count)