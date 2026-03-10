-- Basic sql syntax for merge statement

MERGE target_table_name as TARGET
USING source_table_name as SOURCE
ON (TARGET.common_column_id = SOURCE.common_column_id)
WHEN MATCHED 
THEN 
UPDATE SET TARGET.column_name = SOURCE.column_name 
WHEN NOT MATCHED BY TARGET
THEN 
INSERT (column_one,column_two)
VALUES (SOURCE.column_name,SOURCE.column_name)
WHEN NOT MATCHED BY SOURCE
THEN
DELETE;

-- example 
CREATE TABLE target_table
(
	id int not null PRIMARY KEY,
  	first_name varchar not null,
	last_name varchar not null,
	phone_no int not null
);


INSERT INTO target_table VALUES 
(1,"Akash","Choughule",123),
(2,"Shravan","Thombre",234);

CREATE TABLE source_table
(
	id int not null PRIMARY KEY,
  	first_name varchar not null,
	last_name varchar not null,
	phone_no int not null
);

INSERT INTO source_table VALUES 
(1,"Dev","Nikam",324),
(3,"Shripad","Kulkarni",678);

MERGE target_table as TARGET
USING source_table as SOURCE
ON (TARGET.id = SOURCE.id)
WHEN MATCHED
AND TARGET.first_name <> SOURCE.first_name 
OR TARGET.last_name <> SOURCE.last_name
THEN
UPDATE set
TARGET.first_name = SOURCE.first_name
TARGET.last_name = SOURCE.last_name
WHEN NOT MATCHED BY TARGET
THE
INSERT (id, first_name, last_name, phone_no)
VALUES (SOURCE.id, SOURCE.first_name, SOURCE.last_name, SOURCE.phone_no)
WHEN NOT MATCHED BY SOURCE
THEN
DELETE;