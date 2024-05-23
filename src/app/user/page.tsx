'use server';
import { db, schema } from '@/db';
import { faker } from '@faker-js/faker';
import * as argon2 from 'argon2';

export default async function page() {
  const pass = faker.internet.password();
  const passwordHash = await argon2.hash(pass);
  const result = await db
    .insert(schema.user)
    .values([
      {
        id: Math.random() * 1000,
        username: faker.internet.userName(),
        eamil: faker.internet.email(),
        passwordHash,
      },
    ]);
  console.log(result[0].insertId);
  return <h1>Hello from user page</h1>;
}
