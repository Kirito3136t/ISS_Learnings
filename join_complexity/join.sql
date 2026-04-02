-- basic join 
SELECT * 
FROM trades
JOIN users
ON trades.user_id = users.user_id;

-- to find top 3 countries having highest oders placed
SELECT city, count(*) as cnt
FROM trades as t
JOIN users as u
on t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY cnt desc
limit 3;

-- Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
SELECT 
p.page_id
FROM pages as p
LEFT JOIN page_likes as l
ON p.page_id = l.page_id
where l.page_id is NULL;