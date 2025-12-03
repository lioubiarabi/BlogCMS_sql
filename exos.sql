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
    
select * from article
	order by creation_date desc
    limit 5;

-- 8. DISTINCT - Rôles uniques