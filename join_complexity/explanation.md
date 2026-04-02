A join combines rows from multiple tables based on a condition
Types of join:
1. Inner - returns all rows which are matched in left as well as right
2. Left - returns all rows from left table and and matches rowns with right table. All the unmatched values are marked as null
3. Right - returns all rows from right table and and matches rowns with left table. All the unmatched values are marked as null
4. Full Join - returns all rows and fill the non-matched values with null

Join Complexity
Suppose table A has n rows and table B has m rows

Tables with No index (worst-case scenario) - O(n x m)
Tables with index O(n log m)
Hash Based join (best-case) - O(n + m)