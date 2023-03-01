INSERT INTO
  customer_phone(customer_id, phone)
VALUES
  (10, '646-444-3333');

SELECT
  c.first_name,
  c.last_name,
  e.email,
  p.phone
FROM
  customer c
  JOIN customer_email e ON c.id = e.customer_id
  JOIN customer_phone p ON c.id = p.customer_id;