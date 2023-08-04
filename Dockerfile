# # The first instruction is what image we want to base our container on
# # We Use an official Python runtime as a parent image

# FROM python:3.11.2

# # Set environment variables for Python
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Allows docker to cache installed dependencies between builds
# COPY requirements.txt requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Mounts the application code to the image
# COPY . code
# WORKDIR /code

# EXPOSE 8080

# # In your Dockerfile, before the CMD line
# # RUN echo "172.19.0.2    db" >> /etc/hosts

# # runs the production server
# # ENTRYPOINT ["python", "manage.py"]
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]



FROM python:3.10-slim-buster


WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8080

# CMD python manage.py runserver
CMD python manage.py runserver 0.0.0.0:8080