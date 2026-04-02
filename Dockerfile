# 1. Base Image: Python ka chota version use karenge
FROM python:3.11-slim

# 2. Working Directory: Container ke andar ek folder banao
WORKDIR /app

# 3. Requirements Copy: Pehle libraries ki list copy karo
COPY requirements.txt .

# 4. Install Dependencies: Libraries install karo
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy Code: Apna baaki saara code container mein daalo
COPY . .

# 6. Port: FastAPI default mein 8000 par chalta hai
EXPOSE 8000

# 7. Start Command: Server ko shuru karne ki command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]