# SQL Database Tasks – Weekly Progress

## 📘 Course Information
**Course:** Database Systems and Applications  
**Student:** Cansu Öznur Avcı  
**Department:** Computer Engineering, Sivas University of Science and Technology

## Week 5 – SQL JOIN Operations
This week’s task focused on creating a database system with three tables: **Students**, **Courses**, and **Enrollments**.  
Different types of SQL JOIN operations (INNER, LEFT, and RIGHT JOIN) were applied to compare data relationships between these tables.

### 📊 JOIN Results
#### 🔹 INNER JOIN
Shows only students who are enrolled in at least one course.

#### 🔹 LEFT JOIN
Shows all students, including those **not enrolled** in any course (e.g., İpek Ceran).

#### 🔹 RIGHT JOIN
Shows all courses, including those **with no enrolled students** (e.g., ME-103 – Introduction to Mechanical Engineering).


### 📈 Comparison Summary
| JOIN Type | Includes All Students | Includes All Courses | Excludes Unmatched |
|------------|------------------------|------------------------|--------------------|
| **INNER JOIN** | ❌ | ❌ | ✅ |
| **LEFT JOIN** | ✅ | ❌ | ❌ |
| **RIGHT JOIN** | ❌ | ✅ | ❌ |

---

## Week 6 – GROUP BY & HAVING
This week’s topic covered the **GROUP BY**, **WHERE**, and **HAVING** clauses.  
Each is used for filtering and grouping, but they differ in *when* and *how* the filtering occurs.

| Clause | Description | Example Purpose |
|:-------|:-------------|:----------------|
| **GROUP BY** | Groups rows that have the same values into summary rows. | Find how many courses each student is enrolled in. |
| **WHERE** | Filters rows *before* grouping. | Select only courses starting with “CNG”. |
| **HAVING** | Filters groups *after* grouping. | Display only students enrolled in more than two courses. |

**Key Difference:**  
`WHERE` filters individual rows, while `HAVING` filters grouped results.  

---

## Week-7
Coming soon…




