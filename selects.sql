--1.Название и год выхода альбомов, вышедших в 2018 году.
select name, year_public 
from album a 
where year_public = 2018;

-- 2.Название и продолжительность самого длительного трека.
select name, duration
from song s 
where duration = (select max(duration) from song);


--3.Название треков, продолжительность которых не менее 3,5 минут.
select name 
from song s 
where duration >= (3.5 * 60);

--4.Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name
from collection c 
where year_public between 2018 and 2020;

--5.Исполнители, чьё имя состоит из одного слова.
select name 
from author a 
where name not like '% %';

--6.Название треков, которые содержат слово «мой» или «my».
select name
from song s 
where name like '%мой%'
or name like '%my%';
