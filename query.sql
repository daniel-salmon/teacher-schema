-- This will return a list of all classes for the provided teacher id ($1)
-- along with the students registered in each class.
SELECT
  class.name
, student.name
, student.age
, student.grade
, student_class.attribute1
, student_class.attribute2
, student_class.attribute3
FROM teacher
JOIN class
  ON class.teacher_id = teacher.id
JOIN student_class
  ON student_class.class_id = class.id
JOIN student
  ON student.id = student_class.student_id
WHERE true
AND teacher.id = $1
ORDER BY
  class.name
, student.name;
