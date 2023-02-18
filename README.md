# Docker_task_B8.2.1

Практика по сборке Docker Compose.

Задание на самопроверку:

Установите себе Docker и Docker Compose.
Сохраните app.py Python-скрипт из юнита выше.
Реализуйте его сборку через Docker Compose и запустите.

Порядок действий:
  1. Создаём необходимые файлы: Dockerfile для сборки имиджа вэб приложения,
    файл с зависимостями requirements.txt, где указываем пакеты к установке,
    Python-скрипт app.py для отображения работы наших докер-контейнеров,
    docker-compose.yml с инструкциями по сборке двух контейнеров
  2. Запускаем сборку контейнеров через docker-compose: docker compose build .
  3. После удачной сборки запускаем контейнеры: docker compose up -d
  4. Проверяем работу:
     docker ps
     
     http://192.168.3.7:5000/ 
