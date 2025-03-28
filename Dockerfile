# Folosește Python ca bază
FROM python:3.9

# Setează directorul de lucru
WORKDIR /flask_app

# Copiază fișierele în container
COPY flask_app/requirements.txt requirements.txt
COPY flask_app/flask_app.py flask_app.py

# Instalează Flask
RUN pip install -r requirements.txt

# Expune portul 5000
EXPOSE 5001

# Rulează aplicația
CMD ["python", "flask_app.py"]
