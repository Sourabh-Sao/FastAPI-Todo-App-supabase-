# 🚀 Smart Task Manager Pro

A high-performance, containerized **CRUD Task Management Application** built with **FastAPI** and **SQLModel**, using **Supabase** (PostgreSQL) as the database.

Modern, fast, secure, and production-ready backend following best practices.

![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-3FCF8E?style=for-the-badge&logo=supabase&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

## ✨ Features

- ✅ **Full CRUD Operations** – Create, Read, Update, and Delete tasks
- 🔒 **Secure Environment Management** using `.env` files
- 🛡️ **Robust Data Validation** with Pydantic
- 📦 **Fully Dockerized** for consistent deployment
- 📖 **Auto-generated Interactive Documentation** (Swagger UI + ReDoc)
- ⚡ **High Performance** thanks to FastAPI's asynchronous capabilities

## 🛠️ Tech Stack

- **Framework**: FastAPI (Async Python)
- **Database**: Supabase (Managed PostgreSQL)
- **ORM**: SQLModel (Pydantic + SQLAlchemy)
- **Validation**: Pydantic
- **Containerization**: Docker

## 🚀 Getting Started

## 1. Prerequisites

- Python 3.11+
- Docker (optional but recommended)
- A Supabase project (with PostgreSQL connection URL)

## 2. Environment Setup

Create a `.env` file in the root directory and add your Supabase connection string:

```bash
DATABASE_URL=postgresql://postgres.[YOUR_PROJECT_REF]:[YOUR_PASSWORD]@[aws-1-ap-south-1.pooler.supabase.com:6543/postgres](https://aws-1-ap-south-1.pooler.supabase.com:6543/postgres)
```

## 3. Local Installation

### Clone the repository
git clone https://github.com/Sourabh-Sao/FastAPI-Todo-App-supabase-.git

### Navigate to project folder
cd FastAPI-Todo-App-supabase-

### Create and activate virtual environment
python -m venv venv

source venv/bin/activate  

venv\Scripts\activate           

### Install dependencies
pip install -r requirements.txt

### Run the application
uvicorn main:app --reload


## 4. Docker Deployment

### Build the Docker image
docker build -t task-manager-app .

### Run the container
docker run -d -p 8000:8000 --env-file .env --name task-manager-container task-manager-app


## 🚦 API Endpoints

Once the application is running, you can access the interactive API documentation:

- **Swagger UI**: [http://localhost:8000/docs](http://localhost:8000/docs)
- **ReDoc**: [http://localhost:8000/redoc](http://localhost:8000/redoc)

## Available Endpoints

| Method | Endpoint          | Description                     |
|--------|-------------------|---------------------------------|
| GET    | `/`               | Health check / Welcome message  |
| POST   | `/todos`          | Create a new task               |
| GET    | `/todos`          | Get all tasks                   |
| PUT    | `/todos/{id}`     | Update an existing task         |
| DELETE | `/todos/{id}`     | Delete a task                   |

### 📂 Project Structure

```bash
.
├── main.py              # FastAPI app entry point and routes
├── database.py          # SQLModel engine and session setup
├── models.py            # Data models & Pydantic validation schemas
├── requirements.txt     # Python dependencies
├── Dockerfile           # Docker configuration
├── .dockerignore        # Exclusions for Docker build
├── .gitignore           # Git ignore rules
└── .env                 # Environment variables
```

**Built with ❤️ and FastAPI + Supabase**