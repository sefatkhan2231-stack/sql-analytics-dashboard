### Initial Data Quality Evaluation



- Data Set size: 9,994 rows and 21 columns.



- Missing values: No missing values were found by means of a Pandas check.



- rows: There were not any exact duplicate rows.



- Date validation: No invalid order or ship date was found by means of a Pandas check.



- Numeric validation: There were no negative sales values, quantities or discounts outside the 0 to 1 range found by means of a Pandas check.



- Loss-making transaction: 1,871 rows ( 18.72% of all rows) have profit.



- Order structure: Orders can have multiple product lines so order counts must use unique order IDs as a basis instead of row counts.



Negative profit transactions will be retained except upon further checks indicating a data quality issue. Identifier uniqueness and postal-code formatting will be further examined separately.



### Monthly Revenue and Profit Analysis



The monthly sales analysis revealed changes in revenue between the years 2014 to 2017. November 2017 had revenue of $118,447.83 while February 2014 had the revenue of $4,519.89.



The largest increase in revenue was observed in March 2014 up by 1,132.13% following a low-revenue February. The largest drop was observed in January 2016 down by 75.25% compared to December 2015. These percentage changes should be considered relative to the values in the revenue column.



Revenue was relatively strong in September and November in years which may suggest a pattern warranting further study. Profitability varied independently to revenue: March 2014 had sales of $55,691.01 but only $498.73 in profit while July 2014 posted a loss of $841.48.



These results highlight the importance of considering revenue, profit and order volume rather than sales volume.



### Product Category Performance Analysis



Technology had sales of $836,154.03 and the highest total profit of $145,454.95 with a profit margin of 17.40%. Office Supplies also showed profitability with $122,490.80 in profit and a 17.04% margin.



On the hand Furniture had sales of $741,999.80 but only $18,451.27 in profit giving a 2.49% margin. Even though it had sales Furniture was less profitable than the two categories.



These results underline a need for a more in-depth analysis of Furniture sub‑categories, discount patterns, and product‑level profitability to gain further insight into the causes behind the disparity in margins.



### Sub-Category Profitability Analysis



The sub‑category analysis identified Tables was the loss‑making sub-category with a loss of $17,725.48 on sales of $206,965.54 giving a reported profit margin of about -9%. Bookcases and Supplies also had losses of $3,472.56 and $1,189.10 respectively.



In contrast Copiers had the category profit at $55,617.82, followed by Phones at $44,515.73 and Accessories at $41,936.64. Machines need further study due to an average discount of 30.61% but their profit margin was 2%.



These findings highlight the variability of sub‑category profitability and suggest further scrutiny of product‑level losses, discount and profitability patterns, and shipping or cost issues. The overall analysis identifies areas for further investigation, though it does not identify any causal factors.



### Discount and Profitability Analysis



The discount‑band analysis highlighted a relationship between discount levels and lower profitability within the dataset. Transactions with no discount made $320,987.60 in profit with a 29.51% profit margin. In contrast the group with than 30% discount had a loss of $125,006.78 and a negative profit margin of 48.16%.



Also 97.77% of product rows in the than 30% discount group had profit compared with 0% in the no‑discount group. The 21‑30% discount group also had profitability with margin of -10.05%.



These results indicate the importance of investigating high‑discount transactions, though the analysis highlights a correlation rather than a causal factor.



Product mix, costs, and other factors could affect profitability, so further investigation within sub‑categories is required before any changes to discount policies can be suggested.



### Discount-Level Analysis Within Selected Sub-Categories



A sub‑category‑level analysis found profitability patterns for Binders, Machines and Tables.



Binders had a profit margin of 48.04% without discounts. 34.43% In the 11‑20% discount range. The margin was -106.56% for discounts above 30%.



Machines had a drop in reported profit margin from 38.20% without discounts to 13.10% in the 11‑20% range and then to -40.89% above 30%. Tables had profitability at discount levels: their margin dropped from 18.55% without discounts to -0.67% in the 11‑20% range and then to -42.14%, above 30%.



These findings highlight the need to look further in high discount Binders and Machines and Tables at discount levels, though this analysis highlights a correlation between discount bands and profitability, rather than a causal factor.



For the GBC DocuBind P400 and GBC ProClick 150 products, transactions with discounts above 30% were linked to losses while the observed transactions in the lower-discount ranges stayed profitable. The VeloBinder had losses in all four transactions. No lower-discount comparison was available. These findings highlight the need to examine high discount transactions; they do not prove that discounts caused the losses.



High discount transactions above 30% were linked to losses for products. Some products remained profitable overall despite these losses while others were unprofitable in all transactions. This suggests the potential for discount controls and tracking of product-level profitability would be useful, despite further study needed to differentiate between discount and pricing/cost effects.



