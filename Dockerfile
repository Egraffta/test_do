# Usa una imagen base de Python
FROM python:3.12

# Establece el directorio de trabajo
WORKDIR /test_do

# Copia los archivos de requisitos y la aplicación
COPY requirements.txt requirements.txt
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto que usará la aplicación
EXPOSE 8000

# Comando para iniciar la aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
