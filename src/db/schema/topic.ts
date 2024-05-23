import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';

export const topic = mysqlTable('topic', {
  id: int('id').primaryKey().autoincrement(),
  label: varchar('label', { length: 64 }).notNull(),
});
