FROM python:3.7-alpine
# Устанавливаем рабочую директорию в которую попадём после запуска имиджа
WORKDIR /code
# Усьтанавливаем переменные
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
# Устанавливаем без кэша пакеты для работы с python
RUN apk add --no-cache gcc musl-dev linux-headers
# Копируем из сборочной директории в контейнер файл requirements.txt, где перечислены пакеты, которые нужно установить через pip
COPY requirements.txt requirements.txt
# Учтанавливаем через pip пакеты перечисленные в файлике requirements.txt
RUN pip install -r requirements.txt
# Открываем на стороне контейнера порт
EXPOSE 5000
# Копируем все файлы из локальной текущей папки (первая точка) в папку указанную в директории WORKDIR - /code (вторая точка).
COPY . .
# Запускаем процесс flask из домашней директори /code 
CMD ["flask", "run"]
