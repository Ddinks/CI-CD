[![FastAPI Testing](https://github.com/Ddinks/CI-CD/actions/workflows/test.yml/badge.svg)](https://github.com/Ddinks/CI-CD/actions/workflows/test.yml)

[![Docker Build and Push](https://github.com/Ddinks/CI-CD/actions/workflows/docker-deploy.yml/badge.svg)](https://github.com/Ddinks/CI-CD/actions/workflows/docker-deploy.yml)


# CI-CD

![image](https://github.com/user-attachments/assets/45ae5485-4749-4957-b27f-7605a2550d94)


Test de l'api avec le prompt": "Hi how are you ?" 



![image](https://github.com/user-attachments/assets/f6eaa764-fea1-430f-b0b9-7a527d646dff)


TEst avec l'api conteneurisé avec le prompt "Bonjour, comment ca va ?"


![image](https://github.com/user-attachments/assets/54c14fcf-2368-4ca8-bf8e-734db6facd00)


Test.sh lancé avec le prompt What is a LLM


![image](https://github.com/user-attachments/assets/b1fa74ac-c5a2-4f8a-ae63-3ffe8a19a0df)


Ajout du SSL sur la fastapi





nginx:
    build:
      context: .
      dockerfile: Dockerfile.nginx
    ports:
      - "80:80"    # Port HTTP
      - "443:443"  # Port HTTPS
    volumes:
      - ./nginx.conf:/etc/nginx/conf.d/default.conf
      - ./certs:/etc/nginx/certs
      - ./logs/nginx:/var/log/nginx




from fastapi.testclient import TestClient
from mini_groq import app

client = TestClient(app)

def test_status():
    response = client.get("/status")
    assert response.status_code == 200
    assert response.json() == {"message": "OK"}

![image](https://github.com/user-attachments/assets/5e8d3255-d433-426d-b5f9-d68033d16fac)

adding testing




Tox script :
pygaya@pygaya-virtual-machine:~/CI-CD/CI-CD$ cat tox.ini
[tox]
envlist = py38, py310

[testenv]
deps = 
    pytest
    fastapi
    httpx               # Add pytest as a dependency
    groq
setenv = 
    GROQ =

commands = 
    pytest test_app.py  # Run pytest on your test file

[travis]
python =
    3.8
    3.10




