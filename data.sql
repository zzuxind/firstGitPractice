# 1.查询同时存在1课程和2课程的情况

# 2.查询同时存在1课程和2课程的情况

# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
SELECT
student.id,
student.`name`,
avg(score)
FROM
student ,
student_course
WHERE
student.id = student_course.studentId
GROUP BY
student.id


# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
SELECT
student.id,
student.`name`,
student.age,
student.sex
FROM
student 
WHERE
student.id NOT IN (
	SELECT student_course.studentId 
  	FROM student_course
  	GROUP BY studentId
	)


# 5.查询所有有成绩的SQL
SELECT
student_course.studentId,
student_course.score,
student.`name`,
student.age,
student.sex,
student_course.courseId
FROM
student_course ,
student
WHERE
student_course.studentId = student.id


# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
select student.*
FROM
student ,
student_course
where student.id=student_course.studentId and courseId=1 
and exists 
(select student.* from student,student_course 
where student.id=student_course.studentId and courseId=2)




# 7.检索1课程分数小于60，按分数降序排列的学生信息
SELECT
student.id,
student.`name`,
student.age,
student.sex,
student_course.score
FROM
student_course ,
student
WHERE
student_course.courseId = 1 AND
student_course.score < 60
ORDER BY
student_course.score DESC


# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
SELECT
Avg(score)
FROM
student_course
GROUP BY
student_course.courseId
ORDER BY AVG(score),courseId ASC


# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
SELECT
student.`name`,
student_course.score
FROM
student_course ,
student ,
course
WHERE
student_course.courseId = course.id AND
student.id = student_course.studentId AND
course.`name` = '数学' AND
student_course.score < 60
