/* Niveau 1 : Opérations CRUD de Base */

-- 1. INSERT - Création d'un nouvel utilisateur
insert into user (username, name, email, password, auther)	
	values ("jhon dupont" , "jdupont", "jean.dupont@email.com","$2y$10$...",0);

--2. SELECT - Récupération d'articles
alter table article
add column status varchar(50) not null default 'published'

SELECT title, creation_date, status FROM article;

--  3. UPDATE - Modification de statut
update article
	set status = 'archivé'
    where status = 'brouillon'
    	and Year(creation_date) < 2024;

-- 5. WHERE - Filtrage temporel
select * from article
	where creation_date > '2024-12-01';

-- 6. ORDER BY - Tri chronologique
select * from article
	order by creation_date;
    
-- 7. LIMIT - Articles récents
    
select title, creation_date, modification_date from article
	order by creation_date desc
    limit 5;

-- 8. DISTINCT - Rôles uniques
SELECT distinct auther from user;

-- 9. AND/OR - Articles par catégorie et statut
SELECT * from article
    where categoryId = 1
    and (status = 'published' or 'bruillon');

-- 10. BETWEEN - Commentaires par période
select * from comment
    where creation_date between '2024-12-01' and '2024-12-15';

-- IN - Articles par catégories multiples
select * from article
    where categoryId in (1, 3);

-- LIKE - Recherche par email
select * from user
    where email like '%@gmail.com';
    
-- 13. COUNT() - Statistique articles
select count(*) from article;

-- COUNT() avec GROUP BY - Articles par catégorie
select count(*) as article_Num, categoryId from article
    group by categoryId;

--  AVG() - Longueur moyenne des articles
select avg(CHARACTER_LENGTH(title)) from article;

-- MAX()/MIN() - Dates extrêmes
select max(creation_date) from article
    where status = 'published';
select min(creation_date) from comment;