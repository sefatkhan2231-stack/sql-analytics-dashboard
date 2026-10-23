### Initial Data Quality Assessment

- Dataset size: 9,994 rows and 21 columns.

- Missing values: No missing values found using the Pandas check.

- rows: Zero exact duplicate rows found.

- Date validation: No invalid order or ship dates found.

- Numeric validation: No negative sales values, quantities or discounts outside the range of 0 to 1 found.

- Loss-making transaction: 1,871 rows ( 18.72% of all rows) have profit.

- Order structure: Orders can have multiple product lines so order counts must use unique order IDs instead of row counts.

Negative profit transactions will stay unless further checks show a data quality problem. Identifier uniqueness and postal-code formatting will be checked separately.

### Monthly Revenue and Profit Analysis

Monthly sales analysis showed changes in revenue from 2014 to 2017. November 2017 had revenue of $118,447.83 while February 2014 had the revenue of $4,519.89.

The biggest jump in revenue happened in March 2014 up by 1,132.13% after a low-revenue February. The biggest fall happened in January 2016 down by 75.25% compared with December 2015. These percentage changes should be considered with the revenue numbers.

Revenue was strong in September and November in years which may point to a pattern that needs more study. Profitability varied independently from revenue: March 2014 had sales of $55,691.01 but only $498.73 in profit while July 2014 posted a loss of $841.48.

These results show that it is important to look at revenue, profit and order volume, not sales numbers.

### Product Category Performance Analysis

Technology had sales of $836,154.03 and the highest total profit of $145,454.95 with a profit margin of 17.40%. Office Supplies also showed profitability with $122,490.80 in profit and a 17.04% margin.

On the hand Furniture had sales of $741,999.80 but only $18,451.27 in profit giving a 2.49% margin. Even though it had sales Furniture was less profitable than the two categories.

These results show that looking at category-level revenue is not enough to judge business performance. More study of Furniture sub‑categories, discount patterns and product‑level profitability is needed to find what is causing the margin.

### Sub-Category Profitability Analysis

The sub‑category analysis found that Tables was the loss‑making sub‑category with a loss of $17,725.48 on sales of $206,965.54 giving a reported profit margin of about -9%. Bookcases and Supplies also had losses of $3,472.56 and $1,189.10 respectively.

In contrast Copiers had the category profit at $55,617.82, followed by Phones at $44,515.73 and Accessories at $41,936.64. Machines need study because their average discount was 30.61% but their profit margin was 2%.

These findings show that profitability varies a lot across sub‑categories. Recommended steps include looking at product‑level losses, discount and profitability patterns and shipping or cost issues. The overall results point to areas to investigate. They do not prove any cause and effect.

### Discount and Profitability Analysis

The discount‑band analysis showed a link between discount levels and lower profitability in the dataset. Transactions with no discount made $320,987.60 in profit with a 29.51% profit margin. In contrast the group with than 30% discount had a loss of $125,006.78 and a negative profit margin of 48.16%.

Also 97.77% of product rows in the than 30% discount group had profit compared with 0% in the no‑discount group. The 21‑30% discount group also had profitability with a margin of -10.05%.

These results show that high‑discount transactions should be checked further. However the results only show a link, not a cause. Product mix, costs and other factors may affect profitability. More study within product sub‑categories is needed before suggesting changes to discount policies.

### Discount-Level Analysis Within Selected Sub-Categories

A sub‑category‑level analysis found profitability patterns for Binders, Machines and Tables.

Binders had a profit margin of 48.04% without discounts. 34.43% In the 11‑20% discount range. The margin was -106.56% for discounts above 30%.

Machines had a drop in reported profit margin from 38.20% without discounts to 13.10% in the 11‑20% range and then to -40.89% above 30%. Tables had profitability at discount levels: their margin dropped from 18.55% without discounts to -0.67% in the 11‑20% range and then to -42.14%, above 30%.

These findings show that high discount Binders and Machines and Tables at discount levels are areas to look into further. The analysis shows a link between discount bands and profitability. This does not say that discounts alone caused the losses.

For the GBC DocuBind P400 and GBC ProClick 150 products, transactions with discounts above 30% were linked to losses while the observed transactions in the lower-discount ranges stayed profitable. The VeloBinder had losses in all four transactions. There was no lower-discount comparison. These findings suggest that high discount transactions should be checked further; they do not prove that discounts caused the losses.

High discount transactions above 30% were linked to losses for products. Some products stayed profitable overall despite these losses while others were unprofitable in all transactions. This suggests that discount controls and tracking product-level profitability could be useful although more study is needed to tell the difference between discount effects and pricing and cost factors.