During the product-level analysis I found product IDs that were associated with product names and product names associated with IDs. I checked the issue against transaction records. I did not assume either field uniquely identified a product. Product-level results are therefore viewed with caution.



### Product-Level Discount Profitability Analysis



An analysis of three binding-system products found a link between discounts and negative profitability. Transactions with 0% and 1-20% discounts had profit margins of 33-50% but transactions with than 30% discounts had negative margins from -76% to -140%.



The GBC DocuBind P400 had the loss in the discount group with $4,899.56 in sales and a loss of $6,859.39 across three transactions. The GBC Ibimaster 500 and DocuBind TL300 also had losses in their discount groups.



These findings highlight the need to examine high discount transactions; they do not prove that discounts caused the losses.



In the Superstore dataset product groups with discounts over 20% show profitability than groups sold without discounts or with 1-20% discounts. The pattern holds for the three transaction groups. In that group all 152 groups in the over 30% discount band had profit. These findings suggest a review of discount policies. The analysis does not prove that discounts are the cause.



### Product-Level Discount Analysis: GBC DocuBind P400



An analysis of six transactions for the GBC DocuBind P400 showed a difference in profitability between discount groups. The three transactions with 30% or less discount made $4,981.22 in profit on $13,065.50 in sales a 38.13% margin. The three transactions with than 30% discount had a loss of $55,691.01 but only $0__0__4,899.56 in sales, a -140.00% margin.



This pattern highlights the need to examine high discount transactions; they do not prove that discounts caused the losses.



### Finding: High Discounts Are Associated With Binders Losses



An analysis of 1,523 Binder transactions found a difference in profitability between transactions with than 30% discount and those with 30% or less. The lower discount group made $55,691.01 but only $1__1__167,272.12 in sales, a 41.09% margin. The high discount group made a loss of $55,691.01 but only $2__2__36,140.61 in sales a -106.56% margin.



The high discount groups profit and negative profit per unit highlight the need to examine losses, discount policies and costs and order details before suggesting changes. This comparison highlights a correlation, not proof that discounts alone caused the losses.



### Subcategory-Level Discount and Profitability Analysis



An analysis of sales transactions across product subcategories found differences in profitability between discount transactions (more than 30%) and transactions with 30% or less discount. Binders had a discount loss of $55,691.01 but only $3__3__29,881.39 and Tables at $27,295.90. Appliances had the discount margin at -255.12% though its high discount sales volume was small.



The pattern was not the same. Copiers stayed profitable in the high discount group making $2,182.98, in profit with a 12.90% margin. These findings suggest that discount and pricing policies should be scrutinized at the product or subcategory level rather than assuming the same strategy applies for all products.



The analysis is a study of transaction details, costs and product mix. We need this information before we can link losses directly to discounts or suggest changes to policy.



### High-Discount Product Profitability Analysis



A transaction‑level analysis of two Technology products revealed that heavy discounting can result in losses. For the Cubify CubeX 3D Printer Double Head Print, two transactions with a 70% discount resulted in a loss of $55,691.01 but only $4__4__1,320 lost per unit. In contrast a single transaction with a 20% discount produced a profit of $360.



The Lexmark MX611dhe Monochrome Laser Printer behaved similarly. A transaction with a 10% discount earned $680. Transactions with 40% and 70% discounts resulted in losses. These findings indicate that discounts on transactions must be examined carefully. Because the study examined a few transactions, the results suggest a connection but do not prove that discounts alone caused the losses.



### Technology Machines: Discount and Profitability Analysis



An analysis of 115 Technology‑Machines transactions showed a difference in profit between discount groups. Transactions with discounts of 30% or less produced a profit of $55,691.01 but only $5__5__116,155.83 giving a profit margin of 28.64%. In contrast, transactions with discounts, over 30% generated sales of $55,691.01 but only $6__6__29,881.39 resulting in a margin of -40.89%.



The high‑discount group accounted for 38.6% of sales yet produced no profit demonstrating that it is essential to examine profitability as a function of revenue when evaluating discount policies.



### Product‑Level Discount Analysis: Technology Machines



A product‑level review identified three products that incurred losses when discounts exceeded 30%. The Cubify CubeX Double Head Printer lost $55,691.01 but only $7__7__5,269.97 and the Cubify CubeX Triple Head Printer lost $3,839.99.



For the Double Head and Lexmark models lower‑discount transactions yielded profits with margins of 7.50% and 22.22%. However, the high‑discount groups of the Double Head and Lexmark models suffered margins of -146.67% and -38.27%. The Triple Head model had one high‑discount transaction so more data is required to draw firm conclusions.
