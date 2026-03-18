Aggregate functions are used in sql to process a number of records to return a single value
Generally used with group_by clause (which splits the result sets into group of values)
By grouping the records the aggregate functions returns a single value for each group as per needed
Aggregate funtions ignore null values except for COUNT(*)

Types of Aggregate Functions:
1. COUNT()
2. MIN()
3. MAX()
4. AVG()
5. SUM()


MIN():
--> returns the smallest value of the selected columns
--> works with numeric, strings(lexicographically) and other data types

MAX():
--> returns the largest value of the selected columns
--> works with numeric, strings(lexicographically) and other data types

COUNT():
--> return the number of record that fulfils the conditions present in the parantheses
--> (*) will return the number of all records
--> (column_name) will return the number of records excluding the null values
--> (DISTINCT column_name) will return the number of records exluding null values and also takes only unique values

SUM():
--> calculate the total sum of values for a numeric column
--> ignores the null values(basicall of no use)

AVG():
--> average value of numerical column
--> again ignore null values cause of no use