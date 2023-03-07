WITH TOTAL_PRICE as (
    SELECT
        S_CustID,
        SUM(COALESCE(COURSE_PRICE * S_QTY_ORDERED, 0)) 
        AS TOTAL_SALE
    FROM
        Sales s
        INNER JOIN Courses c on c.COURSE_ID = s.S_COURSEID
    GROUP BY
        S_CustID
)
SELECT
    cu.CUST_NAME,
    cu.CUST_CELLNO,
    cu.CUST_EMAIL,
    COALESCE(t.TOTAL_SALE, 0.00) AS TOTAL_SALE
FROM
    Customers cu
    LEFT JOIN TOTAL_PRICE t ON t.S_CustID = cu.Cust_ID