# SQL Database Tasks – Weekly Progress

## Week 5 – SQL JOIN Operations

### 📘 Course Information
**Course:** Database Systems and Applications  
**Student:** Cansu Öznur Avcı  
**Department:** Computer Engineering, Sivas University of Science and Technology

---

### 🧩 Project Overview
This week’s task focuses on creating a **school database** with three main tables:
- **Students**
- **Courses**
- **Enrollments** (with foreign keys)

After inserting sample data, different **JOIN operations** (INNER, LEFT, RIGHT) were performed to analyze the relationships between students and courses.

---

### ⚙️ How to Run
1. Open **SQL Server Management Studio (SSMS)**.
2. Create a database named `school`.
3. Copy the SQL queries from the file `school_tasks_ssms.sql`.
4. Execute the script step by step.
5. Observe the JOIN results in the Results section.

---

### 📊 JOIN Results
#### 🔹 INNER JOIN
Shows only students who are enrolled in at least one course.

#### 🔹 LEFT JOIN
Shows all students, including those **not enrolled** in any course (e.g., İpek Ceran).

#### 🔹 RIGHT JOIN
Shows all courses, including those **with no enrolled students** (e.g., ME-103 – Introduction to Mechanical Engineering).


---

### 📈 Comparison Summary
| JOIN Type | Includes All Students | Includes All Courses | Excludes Unmatched |
|------------|------------------------|------------------------|--------------------|
| **INNER JOIN** | ❌ | ❌ | ✅ |
| **LEFT JOIN** | ✅ | ❌ | ❌ |
| **RIGHT JOIN** | ❌ | ✅ | ❌ |

---

## Week 6 – Coming Soon
This section will be updated with next week’s SQL task and results.

---



