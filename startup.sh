#!/bin/bash

echo "Запускаем докер 🐋"
docker compose up -d --wait

echo "Накатываем миграции 🛠"
npx prisma db push

echo "Запускаем приложение 🚀"
npm run dev