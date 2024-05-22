CREATE TABLE `namespace` (
	`id` int NOT NULL,
	`public` boolean NOT NULL,
	`label` varchar(64),
	`topicid` int NOT NULL,
	CONSTRAINT `namespace_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
ALTER TABLE `namespace` ADD CONSTRAINT `namespace_topicid_topic_id_fk` FOREIGN KEY (`topicid`) REFERENCES `topic`(`id`) ON DELETE no action ON UPDATE no action;