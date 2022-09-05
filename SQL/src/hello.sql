-- SELECT descCountry, COUNT(*) AS count
-- FROM tb_players
-- WHERE dtBirth IS NOT NULL
-- GROUP BY 1

-- SELECT idPlayer, descCountry,
--         (CASE WHEN descCountry = "br" THEN "brasileiro"
--             ELSE "não é brasileiro"
--         END) AS nacionalidade
-- FROM tb_players

-- SELECT descCountry,
--         (CASE WHEN descCountry = "br" THEN "brasileiro"
--             ELSE "não é brasileiro"
--         END) AS nacionalidade, COUNT (*) AS contagem
-- FROM tb_players
-- GROUP BY descCountry, nacionalidade

-- SELECT round(avg(product_weight_g), 2) AS media
-- FROM tb_products

-- SELECT  count(1) as qtd_linhas,
--         count( product_category_name) as qtd_categorias, -- conta linhas nao nulas no campo categoria
--         count( distinct product_category_name) as qtd_categorias_dstc, -- conta linhas distintas para o campo categoria
--         max( product_photos_qty ) as max_photo_qty, -- maior valor do campo quantidade de fotos
--         min( product_photos_qty ) as min_photo_qty, -- menor valor do campo quantidade de fotos
--         round(avg( product_photos_qty ) ,2 )as avg_photo_qty , -- valor médio do campo quantidade de fotos
--         sum( product_photos_qty ) as sum_photo_qty, -- soma total dos valores do campo quantidade de fotos
--         round(sum( product_photos_qty ) / count( product_photos_qty ),2) as avg_unha_photo_qty -- divisao entre soma de valores e contagem nao nula de qtde fotos
-- FROM tb_products

-- SELECT product_category_name, COUNT(*) AS contagem
-- FROM tb_products
-- GROUP BY 1
-- ORDER BY 2 DESC

-- SELECT product_category_name, COUNT(*) AS contagem
-- FROM tb_products
-- GROUP BY 1
-- HAVING COUNT(*) > 500
-- ORDER BY 2 DESC

-- SELECT
--             product_category_name,
--               count(1) as qtd_linhas,
--               count( product_category_name) as qtd_categorias, -- conta linhas nao nulas no campo categoria
--               count( distinct product_category_name) as qtd_categorias_dstc, -- conta linhas distintas para o campo categoria
--               max( product_photos_qty ) as max_photo_qty, -- maior valor do campo quantidade de fotos
--               min( product_photos_qty ) as min_photo_qty, -- menor valor do campo quantidade de fotos
--               round(avg( product_photos_qty ) ,2 )as avg_photo_qty , -- valor médio do campo quantidade de fotos
--               sum( product_photos_qty ) as sum_photo_qty, -- soma total dos valores do campo quantidade de fotos
--               round(sum( product_photos_qty ) / count( product_photos_qty ),2) as avg_unha_photo_qty -- divisao entre soma de valores e contagem nao nula de qtde fotos
-- FROM tb_products
-- WHERE product_category_name IS NOT NULL
-- GROUP BY product_category_name
-- HAVING COUNT(1) > 50
-- ORDER BY 2

-- SELECT product_category_name, 
--     IFNULL(product_category_name,'NÃO EXISTE') AS PRODUTOS_INEXISTENTES,
--     COALESCE(product_category_name = 'perfumaria', 'NÃO É PERFUMARIA') AS PARFUM
-- FROM tb_products

-- SELECT A.order_id
-- FROM tb_orders AS A INNER JOIN tb_customers AS B ON A.customer_id = B.customer_id

-- SELECT A.order_id
-- FROM tb_orders AS A LEFT JOIN tb_customers AS B ON A.customer_id = B.customer_id

-- SELECT tb_customers.*
-- FROM tb_orders LEFT JOIN tb_customers ON tb_orders.customer_id = tb_customers.customer_id
-- WHERE customer_city LIKE 'sao%'

-- SELECT tb_customers.*, COUNT(*)
-- FROM tb_orders LEFT JOIN tb_customers ON tb_orders.customer_id = tb_customers.customer_id
-- WHERE customer_city LIKE '%paulo'

-- SELECT tb_customers.*
-- FROM tb_orders LEFT JOIN tb_customers ON tb_orders.customer_id = tb_customers.customer_id
-- WHERE customer_city LIKE '%campo%'

SELECT tb_customers.*
FROM tb_orders LEFT JOIN tb_customers ON tb_orders.customer_id = tb_customers.customer_id
WHERE customer_state LIKE 'sp' AND customer_city like '%campo%'



