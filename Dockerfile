FROM python:3.13.0
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /app/
EXPOSE 6000
CMD [ "gunicorn", "--bind", "0.0.0.0:6000", "app:app" ]