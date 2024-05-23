import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';

export const topic = mysqlTable('topic', {
  id: int('id').primaryKey(),
  label: varchar('label', { length: 64 }),
});
