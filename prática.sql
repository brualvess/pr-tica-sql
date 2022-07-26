--Questão 1--
SELECT users.id, users.name,cities.name AS city 
FROM users JOIN cities 
ON cities.id = users."cityId" 
WHERE cities.name = 'Rio de Janeiro';
--Questão 2--
SELECT testimonials.id, tb1.name AS writer, 
tb2.name AS recipient,testimonials.message
FROM testimonials  JOIN users tb1
ON testimonials."writerId" = tb1.id
JOIN users tb2 ON testimonials."recipientId" = tb2.id;
--Questão 3--
SELECT users.id, users.name, courses.name AS course,
 schools.name AS school, educations."endDate"
FROM users JOIN educations 
ON users.id = educations."userId"
JOIN schools ON schools.id = educations."schoolId"
JOIN courses ON courses.id = educations."courseId"
 WHERE educations.status = 'finished';

 