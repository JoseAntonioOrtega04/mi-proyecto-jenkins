# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de la aplicación al contenedor
COPY app.py .

# Comando que se ejecutará cuando el contenedor inicie
CMD ["python", "app.py"]
