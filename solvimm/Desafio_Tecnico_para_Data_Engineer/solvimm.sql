/* RESPOSTAS */

/*Quantos filmes estão disponíveis na Amazon? */
SELECT count(product_title) FROM amazon;

/*Quantos filmes estão disponíveis na Netflix? */
SELECT count(ano) FROM netflix;

/* Dos filmes disponíveis na Amazon, quantos % estão disponíveis na Netflix? */
SELECT
   (COUNT(*) / 380524) AS percentual
FROM
   amazon
INNER JOIN
   netflix  ON netflix.filme = amazon.product_title
WHERE
   amazon.product_title = netflix.filme;

/* O quão perto a médias das notas dos filmes disponíveis na Amazon está dos filmes disponíveis na Netflix? */

/* Qual ano de lançamento possui mais filmes na Amazon? */
SELECT review_date,
    COUNT(*) 
    FROM amazon
    WHERE review_date <= '20151231'
    GROUP BY YEAR(review_date)
    ORDER BY COUNT(*) DESC;
    
/*Qual ano de lançamento possui mais filmes na Netflix? */
SELECT ano, COUNT(ano)
FROM netflix
WHERE ano BETWEEN 1900 AND 2005
GROUP BY ano
ORDER BY COUNT(*) DESC;

/*Quais filmes que não estão disponíveis no catálogo da Netflix foram melhor avaliados (notas 4 e 5)? */

/* Quais filmes que não estão disponíveis no catálogo da Amazon foram melhor avaliados (notas 4 e 5)? */
SELECT netflix.filme
FROM amazon, netflix
WHERE amazon.product_title != netflix.filme AND amazon.star_rating >= 4;



    
