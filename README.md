# SQL-GroupBy-Aggregates
A collection of SQL queries demonstrating the use of GROUP BY, aggregate functions, and conditional filtering for solving real-world data problems. Includes tasks such as calculating department-wise salaries, analyzing job roles, and summarizing employee data.

# SQL Group By and Aggregate Functions Assignment

This repository contains a collection of SQL queries that demonstrate the use of the `GROUP BY` clause, aggregate functions, and filtering techniques. These queries are designed to solve real-world business problems by analyzing employee and department data in a sample database.

---

## 📂 File Structure

- **`group_by_assignment.sql`**  
  Contains all the SQL queries for the assignment. Each query is written with comments explaining its purpose.

---

## 📋 Queries Overview

### **1. Department-wise Average Salary**
Calculates the average salary for each department.

### **2. Department-wise and Job-wise Average Salary**
Provides a breakdown of average salaries for each job within every department.

### **3. Department-wise Salary Summary**
Displays the maximum, minimum, and total salaries for each department.

### **4. Employees with Salary Greater than 3000**
Lists all employees whose salaries exceed 3000.

### **5. Minimum and Maximum Join Dates**
Identifies the earliest and latest hire dates from the employee data.

### **6. Departments with More Than Two Salesmen**
Lists departments with at least three employees working as salesmen.

### **7. High Salary by Job**
Displays employees and their details for each job role where salaries exceed 3000.

---

## 📊 Database Schema

### **1. Employee Table (`emp`)**
| Column   | Data Type    | Description                                |
|----------|--------------|--------------------------------------------|
| empno    | `INT`        | Employee number (Primary Key).            |
| ename    | `VARCHAR(10)`| Employee name.                            |
| job      | `VARCHAR(9)` | Job title.                                |
| mgr      | `DECIMAL(4)` | Manager’s employee number.                |
| hiredate | `DATE`       | Date of hiring.                           |
| sal      | `DECIMAL(7)` | Salary of the employee.                   |
| comm     | `DECIMAL(7)` | Commission earned by the employee.        |
| deptno   | `INT`        | Department number (Foreign Key).          |

### **2. Department Table (`dept`)**
| Column   | Data Type     | Description                                |
|----------|---------------|--------------------------------------------|
| deptno   | `INT`         | Department number (Primary Key).          |
| dname    | `VARCHAR(14)` | Department name.                          |
| loc      | `VARCHAR(13)` | Location of the department.               |

---

## 🛠️ Key SQL Concepts Used

1. **`GROUP BY` Clause**:  
   Used to group data based on specific columns for aggregation.

2. **Aggregate Functions**:  
   - `AVG()`: Calculates average values.  
   - `SUM()`: Computes total values.  
   - `MAX()` / `MIN()`: Finds maximum and minimum values.  
   - `COUNT()`: Counts rows or specific column values.

3. **`HAVING` Clause**:  
   Filters grouped data based on aggregate conditions.

4. **Joins**:  
   - `INNER JOIN`: Combines data from `emp` and `dept` tables based on `deptno`.

5. **Filtering**:  
   - `WHERE` clause for row-level filtering.  
   - `LIKE` operator for pattern matching.

---

## 💻 How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/SQL-GroupBy-Aggregates.git
   cd SQL-GroupBy-Aggregates



## ✨ Contribution

Feel free to contribute by adding more queries, optimizing existing ones, or improving the documentation.

1. Fork the repository.
2. Make your changes.
3. Submit a pull request for review.

