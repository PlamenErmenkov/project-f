import { int, mysqlTable, varchar, boolean } from 'drizzle-orm/mysql-core';
import { topic } from './topic';

export const namespace = mysqlTable('namespace', {
  id: int('id').primaryKey().autoincrement(),
  public: boolean('public').notNull(),
  label: varchar('label', { length: 64 }).notNull(),
  topicId: int('topicId')
    .references(() => topic.id)
    .notNull(),
});
