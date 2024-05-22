import { int, mysqlTable, varchar, boolean } from "drizzle-orm/mysql-core";
import { topic } from "./topic";

export const namespace = mysqlTable('namespace', {
    id: int('id').primaryKey(),
    public: boolean('public').notNull(),
    label: varchar('label', {length:64}),
    topicId: int('topicid').references(() => topic.id).notNull()
})