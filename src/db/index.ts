import { drizzle } from "drizzle-orm/mysql2";
import mysql from "mysql2/promise";
import {ENV} from "@/env"
import * as schema from "./schema"

const connection = await mysql.createConnection({
  host: ENV.DB_HOST,
  user: ENV.DB_USER,
  database: ENV.DB_DATABASE,
  password: ENV.DB_PASS
});

export const db = drizzle(connection, {schema, mode:"default"});
export {schema}