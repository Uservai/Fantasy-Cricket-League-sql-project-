show databases;

CREATE database FantasyLeague;
USE FantasyLeague;

CREATE TABLE Players(
player_id INT primary key auto_increment,
player_name VARCHAR(100) not null,
team_name VARCHAR(100),
role_ VARCHAR(50),
nationality VARCHAR(50)
);

CREATE TABLE Teams(
team_id INT primary key auto_increment,
team_name VARCHAR(100) unique not null,
owner_name VARCHAR(100)
);

CREATE TABLE TeamPlayers(
team_id INT,
player_id INT,
foreign key (team_id) REFERENCES Teams(team_id),
foreign key (player_id) REFERENCES Players(player_id),
primary key (team_id, player_id)
);


CREATE TABLE Matches(
match_id INT primary key auto_increment,
match_date DATE,
team1 varchar(100),
team2 varchar(100),
venue varchar(100)
);

CREATE TABLE PlayerPerformance(
match_id INT,
player_id INT,
runs INT,
wickets INT,
catches INT,
points INT,
foreign key (match_id) references Matches(match_id),
foreign key (player_id) references Players(player_id),
primary key (match_id,player_id)
);

INSERT into Players(player_name, team_name, role_, nationality) values
('MS Dhoni','CSK','Batsman','India'),
('Ajinkya Rahane','KKR','Batsman','India'),
('Rachin ravindra','CSK','Batsman','New Zealand'),
('Vaibhav Suryawanshi','RR','Batsman','Indian'),
('Arshdeep Singh','PBK','Bowler','Indian'),
('Jaspreet Bumrah','MI','Bowler','Indian');

INSERT into Teams(team_name, owner_name) values
('Daya dandiya','Daya Gada'),
('Babita blaster','Babita Iyer');

INSERT into TeamPlayers(team_id, player_id) values
(1, 1),
(1, 6),
(1, 3),
(2, 2),
(2, 4),
(2, 5);

INSERT into Matches(match_date, team1, team2, venue) values
('2025-05-22', 'CSK','KKR','HPC Stadium');

INSERT into PlayerPerformance(match_id, player_id, runs, wickets, catches, points) values
(1, 1, 100, 0, 2, 90),
(1, 2, 51, 1, 1, 75),
(1, 3, 60, 0, 1, 100);

SELECT p.player_name, SUM(pp.points) AS total_points
from Players p
join PlayerPerformance pp ON p.player_id = pp.player_id
group by p.player_id
order by total_points desc
limit 5;

SELECT t.team_name, SUM(pp.points) AS total_points
from Teams t
join TeamPlayers tp on t.team_id = tp.team_id
join PlayerPerformance pp on tp.player_id = pp.player_id
group by t.team_id
order by total_points desc;

SELECT m.match_date, p.player_name, pp.runs, pp.wickets, pp.catches, pp.points
from PlayerPerformance pp
join Players p on pp.player_id = p.player_id
join Matches m on pp.match_id = m.match_id
order by m.match_date;

SELECT player_name, total_points,
RANK() over (order by total_points desc) as rank_
from(
select p.player_name, SUM(pp.points) as total_points
from Players p 
join PlayerPerformance pp on p.player_id = pp.player_id
group by p.player_id
) as PlayerTotals;


/*SCHEMA: https://dbdiagram.io/d/FantasyLeague-682e09f0b9f7446da38e5e01*/
