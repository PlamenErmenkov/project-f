ALTER TABLE `namespace` RENAME COLUMN `topicid` TO `topicId`;--> statement-breakpoint
ALTER TABLE `namespace` DROP FOREIGN KEY `namespace_topicid_topic_id_fk`;
--> statement-breakpoint
ALTER TABLE `flashcard` MODIFY COLUMN `id` int AUTO_INCREMENT NOT NULL;--> statement-breakpoint
ALTER TABLE `flashcard` MODIFY COLUMN `question` text NOT NULL;--> statement-breakpoint
ALTER TABLE `flashcard` MODIFY COLUMN `fillerAnswer` text NOT NULL;--> statement-breakpoint
ALTER TABLE `namespace` MODIFY COLUMN `id` int AUTO_INCREMENT NOT NULL;--> statement-breakpoint
ALTER TABLE `namespace` MODIFY COLUMN `label` varchar(64) NOT NULL;--> statement-breakpoint
ALTER TABLE `topic` MODIFY COLUMN `id` int AUTO_INCREMENT NOT NULL;--> statement-breakpoint
ALTER TABLE `topic` MODIFY COLUMN `label` varchar(64) NOT NULL;--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `id` int AUTO_INCREMENT NOT NULL;--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `username` varchar(64) NOT NULL;--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `email` varchar(320) NOT NULL;--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `passwordHash` varchar(255) NOT NULL;--> statement-breakpoint
ALTER TABLE `namespace` ADD CONSTRAINT `namespace_topicId_topic_id_fk` FOREIGN KEY (`topicId`) REFERENCES `topic`(`id`) ON DELETE no action ON UPDATE no action;