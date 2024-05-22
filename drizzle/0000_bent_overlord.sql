CREATE TABLE `flashcard` (
	`id` int NOT NULL,
	`question` text,
	`correctAnswer` text,
	`fillerAnswer` text,
	CONSTRAINT `flashcard_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `topic` (
	`id` int NOT NULL,
	`label` varchar(64),
	CONSTRAINT `topic_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `user` (
	`id` int NOT NULL,
	`username` varchar(64),
	`email` varchar(320),
	`passwordHash` varchar(255),
	CONSTRAINT `user_id` PRIMARY KEY(`id`)
);