During product-level analysis I found product IDs that were linked to product names and product names that were linked to IDs. I checked the issue against transaction records. I did not assume either field uniquely identified a product. Product-level results are therefore seen carefully.

### Product-Level Discount Profitability Analysis

An analysis of three binding-system products found a link between discounts and negative profitability. Transactions with 0% and 1-20% discounts had profit margins of 33-50% but transactions with than 30% discounts had negative margins from -76% to -140%.

The GBC DocuBind P400 had the loss in the discount group with $4,899.56 in sales and a loss of $6,859.39 across three transactions. The GBC Ibimaster 500 and DocuBind TL300 also had losses in their discount groups.

These findings suggest that high discount transactions should be checked further. However the results are descriptive not causal. The small number of transactions should be considered before making pricing recommendations.

In the Superstore dataset product groups with discounts over 20% show profitability than groups sold without discounts or with 1-20% discounts. The pattern stays the same when looking at groups with three transactions. In that group all 152 groups in the over 30% discount band had profit. These findings need review of discount policies. The analysis does not prove that discounts are the cause.

### Product-Level Discount Analysis: GBC DocuBind P400

An analysis of six transactions for the GBC DocuBind P400 showed a difference in profitability between discount groups. The three transactions with 30% or less discount made $4,981.22 in profit on $13,065.50 in sales a 38.13% margin. The three transactions with than 30% discount had a loss of $6,859.39 on $4,899.56 in sales, a -140.00% margin.

This pattern shows that high discount P400 transactions are an area to look into further. Because the comparison is based on a number of transactions from dates it shows a link not proof that discounts alone caused the losses. More study of costs order conditions and other products is needed before suggesting a discount limit.

### Finding: High Discounts Are Associated With Binders Losses

An analysis of 1,523 Binder transactions found a difference in profitability between transactions with than 30% discount and those with 30% or less. The lower discount group made $68,732.26 in profit on $167,272.12 in sales, a 41.09% margin. The high discount group made a loss of $38,510.50 on $36,140.61 in sales a -106.56% margin.

The high discount groups profit and negative profit per unit show that it is an area to look into. A good next step is to check product-level losses, discount policies and costs and order details before suggesting changes. This comparison shows a link, not proof that discounts alone caused the losses.

### Subcategory-Level Discount and Profitability Analysis

An analysis of sales transactions across product subcategories found differences in profitability between discount transactions (more than 30%) and transactions with 30% or less discount. Binders had a discount loss of $38,510.50 followed by Machines at $29,881.39 and Tables at $27,295.90. Appliances had the discount margin at -255.12% although its high discount sales volume was small.

The pattern was not the same. Copiers stayed profitable in the high discount group making $2,182.98, in profit with a 12.90% margin. These findings suggest that discount and pricing policies should be checked at the product or subcategory level than assuming the same strategy works for all products.

The analysis is a study of transaction details, costs and product mix. We need this information before we can link losses directly to discounts or suggest changes to policy.

### High-Discount Product Profitability Analysis

A transaction‑level analysis of two Technology products revealed that heavy discounting can cause losses. For the Cubify CubeX 3D Printer Double Head Print, two transactions with a 70% discount resulted in a loss of $9,239.97, which is about $1,320 lost per unit. In contrast a single transaction with a 20% discount produced a profit of $360.

The Lexmark MX611dhe Monochrome Laser Printer behaved similarly. A transaction with a 10% discount earned $680. Transactions with 40% and 70% discounts resulted in losses. These findings indicate that discounts on transactions must be examined carefully. Because the study examined a few transactions the results suggest a connection but do not prove that discounts alone caused the losses.

### Technology Machines: Discount and Profitability Analysis

An analysis of 115 Technology‑Machines transactions showed a difference in profit between discount groups. Transactions with discounts of 30% or less produced a profit of $33,266.15 from sales of $116,155.83 giving a profit margin of 28.64%. In contrast transactions with discounts, over 30% generated sales of $73,082.80. Incurred a loss of $29,881.39 resulting in a margin of -40.89%.

The high‑discount group accounted for 38.6% of sales yet produced no profit. This demonstrates that it is essential to examine profitability as a function of revenue when evaluating discount policies.

### Product‑Level Discount Analysis: Technology Machines

A product‑level review identified three products that incurred losses when discounts exceeded 30%. The Cubify CubeX Double Head Printer lost $9,239.97 the Lexmark MX611dhe Printer lost $5,269.97 and the Cubify CubeX Triple Head Printer lost $3,839.99.

For the Double Head and Lexmark models lower‑discount transactions yielded profits with margins of 7.50% and 22.22%. However the high‑discount groups of the Double Head and Lexmark models suffered margins of -146.67% and -38.27%. The Triple Head model had one high‑discount transaction so more data is required to draw firm conclusions.
