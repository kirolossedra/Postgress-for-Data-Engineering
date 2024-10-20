COPY myauthors (author_id, first_name, middle_name, last_name)
FROM '/home/your_username/myauthors.csv'
DELIMITER ','
CSV HEADER;
