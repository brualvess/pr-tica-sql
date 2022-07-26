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
 WHERE educations.status = 'finished' AND users.id = 30;
--Questão 4--
SELECT users.id, users.name, roles.name AS role, 
companies.name AS company, experiences."startDate"
FROM users JOIN experiences 
ON users.id = experiences."userId"
JOIN roles ON experiences."roleId" = roles.id
JOIN companies ON companies.id = experiences."companyId"
WHERE users.id = 50 AND experiences."endDate" IS NULL;
 