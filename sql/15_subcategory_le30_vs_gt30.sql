
SELECT
    category,
    sub_category,
    CASE WHEN ROUND(discount::numeric, 2) > 0.30
         THEN 'Above 30%' ELSE '30% or less (incl. 0%)' END AS discount_group,
    COUNT(*)                         AS line_items,
    SUM(quantity)                    AS units_sold,
    ROUND(SUM(sales)::numeric, 2)    AS total_sales,
    ROUND(SUM(profit)::numeric, 2)   AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct,
    ROUND((SUM(profit) / NULLIF(SUM(quantity), 0))::numeric, 2)    AS profit_per_unit,
    ROUND((SUM(sales) / SUM(SUM(sales)) OVER (PARTITION BY category, sub_category) * 100)::numeric, 2)
                                     AS pct_of_subcategory_sales
FROM superstore
GROUP BY
    category,
    sub_category,
    CASE WHEN ROUND(discount::numeric, 2) > 0.30
         THEN 'Above 30%' ELSE '30% or less (incl. 0%)' END
ORDER BY sub_category, discount_group;


SELECT
    sub_category,
    COUNT(*) AS line_items,
    ROUND(AVG(discount)::numeric * 100, 2) AS average_discount_pct,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct
FROM superstore
GROUP BY sub_category
ORDER BY average_discount_pct DESC;
