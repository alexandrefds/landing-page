# Use a imagem oficial do Python como base
FROM python:3.9

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o conteúdo do diretório local para o diretório de trabalho do contêiner
COPY ./app .

# Instalar as dependências do Python
RUN pip install --no-cache-dir Flask

# Expor a porta 5000 para acessar o aplicativo Flask
EXPOSE 5000

# Copiar os arquivos estáticos do Bootstrap
COPY ./static /app/static

# Definir a variável de ambiente FLASK_APP
ENV FLASK_APP=app.py

# Comando para iniciar automaticamente o servidor Flask ao subir o contêiner
CMD ["flask", "run", "--host=0.0.0.0"]
