#!/bin/bash

# ============================================
# KELTIC KRAKEN v3.0 - INSTALLER (Linux/Mac)
# ============================================

set -e

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

clear

echo -e "${CYAN}"
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║   🔪 KELTIC KRAKEN - INSTALLER                                ║"
echo "║   Ireland Crime Intelligence Platform                         ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Check Python
echo -e "\n${BLUE}📌 Verificando Python...${NC}"
if command -v python3 &>/dev/null; then
    PYTHON_VERSION=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
    echo -e "${GREEN}✅ Python ${PYTHON_VERSION} encontrado${NC}"
    
    if [[ $(echo "$PYTHON_VERSION < 3.8" | bc) -eq 1 ]]; then
        echo -e "${RED}❌ Python 3.8+ requerido. Actualiza Python${NC}"
        exit 1
    fi
else
    echo -e "${RED}❌ Python 3 no encontrado. Instala Python 3.8 o superior${NC}"
    exit 1
fi

# Create virtual environment
echo -e "\n${BLUE}📌 Creando entorno virtual...${NC}"
read -p "¿Crear entorno virtual? (y/n): " CREATE_VENV

if [[ "$CREATE_VENV" =~ ^[Yy]$ ]]; then
    python3 -m venv venv
    source venv/bin/activate
    echo -e "${GREEN}✅ Entorno virtual activado${NC}"
else
    echo -e "${YELLOW}⚠️ Continuando sin entorno virtual${NC}"
fi

# Install dependencies
echo -e "\n${BLUE}📌 Instalando dependencias...${NC}"
pip install --upgrade pip
pip install -r requirements.txt

# Make script executable
chmod +x keltic_kraken.py

# Final message
echo -e "\n${GREEN}"
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║   ✅ INSTALACIÓN COMPLETADA CON ÉXITO!                        ║"
echo "║                                                               ║"
echo "║   Para ejecutar:                                              ║"
echo "║                                                               ║"
echo "║   source venv/bin/activate  # Si creaste entorno virtual      ║"
echo "║   python3 keltic_kraken.py                                    ║"
echo "║                                                               ║"
echo "║   🔪 KELTIC KRAKEN - Ready to monitor Ireland's crime         ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo -e "${NC}"
