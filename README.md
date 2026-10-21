### Initial Data Quality Assessment

- Dataset size: 9,994 rows and 21 columns.
- Missing values: None detected by the Pandas null check.
- Exact duplicate rows: 0.
- Date validation: No invalid order or ship dates detected.
- Numeric validation: No no-positive sales or quantiles, and no discounts outside the 0-1 range.
- Loss-making transaction: 1,871 rows (approximately 18.72% of all rows) have negative profit.
- Order structure: Orders can contain multiple product lines, so order counts must use distinct order IDs rather row counts.

Negative-profit transactions will be retained unless further investigation establishes a data-quality issue. Identifier uniqueness and postal-code formatting will be verified separately.

### Monthly Revenue and Profit Analysis

Monthly sales analysis revealed substantial fluctuations in revenue throughout the 2014–2017 period. November 2017 recorded the highest monthly revenue at $118,447.83, while February 2014 recorded the lowest at $4,519.89.

The largest month-over-month revenue increase occurred in March 2014 (+1,132.13%), following a low-revenue February. The largest decrease occurred in January 2016 (−75.25%), compared with December 2015. These percentage changes should be interpreted alongside absolute revenue values.

Revenue was relatively strong in September and November across multiple years, suggesting a potential seasonal pattern that requires further investigation. Profitability also varied independently of revenue: March 2014 generated $55,691.01 in sales but only $498.73 in profit, while July 2014 recorded a loss of $841.48.

These findings highlight the importance of analyzing revenue, profit, and order volume together rather than relying on sales figures alone.

### Product Category Performance Analysis

Technology generated the highest sales ($836,154.03) and total profit ($145,454.95), with a profit margin of 17.40%. Office Supplies also demonstrated strong profitability, contributing $122,490.80 in profit at a 17.04% margin.

In contrast, Furniture generated $741,999.80 in sales but only $18,451.27 in profit, resulting in a margin of 2.49%. Despite its substantial sales volume, Furniture was considerably less profitable than the other two categories.

These findings suggest that category-level revenue alone is insufficient for evaluating business performance. Further analysis of Furniture's sub-categories, discount patterns, and product-level profitability is needed to identify potential drivers of its low margin.

### Sub-Category Profitability Analysis

The sub-category analysis identified Tables as the largest loss-making sub-category, recording a loss of $17,725.48 on sales of $206,965.54, with a reported profit margin of approximately −9%. Bookcases and Supplies also recorded negative total profit, at $3,472.56 and $1,189.10 in losses, respectively.

In contrast, Copiers generated the highest sub-category profit at $55,617.82, followed by Phones ($44,515.73) and Accessories ($41,936.64). Machines warrant further investigation because their average discount was 30.61%, while their profit margin was approximately 2%.

These findings indicate that profitability varies considerably across sub-categories. Recommended follow-up analyses include product-level losses, discount versus profitability patterns, and shipping or cost-related factors. The aggregate results identify areas for investigation but do not establish causal relationships.

### Discount and Profitability Analysis

The discount-band analysis revealed a strong association between higher discount levels and lower profitability in the dataset. Transactions with no discount generated $320,987.60 in total profit, with a profit margin of 29.51%. In contrast, the above-30% discount group recorded a loss of $125,006.78 and a negative profit margin of 48.16%.

Furthermore, 97.77% of product rows in the above-30% discount group recorded negative profit, compared with 0% in the no-discount group. The 21–30% discount group also showed negative profitability, with a margin of −10.05%.

These findings identify high-discount transactions as a priority for further investigation. However, the results establish an association rather than causation. Product mix, underlying costs, and other factors may influence profitability, so further analysis within product sub-categories is necessary before recommending changes to discount policies.

### Discount-Level Analysis Within Selected Sub-Categories

A sub-category-level analysis revealed different profitability patterns across Binders, Machines, and Tables. Binders generated a 48.04% profit margin without discounts and 34.43% in the 11–20% discount band, but recorded a −106.56% margin for discounts above 30%.

Machines showed a progressive decline in reported profit margin, from 38.20% without discounts to 13.10% at 11–20%, before reaching −40.89% above 30%. Tables demonstrated weaker profitability at lower discount levels: their margin fell from 18.55% without discounts to −0.67% at 11–20%, declining further to −42.14% above 30%.

These findings identify high-discount Binders and Machines, along with Tables at moderate and high discount levels, as priority areas for further investigation. The analysis reveals associations between discount bands and profitability but does not establish that discounts alone caused the losses.

For the GBC DocuBind P400 and GBC ProClick 150 products, transactions with discounts above 30% were associated with substantial losses, while the observed transactions in the lower-discount bands remained profitable. The VeloBinder had losses in all four observed transactions, but no lower-discount comparison was available. These findings suggest that high-discount transactions deserve further review; they do not, by themselves, prove that discounts caused the losses.

High-discount transactions above 30% were associated with substantial losses for several products. Some products remained profitable overall despite these losses, while others were unprofitable across all transactions. This suggests that discount controls and product-level profitability monitoring may be useful, although further analysis is needed to distinguish discount effects from other pricing and cost factors.

During product-level analysis, I identified product IDs associated with multiple product names and product names associated with multiple IDs. I validated the issue against transaction-level records and avoided assuming that either field uniquely identifies a product. Product-level results are therefore interpreted cautiously.

### Product-Level Discount Profitability Analysis

An analysis of three binding-system products revealed a consistent association between high discounts and negative profitability. Transactions with discounts of 0% and 1–20% maintained positive profit margins of approximately 33–50%, whereas transactions discounted by more than 30% produced negative margins ranging from −76% to −140%.

