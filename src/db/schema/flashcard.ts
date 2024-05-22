import { int, mysqlTable, text } from "drizzle-orm/mysql-core";

export const flashcard = mysqlTable('flashcard', {
  id: int('id').primaryKey(),
  question: text('question'),
  correctAnswer: text('correctAnswer'),
//   TODO: convert to typed json
  fillerAnswer: text('fillerAnswer')
});