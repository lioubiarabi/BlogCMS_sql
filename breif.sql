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

