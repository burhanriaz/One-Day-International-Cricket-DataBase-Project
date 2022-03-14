Set identity_insert Season  on
insert into season (season_id,years,start_date,end_date,Total_match,Total_teams) Select * from sheet1$
Set identity_insert Season  off


Set identity_insert series  on
insert into series (series_id,year,start_date,end_date) Select * from sheet2$
Set identity_insert Season  off



Set identity_insert country  on
insert into country (country_id,name) Select * from sheet4$
Set identity_insert country  off


Set identity_insert player_role  on
insert into player_role (Role_id,Role) Select * from sheet5$
Set identity_insert player_role  off


Set identity_insert teams  on
insert into teams (team_id,short_name,country_id) Select * from sheet6$
Set identity_insert teams off

Set identity_insert player  on
insert into player (player_id, Name, DOB, team_id, Country_id, Role_id) Select * from sheet7$
Set identity_insert player off

Set identity_insert stadium  on
insert into stadium (stadium_id,Name,country_id) Select * from sheet8$
Set identity_insert stadium  off


Set identity_insert Team_participent_season  on
insert into Team_participent_season (id,team_id,season_id) Select * from sheet9$
Set identity_insert Team_participent_season  off


Set identity_insert Seasons_captian  on
insert into Seasons_captian (id,player_id,team_id,season_id) Select * from sheet10$
Set identity_insert Seasons_captian  off

Set identity_insert series_match  on
insert into series_match (series_mid,Match_No,series_mid,date,Team_A,Team_B,won_by,lose_by,tied,stadium_id) Select * from sheet11$
Set identity_insert series_match  off



Set identity_insert series_performance  on
insert into series_performance (performance_id,Runs,wicket,overs,team_id,series_mid) Select * from sheet12$
Set identity_insert series_performance  off


Set identity_insert series_winner  on
insert into series_winner (Swid,Series_id,team_id) Select * from sheet13$
Set identity_insert series_winner  off


Set identity_insert season_match  on
insert into season_match(season_mid,Match_No,season_id,date,Team_A,Team_B,won_by,lose_by,tied,stadium_id) Select * from sheet14$
Set identity_insert season_match  off



Set identity_insert season_performance  on
insert into season_performance (performance_id,Runs,wicket,overs,team_id,season_mid) Select * from sheet15$
Set identity_insert season_performance  off


Set identity_insert season_winner  on
insert into season_winner (winner_id,season_id,team_id) Select * from sheet16$
Set identity_insert season_winner  off


Set identity_insert team_player  on
insert into team_player ( Team_playerID,player_id,team_id,season_id) Select * from sheet17$
Set identity_insert  Team_playerID  off




