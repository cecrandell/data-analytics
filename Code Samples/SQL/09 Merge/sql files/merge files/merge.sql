-- The MERGE statement handles inserts, updates, and deletes all in a single transaction without having to write separate logic for each of these.

MERGE Courses AS Courses 
USING BICourses AS BICourses 
ON BICourses.COURSE_ID = Courses.COURSE_ID 

-- For Inserts
WHEN NOT MATCHED BY Courses THEN
INSERT
    (COURSE_ID, COURSE_NAME, COURSE_PRICE)
VALUES
    (
        BICourses.COURSE_ID,
        BICourses.COURSE_NAME,
        BICourses.COURSE_PRICE
    ) 
    
-- For Updates
WHEN MATCHED THEN
UPDATE
SET
    Courses.COURSE_NAME = BICourses.COURSE_NAME,
    Courses.COURSE_PRICE = BICourses.COURSE_PRICE 
    
-- For Deletes
WHEN NOT MATCHED BY BICourses THEN 
DELETE;

SELECT * FROM Courses;
SELECT * FROM BICourses;