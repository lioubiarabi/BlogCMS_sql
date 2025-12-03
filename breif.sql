/* create tables */

create table user (
    username varchar(50) primary key,
    name varchar(50) not null,
    email varchar(50) not null unique,
    password varchar(50) not null,
    auther boolean not null
);

create table category (
    categoryId int auto_increment primary key,
    name varchar(50) not null
);

create table article (
    articleId int AUTO_INCREMENT primary key,
    title varchar(100) not null,
    content text not null,
    creation_date date not null,
    modification_date date not null,
    categoryId int,
    username varchar(50),

    foreign key (categoryId) references category(categoryId),
    foreign key (username) references user(username)
);

create table comment (
    commentId int AUTO_INCREMENT primary key,
    context text,
    creation_date date,
    articleId int,
    username VARCHAR(50),

    Foreign Key (articleId) REFERENCES article(articleId),
    Foreign Key (username) REFERENCES user(username)
);

/* insert data */
insert into user (username, name, email, password, auther) values
    ('admin_blog', 'Admin Blog', 'admin@blogcms.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('marie_dubois', 'Marie Dubois', 'marie.dubois@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('pierre_leroy', 'Pierre Leroy', 'pierre.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('sophie_martin', 'Sophie Martin', 'sophie.martin@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('jean_dupont', 'Jean Dupont', 'jean.dupont@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('lucie_bernard', 'Lucie Bernard', 'lucie.bernard@hotmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('thomas_petit', 'Thomas Petit', 'thomas.petit@outlook.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('julie_moreau', 'Julie Moreau', 'julie.moreau@live.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('nicolas_simon', 'Nicolas Simon', 'nicolas.simon@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 1),
    ('camille_laurent', 'Camille Laurent', 'camille.laurent@orange.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('antoine_michel', 'Antoine Michel', 'antoine.michel@free.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('sarah_lefevre', 'Sarah Lefevre', 'sarah.lefevre@sfr.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('david_garcia', 'David Garcia', 'david.garcia@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('elodie_roux', 'Elodie Roux', 'elodie.roux@yahoo.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('julien_david', 'Julien David', 'julien.david@hotmail.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('celine_bertrand', 'Celine Bertrand', 'celine.bertrand@laposte.net', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('maxime_fournier', 'Maxime Fournier', 'maxime.fournier@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('lea_girard', 'Lea Girard', 'lea.girard@outlook.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('romain_bonnet', 'Romain Bonnet', 'romain.bonnet@live.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0),
    ('manon_mercier', 'Manon Mercier', 'manon.mercier@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 0);


insert into category values
    (1, 'Technologie'),
    (2, 'Santé'),
    (3, 'Voyage'),
    (4, 'Cuisine'),
    (5, 'Sport'),
    (6, 'Éducation'),
    (7, 'Finance'),
    (8, 'Mode');

USE brief;

insert into article (articleId, title, content, creation_date, modification_date, categoryId, username) values
    (1, 'Les Nouvelles Tensions Technologiques en 2024', 'Explorez les technologies émergentes qui vont transformer notre quotidien cette année...', '2024-02-20', '2024-02-21', 1, 'pierre_leroy'),
    (2, 'Comment Maintenir une Bonne Santé au Travail', 'Des conseils pratiques pour préserver votre santé physique et mentale...', '2024-02-25', '2024-02-25', 2, 'sophie_martin'),
    (3, 'Les 10 Destinations à Visiter Absolument en 2024', 'Découvrez les destinations qui vont marquer l''année 2024...', '2024-03-05', '2024-03-06', 3, 'jean_dupont'),
    (4, 'Recette du Gâteau au Chocolat Fondant', 'Une recette simple et rapide pour un gâteau au chocolat irrésistible...', '2024-03-10', '2024-03-11', 4, 'lucie_bernard'),
    (5, 'Préparation Marathon : Guide Complet du Débutant', 'Tout ce qu''il faut savoir pour préparer son premier marathon...', '2024-03-15', '2024-03-16', 5, 'nicolas_simon'),
    (6, 'Les Bienfaits de la Méditation Quotidienne', 'Pourquoi et comment intégrer la méditation dans votre routine...', '2024-03-20', '2024-03-20', 2, 'pierre_leroy'),
    (7, 'Comparatif des Meilleurs Smartphones 2024', 'Analyse détaillée des derniers modèles sortis sur le marché...', '2024-03-25', '2024-03-26', 1, 'sophie_martin'),
    (8, 'Voyager en Solo : Conseils et Astuces', 'Oser l''aventure en solitaire : tout ce qu''il faut prévoir...', '2024-03-30', '2024-03-30', 3, 'jean_dupont'),
    (9, 'Les Secrets de la Cuisine Italienne', 'Apprenez à cuisiner comme un vrai chef italien...', '2024-04-05', '2024-04-06', 4, 'lucie_bernard'),
    (10, 'Exercices à la Maison sans Matériel', 'Programme complet pour rester en forme sans aller à la salle...', '2024-04-10', '2024-04-10', 5, 'nicolas_simon'),
    (11, 'L''Intelligence Artificielle dans le Monde Professionnel', 'Comment l''IA redéfinit les métiers et les compétences...', '2024-04-15', '2024-04-16', 1, 'pierre_leroy'),
    (12, 'Gérer le Stress au Quotidien', 'Techniques efficaces pour réduire le stress et l''anxiété...', '2024-04-20', '2024-04-20', 2, 'sophie_martin'),
    (13, 'Road Trip aux USA : Itinéraire de Rêve', 'Parcourez les routes mythiques des États-Unis...', '2024-04-25', '2024-04-26', 3, 'jean_dupont'),
    (14, 'Cuisiner Végétarien : Recettes Gourmandes', 'Découvrez une cuisine végétarienne riche en saveurs...', '2024-04-30', '2024-05-01', 4, 'lucie_bernard'),
    (15, 'Débuter le Yoga : Postures de Base', 'Guide illustré pour commencer le yoga en douceur...', '2024-05-05', '2024-05-05', 5, 'nicolas_simon'),
    (16, 'Cybersécurité : Protéger ses Données', 'Les bons réflexes pour sécuriser votre vie numérique...', '2024-05-10', '2024-05-11', 1, 'pierre_leroy'),
    (17, 'Le Sommeil Réparateur : Mode d''Emploi', 'Comprendre les cycles du sommeil pour mieux dormir...', '2024-05-15', '2024-05-15', 2, 'sophie_martin'),
    (18, 'Japon : Entre Tradition et Modernité', 'Voyage au cœur de la culture japonaise...', '2024-05-20', '2024-05-21', 3, 'jean_dupont'),
    (19, 'Pâtisserie Française : Les Classiques', 'Maîtrisez les bases de la pâtisserie française...', '2024-05-25', '2024-05-26', 4, 'lucie_bernard'),
    (20, 'Running : Améliorer son Endurance', 'Plan d''entraînement pour courir plus longtemps...', '2024-05-30', '2024-05-30', 5, 'nicolas_simon'),
    (21, 'Blockchain et Crypto : Comprendre les Enjeux', 'Décryptage de la révolution financière numérique...', '2024-06-04', '2024-06-05', 1, 'pierre_leroy'),
    (22, 'Nutrition Sportive : Ce qu''il Faut Savoir', 'Alimentation adaptée pour optimiser vos performances...', '2024-06-09', '2024-06-09', 2, 'sophie_martin'),
    (23, 'Escapades en Europe pour le Week-end', 'Idées de destinations proches pour s''évader...', '2024-06-14', '2024-06-15', 3, 'jean_dupont'),
    (24, 'Street Food : Tour du Monde des Saveurs', 'Les meilleures spécialités de rue à travers le globe...', '2024-06-19', '2024-06-20', 4, 'lucie_bernard'),
    (25, 'Musculation : Programme Full Body', 'Entraînement complet pour se muscler harmonieusement...', '2024-06-24', '2024-06-24', 5, 'nicolas_simon'),
    (26, '5G : Quels Changements Concrets ?', 'L''impact de la 5G sur notre usage d''internet...', '2024-06-29', '2024-06-30', 1, 'pierre_leroy'),
    (27, 'Burn-out : Reconnaître les Signes', 'Prévenir l''épuisement professionnel avant qu''il ne soit trop tard...', '2024-07-04', '2024-07-04', 2, 'sophie_martin'),
    (28, 'Safari en Afrique : Guide Pratique', 'Préparer son safari photo dans les réserves africaines...', '2024-07-09', '2024-07-10', 3, 'jean_dupont'),
    (29, 'Vins et Fromages : Les Accords Parfaits', 'Guide pour réussir vos dégustations...', '2024-07-14', '2024-07-15', 4, 'lucie_bernard'),
    (30, 'Crossfit : Pour Qui, Pour Quoi ?', 'Découverte de cette discipline intense et complète...', '2024-07-19', '2024-07-19', 5, 'nicolas_simon');