CREATE TABLE `User` (
	`user_id`	INTEGER	NOT NULL	COMMENT 'PK',
	`email`	VARCHAR(100)	NULL	COMMENT 'unique, Kakao API',
	`password`	VARCHAR(20)	NULL,
	`user_name`	VARCHAR(20)	NOT NULL	COMMENT 'Kakao API',
	`gender`	VARCHAR(10)	NOT NULL	COMMENT 'Kakao API',
	`birth_date`	DATE	NOT NULL	COMMENT 'Kakao API',
	`phone_number`	VARCHAR(15)	NOT NULL	COMMENT 'unique, Kakao API',
	`nickname`	VARCHAR(50)	NULL	COMMENT 'unique',
	`is_guest`	BOOL	NOT NULL,
	`memo`	VARCHAR(200)	NULL
);

CREATE TABLE `Team` (
	`team_id`	INTEGER	NOT NULL	COMMENT 'PK',
	`team_name`	VARCHAR(50)	NOT NULL	COMMENT 'unique',
	`foundation_date`	DATE	NOT NULL,
	`area`	VARCHAR(30)	NOT NULL,
	`memo`	VARCHAR(200)	NULL
);

CREATE TABLE `TeamSchedule` (
	`exercise_id`	INTEGER	NOT NULL	COMMENT 'PK',
	`team_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`date`	DATE	NOT NULL,
	`time`	TIME	NOT NULL,
	`site`	VARCHAR(100)	NOT NULL,
	`type`	VARCHAR(50)	NOT NULL,
	`is_public`	BOOL	NOT NULL	COMMENT 'T: public / F: private',
	`is_limit`	BOOL	NOT NULL,
	`limit`	INTEGER	NULL,
	`applicant`	INTEGER	NULL,
	`memo`	VARCHAR(200)	NULL
);

CREATE TABLE `Comment` (
	`comment_id`	INTEGER	NOT NULL	COMMENT 'PK',
	`user_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`exercise_id`	INTEGER	NOT NULL	COMMENT 'FK',
	`team_id`	INTEGER	NOT NULL	COMMENT 'FK',
	`content`	VARCHAR(200)	NOT NULL
);

CREATE TABLE `Members` (
	`team_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`user_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`join_type`	VARCHAR(20)	NOT NULL	COMMENT 'Coach / Captain / Staff / Member'
);

CREATE TABLE `Participant` (
	`exercise_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`team_id`	INTEGER	NOT NULL	COMMENT 'FK, PK',
	`user_id`	INTEGER	NOT NULL	COMMENT 'FK',
	`approval`	BOOL	NULL
);

ALTER TABLE `User` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `Team` ADD CONSTRAINT `PK_TEAM` PRIMARY KEY (
	`team_id`
);

ALTER TABLE `TeamSchedule` ADD CONSTRAINT `PK_TEAMSCHEDULE` PRIMARY KEY (
	`exercise_id`,
	`team_id`
);

ALTER TABLE `Comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
	`comment_id`,
	`user_id`
);

ALTER TABLE `Members` ADD CONSTRAINT `PK_MEMBERS` PRIMARY KEY (
	`team_id`,
	`user_id`
);

ALTER TABLE `Participant` ADD CONSTRAINT `PK_PARTICIPANT` PRIMARY KEY (
	`exercise_id`,
	`team_id`
);

ALTER TABLE `TeamSchedule` ADD CONSTRAINT `FK_Team_TO_TeamSchedule_1` FOREIGN KEY (
	`team_id`
)
REFERENCES `Team` (
	`team_id`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_User_TO_Comment_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `User` (
	`user_id`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_TeamSchedule_TO_Comment_1` FOREIGN KEY (
	`exercise_id`
)
REFERENCES `TeamSchedule` (
	`exercise_id`
);

ALTER TABLE `Comment` ADD CONSTRAINT `FK_TeamSchedule_TO_Comment_2` FOREIGN KEY (
	`team_id`
)
REFERENCES `TeamSchedule` (
	`team_id`
);

ALTER TABLE `Members` ADD CONSTRAINT `FK_Team_TO_Members_1` FOREIGN KEY (
	`team_id`
)
REFERENCES `Team` (
	`team_id`
);

ALTER TABLE `Members` ADD CONSTRAINT `FK_User_TO_Members_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `User` (
	`user_id`
);

ALTER TABLE `Participant` ADD CONSTRAINT `FK_TeamSchedule_TO_Participant_1` FOREIGN KEY (
	`exercise_id`
)
REFERENCES `TeamSchedule` (
	`exercise_id`
);

ALTER TABLE `Participant` ADD CONSTRAINT `FK_TeamSchedule_TO_Participant_2` FOREIGN KEY (
	`team_id`
)
REFERENCES `TeamSchedule` (
	`team_id`
);

ALTER TABLE `Participant` ADD CONSTRAINT `FK_User_TO_Participant_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `User` (
	`user_id`
);