The GBC DocuBind P400 recorded the largest loss in the high-discount group, with $4,899.56 in sales and a loss of $6,859.39 across three transaction rows. The GBC Ibimaster 500 and DocuBind TL300 also generated substantial losses in their high-discount groups.

These findings suggest that high-discount transactions warrant further review. However, the results are descriptive rather than causal, and the relatively small transaction counts should be considered before making pricing recommendations.

In the Superstore dataset, product groups associated with discounts above 20% show substantially weaker profitability than groups sold without discounts or with discounts of 1–20%. The pattern persists when restricting the analysis to groups with at least three transaction rows. In that filtered sample, all 152 groups in the above-30% band have negative aggregate profit. These findings warrant further review of discount policies, although the analysis does not establish causation.

### Product-Level Discount Analysis: GBC DocuBind P400

An analysis of six transactions for the GBC DocuBind P400 revealed a substantial difference in profitability between discount groups. The three transactions with discounts of 30% or less generated $4,981.22 in profit on $13,065.50 in sales, resulting in a 38.13% profit margin. In contrast, the three transactions with discounts above 30% generated a loss of $6,859.39 on $4,899.56 in sales, resulting in a −140.00% margin.

This pattern identifies high-discount P400 transactions as a priority for further investigation. Because the comparison is based on a small number of transactions from different dates, it indicates an association rather than proving that discounts alone caused the losses. Further analysis of costs, order conditions, and other products is needed before recommending a specific discount limit.

### Finding: High Discounts Are Associated With Binders Losses

An analysis of 1,523 Binders transaction rows found a substantial profitability difference between transactions with discounts above 30% and those with discounts of 30% or less. The lower-discount group generated $68,732.26 in profit on $167,272.12 in sales, achieving a 41.09% profit margin. In contrast, the high-discount group generated a loss of $38,510.50 on $36,140.61 in sales, resulting in a −106.56% margin.

The high-discount group's negative aggregate profit and negative profit per unit identify it as a priority for further investigation. A reasonable next step is to examine product-level losses, discount policies, and underlying cost and order details before recommending changes. This observational comparison shows an association, not proof that discounts alone caused the losses.

### Subcategory-Level Discount and Profitability Analysis

An analysis of sales transactions across product subcategories revealed substantial differences in profitability between high-discount transactions (above 30%) and transactions with discounts of 30% or less. Binders recorded a high-discount loss of $38,510.50, followed by Machines at $29,881.39 and Tables at $27,295.90. Appliances had the most negative high-discount margin at −255.12%, although its high-discount sales volume was relatively small.

The pattern was not universal: Copiers remained profitable in the high-discount group, generating $2,182.98 in profit at a 12.90% margin. These findings suggest that discount and pricing policies should be evaluated at the product or subcategory level rather than assuming the same discount strategy is appropriate for every product.

Because the analysis is observational, further investigation of transaction details, costs, and product mix is needed before attributing losses directly to discounts or recommending policy changes.

### High-Discount Product Profitability Analysis

A transaction-level analysis of two Technology products revealed substantial losses on heavily discounted orders. For the Cubify CubeX 3D Printer Double Head Print, two transactions with a 70% discount generated a combined loss of $9,239.97, equivalent to approximately $1,320 in losses per unit. In contrast, a transaction with a 20% discount generated a profit of $360.

The Lexmark MX611dhe Monochrome Laser Printer showed a similar pattern: its 10%-discount transaction earned $680, while transactions with 40% and 70% discounts generated losses. These findings suggest that high-discount transactions warrant further review. Because the analysis covers only a small number of transactions, the results indicate an association rather than proving that discounts alone caused the losses.

**Business recommendation:** Review the pricing and cost structure of heavily discounted transactions, establish appropriate discount approval thresholds, and monitor product-level profit margins before offering large discounts.

### Technology Machines: Discount and Profitability Analysis

An analysis of 115 Technology–Machines transactions found a substantial profitability difference between discount groups. Transactions with discounts of 30% or less generated $33,266.15 in profit on $116,155.83 in sales, achieving a 28.64% profit margin. In contrast, transactions with discounts above 30% generated $73,082.80 in sales but incurred a loss of $29,881.39, resulting in a −40.89% margin.

The high-discount group accounted for approximately 38.6% of subcategory sales while generating negative profit. This highlights the importance of evaluating profitability alongside revenue when reviewing discount policies.

**Recommendation:** Review high-discount transactions at the product level, assess pricing and cost structures, and introduce margin-based discount controls. Further analysis is needed to determine how much of the observed difference is attributable to discounts rather than other transaction characteristics.

### Product-Level Discount Analysis: Technology Machines

A product-level investigation identified three major loss contributors among transactions with discounts above 30%. The Cubify CubeX Double Head Printer incurred a loss of $9,239.97, the Lexmark MX611dhe Printer lost $5,269.97, and the Cubify CubeX Triple Head Printer lost $3,839.99.

For the Double Head and Lexmark models, lower-discount transactions were profitable, with margins of 7.50% and 22.22%, respectively. Their high-discount groups recorded margins of −146.67% and −38.27%. The Triple Head model had only one high-discount transaction in the available comparison, so further evidence is required.

**Recommendation:** Prioritize a review of discount approvals, transaction pricing, and cost assumptions for the Double Head and Lexmark models. Investigate the Triple Head transaction separately before making a product-wide pricing decision.
