# 1.��ѯͬʱ����1�γ̺�2�γ̵����

# 2.��ѯͬʱ����1�γ̺�2�γ̵����

# 3.��ѯƽ���ɼ����ڵ���60�ֵ�ͬѧ��ѧ����ź�ѧ��������ƽ���ɼ�
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


# 4.��ѯ��student_course���в����ڳɼ���ѧ����Ϣ��SQL���
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


# 5.��ѯ�����гɼ���SQL
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


# 6.��ѯѧ�����Ϊ1����Ҳѧ�����Ϊ2�Ŀγ̵�ͬѧ����Ϣ
select student.*
FROM
student ,
student_course
where student.id=student_course.studentId and courseId=1 
and exists 
(select student.* from student,student_course 
where student.id=student_course.studentId and courseId=2)




# 7.����1�γ̷���С��60���������������е�ѧ����Ϣ
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


# 8.��ѯÿ�ſγ̵�ƽ���ɼ��������ƽ���ɼ��������У�ƽ���ɼ���ͬʱ�����γ̱����������
SELECT
Avg(score)
FROM
student_course
GROUP BY
student_course.courseId
ORDER BY AVG(score),courseId ASC


# 9.��ѯ�γ�����Ϊ"��ѧ"���ҷ�������60��ѧ�������ͷ���
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
course.`name` = '��ѧ' AND
student_course.score < 60
