## Foreign Keys

In this activity, you will create and populate two new tables with foreign keys that reference existing data.

### Instructions

**Note:** Make sure all tables have primary keys that increment with each new row of data.

- Create a `customer` table with a customer first name and customer last name.

## Completed

<img src="images/customer.png" width="400" />

- Create a `customer_email` table with a foreign key that references a field in the original `customer` table.

- Populate the `customer_email` table with emails.

## Completed

<img src="images/email.png" width="400" />

- Create a `customer_phone` table with a foreign key that references a field in the original `customer` table.

- Populate the `customer_phone` table with phone numbers.

## Completed

<img src="images/phone.png" width="400" />

- Test foreign keys by writing a query to insert data in the `customer_phone` table that does not have a reference ID in the `customer` table.

## Completed

<img src="images/error.png" width="400" />

- Join all three tables.

## Completed

<img src="images/join.png" width="400" />
