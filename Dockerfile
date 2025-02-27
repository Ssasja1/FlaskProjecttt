#SO y la imagen (tecnologia)
FROM python:3.12-slim
#Directorio de trabajo, similar a git clone
WORKDIR /app
#Copiar los archivos #Git clone
COPY . /app
#Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt
#Puerto de la aplicacion de Docker
EXPOSE 5000
#Comando para ejecutar la aplicacion
CMD ["python","app.py"]