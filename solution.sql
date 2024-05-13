SELECT 
    dt_birth, 
    CASE 
        WHEN LENGTH(SPLIT(REPLACE(dt_birth, '/', '-'), '-')[0]) = 4 
            THEN date(CONCAT(SPLIT(REPLACE(dt_birth, '/', '-'), '-')[0], '-', 
                        SPLIT(REPLACE(dt_birth, '/', '-'), '-')[1], '-', 
                        SPLIT(REPLACE(dt_birth, '/', '-'), '-')[2]))
        WHEN LENGTH(SPLIT(REPLACE(dt_birth, '/', '-'), '-')[0]) = 2 
            THEN date(CONCAT(SPLIT(REPLACE(dt_birth, '/', '-'), '-')[2], '-', 
                        SPLIT(REPLACE(dt_birth, '/', '-'), '-')[0], '-', 
                        SPLIT(REPLACE(dt_birth, '/', '-'), '-')[1]))
    END AS dt2 
FROM 
    [table]