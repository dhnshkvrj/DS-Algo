(
SELECT u.name AS results FROM
Users u JOIN MovieRating r 
ON r.user_id=u.user_id 
GROUP BY u.user_id 
ORDER BY COUNT(rating) DESC, u.name
LIMIT 1
)
UNION ALL
(
    SELECT title AS results FROM 
    Movies m JOIN MovieRating r 
    ON m.movie_id=r.movie_id
    WHERE r.created_at LIKE '2020-02-__'
    GROUP BY m.title
    ORDER BY AVG(r.rating) DESC, m.title
    LIMIT 1
    
)