# 🏏 Fantasy Sports League Database

This project is a **SQL-based database system** designed to manage a fantasy sports league. It supports the management of teams, players, matches, and player performance with scoring. It is ideal for learning **complex data modeling**, **SQL queries**, and **ranking functions**, and for demonstrating how to build a backend structure for fantasy gaming platforms like Dream11 or MPL.

---

## 📁 Project Structure

- `FantasyLeague_DB.sql`: Core SQL script containing:
  - Database creation
  - Table definitions and relationships
  - Sample data insertions
  - Advanced SQL queries using JOINs and RANK functions

---

## 🛠️ Technologies Used

- **MySQL**
- **MySQL Workbench**
- **SQL Queries** (DDL, DML, JOINs, Window functions)

---

## 🧩 Database Schema

The database includes the following tables:

| Table              | Description                            |
|-------------------|----------------------------------------|
| `Players`          | Stores player details like name, team, role |
| `Teams`            | Stores team name and owner            |
| `TeamPlayers`      | Many-to-many relationship between Teams and Players |
| `Matches`          | Match details: date, venue, teams     |
| `PlayerPerformance`| Player stats and fantasy points       |

**Schema Visualization**: 

![schema](https://github.com/user-attachments/assets/8a8d25f0-64ef-4c51-84d4-c61f29cd9f6f)

[DBDiagram.io link](https://dbdiagram.io/d/FantasyLeague-682e09f0b9f7446da38e5e01)

---
## Outputs!!!

![op1](https://github.com/user-attachments/assets/463bfdc7-7322-4bc1-b6c7-f2bd03b4e5b2)

![op2](https://github.com/user-attachments/assets/2e7e93a8-629e-4cfc-9aa1-97fe3ece87bc)

![op3](https://github.com/user-attachments/assets/48cabaa0-f4ac-4800-8a0b-362684385a31)
---

## 🚀 Features

- Register teams and players
- Record matches and player performances
- Track total points for players and teams
- Rank players based on cumulative performance
- Join multiple tables to fetch match-wise player stats

---

## 🔍 Sample Queries

Some queries included in the script:

1. Top 5 players by total points
2. Team-wise total points based on player performance
3. Match-wise player statistics
4. Player ranking using `RANK()` window function

---

## 🧪 How to Use

1. Open **MySQL Workbench**
2. Run the script `FantasyLeague_DB.sql`
3. Explore the schema and execute the provided queries
4. Modify or extend tables and queries as needed

---

## 📈 Skills Demonstrated

- ✅ Complex data modeling with foreign keys and relationships
- ✅ Writing and optimizing SQL queries
- ✅ Using `JOIN`, `GROUP BY`, and `RANK()` functions
- ✅ Handling real-world fantasy league data patterns


---

## 📄 License

This project is for educational purposes. No commercial license implied.

---
