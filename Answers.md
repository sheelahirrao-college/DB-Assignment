1. A foreign key relationship is defined between the 'product' table and the 'product_category' table. There exists many-to-one relationship between products and product categories.

2. To ensure that each product in the 'product' table has a valid category assigned to it, a foreign key should be used from the 'category' table. The foreign key constraint applies and the column can be set as not null to make sure a product is not created without assigning a category to it.
