Create database ODI_WORD_CUP

CREATE TABLE  Season (
  season_id INT  Not null PRIMARY KEY identity(1,1),
  years varchar (50) NOT NULL,
  start_date varchar (50) NOT NULL,
  End_date varchar (50) NOT NULL,
  Total_match INT NOT NULL,
  Total_teams INT NOT NULL
 )


 CREATE TABLE Series (
  series_id INT NOT NULL  PRIMARY KEY identity (1,1),
  year varchar (50) not  NULL,
  start_date varchar (50)  NOT NULL,
  End_date varchar (50) NOT NULL
)
 
  CREATE TABLE  Countries (
  country_id INT NOT NULL PRIMARY KEY identity(1,1),
  name VARCHAR(50) NOT NULL unique
 )

 CREATE TABLE player_role(
  Role_id INT NOT NULL  PRIMARY KEY identity (1,1),
  Role VARCHAR(50) not NULL unique
  )


  CREATE TABLE Teams(
  team_id INT NOT NULL primary key identity(1,1),
  short_name varchar (50) NULL,
  country_id INT NOT NULL,
  constraint teams_countries foreign key (country_id)
  references countries(country_id)
  )
 
  CREATE TABLE player (
  player_id INT NOT NULL primary key  identity(1,1),
  Name VARCHAR(50) NULL,
  DOB varchar (50) not NULL,
  team_id INT NOT NULL,
  country_id INT NOT NULL,
  Role_id INT NOT NULL,

  constraint player_teams foreign key (team_id)
  references teams(team_id),

  constraint player_countries foreign key (country_id)
  references countries(country_id),

  constraint player_player_role foreign key (role_id)
  references player_role(role_id)
 )

 
  CREATE TABLE Studium(
  Studium_id INT NOT NULL primary key identity(1,1),
  name VARCHAR(100) NOT NULL,
  country_id INT NOT NULL,
  constraint studium_countries foreign key (country_id)
  references countries(country_id)
  )


  CREATE TABLE Team_participent_season (
  id INT NOT NULL primary key identity(1,1),
  team_id INT NOT NULL,
  season_id INT NOT NULL,

   constraint team_participent_season_teams foreign key (team_id)
  references teams(team_id),

   constraint team_participent_season_season foreign key (season_id)
  references season(season_id)
  )

   CREATE TABLE Seasons_captian (
  id INT NOT NULL primary key identity (1,1),
  player_id INT NOT NULL,
  Team_id INT NOT NULL,
  season_id INT NOT NULL,

  constraint Seasons_captian_player foreign key (player_id)
  references player(player_id),

  constraint Seasons_captian_teams foreign key (team_id)
  references teams(team_id),

  constraint Seasons_captian_season foreign key (season_id)
  references season(season_id)
  )

  CREATE TABLE series_match (
  series_mid INT NOT NULL primary key identity(1,1),
  Match_No NVARCHAR(15) not  NULL,
  series_id INT NOT NULL,
  date varchar (50) not NULL,
  Team_A INT NOT NULL,
  Team_B INT NOT NULL,
  Won_by NVARCHAR(100) not NULL,
  lose_by NVARCHAR(100) not NULL,
  tied nvarchar(50),
  Studium_id INT NOT NULL,

  constraint series_match_series foreign key (series_id)
  references series(series_id),

  constraint series_match_teams1 foreign key (Team_A)
  references teams(team_id),
  constraint series_match_teams2 foreign key (Team_B)
  references teams(team_id),

  constraint series_match_studium foreign key (studium_id)
  references studium(studium_id)
  )

    CREATE TABLE series_performance (
  performance_id INT NOT NULL primary key identity(1,1),
  Wicket INT  not NULL check (wicket>=0 ),
  Overs FLOAT not  NULL check (Overs>0) ,
  team_id INT NOT NULL,
  series_mid INT NOT NULL,
 
  constraint series_performance_team foreign key (Team_id)
  references teams(team_id),
  constraint series_performance_series_match foreign key (series_mid)
  references series_match(series_mid)
  )

  CREATE TABLE seriers_winner (
  SWid INT NOT NULL,
  series_id INT NOT NULL,
  team_id INT NOT NULL,

  constraint seriers_winner_team foreign key (Team_id)
  references teams(team_id),
  constraint seriers_winner_series foreign key (series_id)
  references series(series_id)
  )



  
   CREATE TABLE season_match (
  season_mid INT NOT NULL primary key identity(1,1),
  Match_No NVARCHAR(15) not  NULL,
  season_id INT NOT NULL,
  date varchar (50) not NULL,
  Team_A INT NOT NULL,
  Team_B INT NOT NULL,
  Won_by NVARCHAR(100) not NULL,
  lose_by NVARCHAR(100) not NULL,
  tied nvarchar(50),
  Studium_id INT NOT NULL,

  constraint season_match_season foreign key (season_id)
  references season(season_id),

  constraint season_match_teams1 foreign key (Team_A)
  references teams(team_id),
  constraint season_match_teams2 foreign key (Team_B)
  references teams(team_id),

  constraint season_match_studium foreign key (studium_id)
  references studium(studium_id)
  )

  CREATE TABLE season_performance (
  performance_id INT NOT NULL primary key identity(1,1),
  Wicket INT  not NULL check (Wicket>=0) ,
  Overs FLOAT not  NULL check (Overs>0) ,
  team_id INT NOT NULL,
  season_mid INT NOT NULL,
 
  constraint season_performance_team foreign key (Team_id)
  references teams(team_id),
  constraint season_performance_season_match foreign key (season_mid)
  references season_match(season_mid)
  )

   CREATE TABLE season_winner (
  winner_id INT NOT NULL,
  season_id INT NOT NULL,
  team_id INT NOT NULL,

  constraint season_winner_team foreign key (Team_id)
  references teams(team_id),
  constraint season_winner_season foreign key (season_id)
  references season(season_id)
  )

    create table Team_player (
  Team_playerID int Not null primary key identity(1,1),
  team_id int Not Null,
  Player_id int NOt NUll,
  season_id int not Null,

  constraint Team_player_teams foreign key (team_id)
  references teams(team_id),
  constraint Team_player_player foreign key (player_id)
  references player(player_id),
  constraint Team_player_season foreign key (season_id)
  references season(season_id)
   )



 
  







