# Базовый образ
FROM python:latest

# Установка зависимостей
COPY app/requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Копирование файлов приложения в контейнер
COPY ./app /app
WORKDIR /app

# Указываем порт, который будет прослушиваться веб-приложением
EXPOSE 5000

# Команда для запуска веб-приложения
CMD ["python", "app.py"]