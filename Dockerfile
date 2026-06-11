# ============================================
# KELTIC KRAKEN v3.0 - Dockerfile
# Ireland Crime Intelligence Platform
# ============================================

FROM python:3.11-slim

LABEL maintainer="Condor2026"
LABEL description="KELTIC KRAKEN - Ireland Crime Intelligence Platform"
LABEL version="3.0"

WORKDIR /app

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copiar requirements e instalar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar la aplicación
COPY keltic_kraken.py .

# Crear volumen para datos persistentes
VOLUME ["/app/data"]

# Exponer puerto del dashboard web
EXPOSE 5014

# Ejecutar
CMD ["python", "-u", "keltic_kraken.py"]
