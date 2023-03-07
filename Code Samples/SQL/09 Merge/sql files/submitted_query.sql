SELECT
    Cu.CUST_NAME,
    Cu.CUST_CELLNO,
    Cu.CUST_EMAIL,
    (
        CASE
            WHEN SUM(
                Co.COURSE_PRICE * (
                    SELECT
                        Sa.S_QTY_ORDERED
                    FROM
                        Sales Sa
                        INNER JOIN Courses CO ON Sa.S_COURSEID = Co.COURSE_ID
                )
            ) IS NOT NULL THEN SUM(
                Co.COURSE_PRICE * (
                    SELECT
                        Sa.S_QTY_ORDERED
                    FROM
                        Sales Sa
                        INNER JOIN Courses CO ON Sa.S_COURSEID = Co.COURSE_ID
                )
            )
            ELSE 0
        END
    ) AS TOTAL_SALE
FROM
    Customers Cu,
    Courses Co
    INNER JOIN Sales Sa ON Sa.S_CUSTID = Cu.CUST_ID
GROUP BY
    Cu.CUST_NAME
ORDER BY
    Cu.CUST_ID ASC
