# 🗄️ BlogCMS — Database Design & SQL Implementation

> Relational database schema for a blog CMS — complete ERD design, SQL table creation with constraints, and query solutions.

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-orange?style=flat-square)
![ERD](https://img.shields.io/badge/ERD-Diagram-green?style=flat-square)

---

## 📂 Project Files

| File | Description |
|---|---|
| `ERD.pdf` | Entity-Relationship Diagram with all entities, attributes, data types, PKs, FKs and cardinalities |
| `fichier.sql` | Full SQL script — creates the database and all tables with constraints |
| `results.sql` | SQL query solutions for all required questions |

---

## 🗄️ Database Schema

The BlogCMS database manages **4 core entities**:

| Table | Description |
|---|---|
| `users` | Blog authors — id, name, email, password, created_at |
| `categories` | Post categories — id, name, slug |
| `posts` | Blog articles — id, title, content, author (FK), category (FK), status, created_at |
| `comments` | Reader comments — id, content, post (FK), author (FK), created_at |

### Relationships
- One **user** can write many **posts** (1:N)
- One **category** can contain many **posts** (1:N)
- One **post** can have many **comments** (1:N)
- One **user** can write many **comments** (1:N)

---

## ✨ Features

- ✅ Full ERD diagram with all entities, attributes, and cardinalities
- ✅ SQL schema with `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `AUTO_INCREMENT`
- ✅ Normalized relational design (no data redundancy)
- ✅ Data import from CSV files (users, posts, categories, comments)
- ✅ SQL query solutions covering SELECT, JOIN, GROUP BY, and filtering

---

## 🛠 Tech Stack

| Technology | Usage |
|---|---|
| MySQL | Relational database engine |
| SQL | Schema creation and queries |
| ERD (PDF) | Visual database modeling |

---

## 🚀 Getting Started

```bash
git clone https://github.com/lioubiarabi/BlogCMS_sql.git
cd BlogCMS_sql
```

Then run in your MySQL client:
```sql
-- 1. Create the database and tables
SOURCE fichier.sql;

-- 2. Run the query solutions
SOURCE results.sql;
```

---

## 🎯 Project Context

Built as part of the **[2023] Développeur Web et Web Mobile** curriculum at **Youcode**.

The brief: design and implement a complete relational database for a blog CMS — producing a full ERD and executable SQL scripts with all constraints and query solutions.

**Duration:** 3 days (Nov 29 — Dec 3, 2025)

---

## 💡 What I Learned

- Translating business requirements into a relational data model
- Designing ERD diagrams with correct cardinalities (1:1, 1:N)
- Writing SQL schemas with proper constraints (PK, FK, NOT NULL, UNIQUE)
- Database normalization to eliminate redundancy
- Writing complex SQL queries with JOINs, GROUP BY, and subqueries

---

## 👤 Author

**Lioubi Arabi** — Youcode Web Development Student  
[![GitHub](https://img.shields.io/badge/GitHub-lioubiarabi-181717?style=flat-square&logo=github)](https://github.com/lioubiarabi)

---

*Backend foundations — good data design makes everything else easier 🗄️*
