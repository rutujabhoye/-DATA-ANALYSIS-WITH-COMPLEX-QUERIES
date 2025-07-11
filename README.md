# -DATA-ANALYSIS-WITH-COMPLEX-QUERIES

*COMPANY*: CODTECH IT SOLUTIONS 

*NAME*: RUTUJA SUBHASH BHOYE

*INTERN ID*: CT04DH1300

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTHOSH 

##Welcome to my SQL-based data analysis project, where I explored real-world patterns and trends using advanced SQL queries. This repository contains a complete implementation of data reporting techniques including Common Table Expressions (CTEs), Window Functions, and Subqueries—all applied on a sample education platform database.
The goal of this project was not only to write working SQL queries but also to simulate what data analysts and backend developers actually do in live environments: extract meaningful insights from structured data.
This project simulates a simplified online learning platform where students enroll in various courses and their learning progress is tracked over time. I created a mock database with three tables: students, courses, and enrollments. These tables collectively form the backbone of a relational structure that reflects many real-world systems such as EdTech platforms, corporate LMS (Learning Management Systems), and academic dashboards.
By using realistic sample data, I was able to write and test complex SQL queries that solve meaningful analytical problems—ranging from student performance tracking to course engagement and monthly trends.

This project helped reinforce some of the most powerful SQL concepts used in real data-driven roles:
1. Common Table Expressions (CTEs): Used to simplify and structure complex queries.
2. Subqueries: Used to perform nested lookups such as finding each student’s lowest performing course.
3. Window Functions: Used to rank students and rank courses for each individual student.
4. Aggregation & Filtering: For monthly trends, average progress, and identifying underperforming segments.
5. JOIN operations: To bring together data from multiple relational tables in meaningful ways.
Each SQL query is written with simplicity and clarity in mind, and inline comments are included to explain what each part of the query does.

The students table contains basic student information.
The courses table lists all available courses.
The enrollments table tracks which students enrolled in which courses, along with their progress and the enrollment date.
This simple schema forms the foundation for rich, meaningful analysis.

Queries Performed:
1. Low Engagement Courses: Identify courses where more than 50% of enrolled students have progress below 50%.
2. Monthly Enrollment Trends: Track the number of new enrollments each month using GROUP BY and DATE_FORMAT().
3. Top Performing Students: Rank students by average progress using RANK() window function.
4. Course Ranking Per Student: Use PARTITION BY to rank courses based on a student's individual progress levels.
5. Lowest Performing Course Per Student: Use subqueries to extract each student’s weakest subject area.
Each query helps uncover different aspects of performance, engagement, or trend patterns.

Tech Stack & Tools:
💻 MySQL (SQL)
📝 Visual Studio Code
🛠️ Local MySQL Server
📂 .sql scripts organized for reuse and testing
All scripts are written using standard MySQL syntax and are designed to run efficiently in any local or cloud-based SQL environment.

Real-World Relevance:
The techniques demonstrated here are directly applicable to many real-world roles:
📊 Data Analysts generating reports from transactional databases
📈 Business Intelligence teams identifying KPIs and engagement metrics
🎓 EdTech developers optimizing learning platforms using progress analytics
🧑‍🏫 Academic institutions tracking student performance and dropout rates

This project was a great exercise in thinking like a data analyst. I learned how to:
1. Break down complex logic using CTEs.
2. Apply ranking logic using window functions.
3. Use subqueries for personalized data views.
4. Present trend reports using date-based aggregation.
Overall, it was a great hands-on experience that helped me bridge the gap between basic SQL syntax and practical data analysis techniques.

#OUTPUT

<img width="1920" height="1008" alt="Image" src="https://github.com/user-attachments/assets/66bf6202-2900-44fd-bf13-792706d40c68" />

<img width="1920" height="1008" alt="Image" src="https://github.com/user-attachments/assets/bb043275-71cb-4e20-a013-3cedcc660872" />

<img width="1920" height="1008" alt="Image" src="https://github.com/user-attachments/assets/dc2b0279-d9a3-42c5-ae95-159ba6efb67f" />

<img width="1920" height="1008" alt="Image" src="https://github.com/user-attachments/assets/952932e7-94ad-4d34-bab8-a987648bc1f2" />

<img width="1920" height="1008" alt="Image" src="https://github.com/user-attachments/assets/c160ea3d-4db5-4689-9734-317c70a470b1" />
