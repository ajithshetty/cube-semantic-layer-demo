SELECT
  "products".name "products__name",
  count("products".id) "products__count"
FROM
  public.products AS "products"
GROUP BY
  1
HAVING
  (count("products".id) <= $ 1)
ORDER BY
  2 DESC
LIMIT
  10000