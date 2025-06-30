# LibraryDB_JoinTask 📚

This project is created for practicing **SQL JOINs** using a real-world style database with `Authors` and `Books` tables.

## 🧠 What This Project Covers

- How to create related tables using **foreign keys**
- How to use **INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN**
- How to handle cases where data is missing (e.g., books with no authors)

## 🗃️ Tables Used

- `Authors`: Contains author details like name and country
- `Books`: Contains book details and a reference to the author's ID

## 🧪 Sample Queries

```sql
-- INNER JOIN
SELECT Books.Title, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;