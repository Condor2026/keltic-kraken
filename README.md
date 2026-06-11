# 📄 README.md


<p align="center">
  <img src="https://img.shields.io/badge/version-3.0-red?style=for-the-badge&logo=github">
  <img src="https://img.shields.io/badge/license-GPLv3-blue?style=for-the-badge&logo=gnu">
  <img src="https://img.shields.io/badge/python-3.8+-green?style=for-the-badge&logo=python">
  <img src="https://img.shields.io/badge/lines-2250+-brightgreen?style=for-the-badge">
  <img src="https://img.shields.io/badge/coverage-32_counties-orange?style=for-the-badge">
</p>

<h1 align="center">🔪 KELTIC KRAKEN v3.0</h1>
<h3 align="center">IRELAND CRIMINAL INTELLIGENCE PLATFORM</h3>

<p align="center">
  <b>Monitorización en tiempo real de narcotráfico, violencia de bandas y crimen organizado</b><br>
  <i>Cobertura total de los 32 condados de Irlanda (República + Irlanda del Norte)</i>
</p>

<br>

## 📋 TABLA DE CONTENIDOS

- [¿Qué es KELTIC KRAKEN?](#qué-es-keltic-kraken)
- [Características Principales](#características-principales)
- [Requisitos del Sistema](#requisitos-del-sistema)
- [Instalación Paso a Paso](#instalación-paso-a-paso)
- [Primer Uso - Guía Rápida](#primer-uso---guía-rápida)
- [Comandos del Menú Terminal](#comandos-del-menú-terminal)
- [Dashboard Web](#dashboard-web)
- [Cobertura Geográfica](#cobertura-geográfica)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Solución de Problemas](#solución-de-problemas)
- [Licencia](#licencia)
- [Autor](#autor)

---

## ¿QUÉ ES KELTIC KRAKEN?

KELTIC KRAKEN es una plataforma de inteligencia criminal **open source** diseñada específicamente para **Irlanda**. El sistema:

1. **Escanea automáticamente** 85+ periódicos irlandeses (nacionales, regionales y locales)
2. **Detecta noticias** relacionadas con crimen organizado, narcotráfico, violencia de bandas y operaciones policiales
3. **Clasifica** cada incidente por tipo (drogas, asesinato, violencia de bandas, operación Garda, etc.)
4. **Geolocaliza** por condado (Dublin, Cork, Galway, Belfast, etc.)
5. **Genera estadísticas** y gráficos interactivos en tiempo real
6. **Exporta datos** en JSON, CSV o HTML para análisis externos

### ¿Para quién es?

| Usuario | Beneficio |
|---------|-----------|
| **Periodistas** | Fuente de información consolidada sobre crimen en Irlanda |
| **Investigadores** | Datos históricos para análisis de tendencias criminales |
| **Fuerzas de seguridad** | Visión general de la actividad criminal (uso ético) |
| **Ciudadanos** | Conciencia situacional de su comunidad |
| **Criminólogos** | Datos para estudios académicos |

---

## CARACTERÍSTICAS PRINCIPALES

| Categoría | Característica | Descripción |
|-----------|----------------|-------------|
| **Anti-bloqueo** | 150+ User-Agents | Rotación continua de navegadores para evitar detección |
| | Retry system | 3 intentos por fuente antes de marcarla como inactiva |
| | Random delays | Esperas aleatorias entre peticiones (0.8-2.0 segundos) |
| | Session persistence | Mantiene cookies y cabeceras entre peticiones |
| **Auto-reparación** | Auto-discovery URLs | Si una URL falla, busca automáticamente la correcta |
| | URL cache | Guarda URLs encontradas para futuras ejecuciones |
| | Smart pagination | Detecta automáticamente patrones de paginación |
| **Interfaz** | Terminal colorida | Menú con 12 comandos, colores y barras de progreso |
| | Web dashboard | 4 gráficos interactivos (Chart.js) |
| | Bilingüe | Español e Inglés completamente soportados |
| **Datos** | 85+ fuentes | Periódicos nacionales, regionales y locales |
| | 32 condados | Cobertura total de Irlanda (Norte y Sur) |
| | Tipos de crimen | 9 categorías diferentes |
| **Exportación** | JSON | Datos completos para procesamiento |
| | CSV | Compatible con Excel/Google Sheets |
| | HTML | Reporte profesional con gráficos incluidos |

---

## REQUISITOS DEL SISTEMA

### Mínimos
| Componente | Requisito |
|------------|-----------|
| **SO** | Windows 10 / macOS 11 / Linux (Ubuntu 20.04+) |
| **Python** | Versión 3.8 o superior |
| **RAM** | 512 MB (recomendado 1 GB) |
| **Almacenamiento** | 100 MB para el código + datos |
| **Internet** | Conexión necesaria para scraping |

### Verificar Python
```bash
# Linux / Mac
python3 --version

# Windows
python --version
```

Si no tienes Python: [Descargar Python 3.11+](https://www.python.org/downloads/)

---

## INSTALACIÓN PASO A PASO

### PASO 1: Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/keltic-kraken.git
cd keltic-kraken
```

### PASO 2: Crear entorno virtual (recomendado)

```bash
# Linux / Mac
python3 -m venv venv
source venv/bin/activate

# Windows
python -m venv venv
venv\Scripts\activate
```

### PASO 3: Instalar dependencias

```bash
pip install -r requirements.txt
```

**Dependencias que se instalan:**
- `requests==2.31.0` - Peticiones HTTP
- `beautifulsoup4==4.12.2` - Parseo de HTML
- `flask==2.3.3` - Servidor web
- `lxml==4.9.3` - Parser HTML alternativo
- `urllib3==2.1.0` - Manejo de conexiones

### PASO 4: Verificar instalación

```bash
python3 -c "import requests, bs4, flask; print('✅ Todo correcto')"
```

### PASO 5: Ejecutar

```bash
python3 keltic_kraken.py
```

---

## PRIMER USO - GUÍA RÁPIDA

Cuando ejecutes por **PRIMERA VEZ**, sigue estos pasos obligatorios:

### 1️⃣ Seleccionar idioma
```
🌍 SELECCIONE IDIOMA / SELECT LANGUAGE
┌──────────────────────────────────────────────────┐
│  [1] Español                                     │
│  [2] English                                     │
└──────────────────────────────────────────────────┘
➤ Opción: 1
```

### 2️⃣ Elegir modo de ejecución
```
┌────────────────────────────────────────────┐
│  ¿Cómo deseas ejecutar?                    │
├────────────────────────────────────────────┤
│  [1] Modo Terminal (recomendado)           │
│  [2] Modo Web (dashboard gráficos)         │
└────────────────────────────────────────────┘
➤ Elige: 1
```

### 3️⃣ VERIFICAR FUENTES (IMPORTANTE)
**Siempre haz esto primero:**

```bash
➤ Opción: 8
```

El sistema verificará las 85+ fuentes y:
- ✅ Marcará como activas las que funcionan
- ❌ Marcará como inactivas las que fallan
- 🔍 Aplicará auto-discovery a las URLs caídas
- 💾 Guardará las URLs encontradas en caché

**Resultado esperado:**
```
📊 RESULTADOS:
   Fuentes activas: 68 de 85
   Auto-discovery aplicado: 12 URLs encontradas
```

### 4️⃣ BUSCAR CRÍMENES

```bash
➤ Opción: 1
```

El sistema escaneará todas las fuentes activas. Verás:
- Barra de progreso en tiempo real
- Cada fuente procesada con su condado
- Número de incidentes encontrados por página

```
🔪 KELTIC KRAKEN - ESCANEANDO IRLANDA
================================================================================
📰 Irish Times (1/68)
   📍 Condado: Dublin
   📄 Página 1... ✓ 24 encontrados
   📄 Página 2... ✓ 18 encontrados
   📄 Página 3... ✓ 12 encontrados
   📊 Total en esta fuente: 54 incidentes
```

### 5️⃣ VER RESULTADOS

```bash
➤ Opción: 6  # Ver últimos 20 incidentes
```

```
📰 ÚLTIMOS 20 INCIDENTES
================================================================================
 1. Man arrested after €500k cocaine seizure in Dublin
      📅 2026-06-12 | 📍 Dublin | 📰 Irish Times | 🔪 DRUGS

 2. Two charged over Kinahan-linked shooting in Cork
      📅 2026-06-11 | 📍 Cork | 📰 Irish Examiner | 🔪 GANG_VIOLENCE
```

### 6️⃣ (OPCIONAL) INICIAR DASHBOARD WEB

```bash
➤ Opción: 5
```

Abrir navegador en: **http://localhost:5014**

---

## COMANDOS DEL MENÚ TERMINAL

| Opción | Comando | ¿Qué hace? | ¿Cuándo usarlo? |
|--------|---------|------------|------------------|
| **1** | 🔍 Buscar crímenes | Escanea todas las fuentes activas | Diariamente para actualizar datos |
| **2** | 📊 Análisis completo | Muestra estadísticas detalladas | Después de cada búsqueda |
| **3** | 🔗 Patrones y conexiones | Detecta concentraciones de crímenes | Para identificar zonas calientes |
| **4** | 📈 Evolución mensual | Gráfico de tendencia temporal | Para ver si el crimen aumenta/disminuye |
| **5** | 🌐 Servidor web | Inicia dashboard en localhost | Para visualización gráfica |
| **6** | 📰 Últimos 20 incidentes | Lista los incidentes más recientes | Para ver novedades rápidamente |
| **7** | 📥 Exportar datos | Guarda en JSON/CSV/HTML | Para compartir o analizar externamente |
| **8** | 🔍 Verificar fuentes | Actualiza estado de periódicos | Antes de cada búsqueda importante |
| **9** | 📊 Distribución por tipo | Porcentajes de cada categoría | Para entender qué crimen predomina |
| **10** | 📈 Estadísticas avanzadas | Métricas como densidad, tendencia | Para análisis profundos |
| **11** | 🧹 Limpiar duplicados | Elimina incidentes repetidos | Si notas datos duplicados |
| **12** | 🗑️ Salir | Cierra la aplicación | Cuando termines |

### Ejemplo de flujo de trabajo diario:

```bash
# 1. Verificar fuentes (lunes por la mañana)
➤ 8

# 2. Buscar nuevos crímenes
➤ 1

# 3. Ver resultados
➤ 6

# 4. Ver estadísticas
➤ 2

# 5. (Opcional) Ver dashboard web
➤ 5
```

---

## DASHBOARD WEB

Cuando ejecutas la **Opción 5**, se inicia un servidor web en `http://localhost:5014`

### Qué verás:

#### 📍 Gráfico 1: Incidentes por Condado (Barras)
- Muestra qué condados tienen más actividad criminal
- Dublin y Cork suelen liderar
- Las barras son interactivas (hover para ver números exactos)

#### 🔪 Gráfico 2: Tipos de Crimen (Dona)
- Distribución porcentual de:
  - 💊 Drugs (narcotráfico)
  - 🔫 Gang Violence (violencia de bandas)
  - 💀 Murder (asesinatos)
  - 👮 Garda Operation (operaciones policiales)
  - Y otros tipos

#### 📈 Gráfico 3: Tendencia Mensual (Línea)
- Evolución de incidentes mes a mes
- Útiles para detectar patrones estacionales
- La línea muestra si la tendencia sube o baja

#### 📰 Gráfico 4: Top Fuentes (Barras horizontales)
- Qué periódicos publican más noticias de crimen
- Útil para saber qué fuentes son más activas

#### 📋 Lista de incidentes
- Últimos 25 incidentes con:
  - Título completo
  - Fecha
  - Condado
  - Fuente
  - Tipo de crimen

### Navegación web

| Elemento | Función |
|----------|---------|
| 🔄 UPDATE DATA | Escanea fuentes y actualiza datos |
| 📥 JSON | Descarga todos los datos en JSON |
| 📥 CSV | Descarga en CSV (Excel compatible) |
| 📄 HTML REPORT | Genera reporte profesional |
| ALL / 7D / 30D / 90D | Filtra incidentes por periodo |

---

## COBERTURA GEOGRÁFICA

### República de Irlanda (26 condados)

| Condado | Fuentes | Principales medios |
|---------|---------|-------------------|
| **Dublin** | 7 | Irish Times, Irish Independent, RTÉ, Dublin Live |
| **Cork** | 5 | Irish Examiner, Cork Beo, Cork Independent |
| **Galway** | 4 | Galway Beo, Galway Advertiser, Connacht Tribune |
| **Limerick** | 4 | Limerick Leader, Limerick Post |
| **Kerry** | 4 | Kerryman, Radio Kerry |
| **Donegal** | 4 | Donegal Daily, Donegal News |
| **Mayo** | 4 | Mayo News, Connaught Telegraph |
| **Wexford** | 4 | Wexford People, Wexford Echo |
| **Kildare** | 4 | Kildare Now, KFM Radio |
| **Tipperary** | 4 | Tipperary Live, Tipp FM |
| **Louth** | 4 | Louth Live, LMFM |
| **Sligo** | 3 | Sligo Champion, Ocean FM |
| **Resto** | 2-3 | Medios locales |

### Irlanda del Norte (6 condados)

| Condado | Fuentes | Principales medios |
|---------|---------|-------------------|
| **Antrim (Belfast)** | 5 | Belfast Telegraph, Irish News, Belfast Live |
| **Derry** | 3 | Derry Journal, Derry Now |
| **Down** | 2 | Down Recorder, Newry Reporter |
| **Tyrone** | 2 | Tyrone Times, Ulster Herald |
| **Armagh** | 2 | Armagh I, Lurgan Mail |
| **Fermanagh** | 2 | Fermanagh Herald, Impartial Reporter |

**TOTAL: 85+ fuentes activas**

---

## ESTRUCTURA DEL PROYECTO

```
keltic-kraken/
│
├── keltic_kraken.py          # Script principal (2250+ líneas)
├── requirements.txt          # Dependencias Python
├── README.md                 # Este documento
├── LICENSE                   # GPL v3
│
├── keltic_kraken_ireland.json   # Base de datos de incidentes
├── keltic_kraken_backup.json    # Copia de seguridad automática
├── url_cache_ireland.json       # Caché de URLs descubiertas
├── estado_fuentes_ireland.json  # Estado de cada fuente
│
├── keltic_kraken_export.json    # Exportación manual (JSON)
├── keltic_kraken_export.csv     # Exportación manual (CSV)
├── keltic_kraken_report.html    # Exportación manual (HTML)
│
└── docs/                         # (opcional) Documentación extra
    ├── usage.md
    ├── api.md
    └── screenshots/
```

### Archivos que se generan automáticamente:

| Archivo | Cuándo se crea | Qué contiene |
|---------|----------------|--------------|
| `keltic_kraken_ireland.json` | Primera ejecución | Todos los incidentes almacenados |
| `url_cache_ireland.json` | Cuando se descubre una URL | URLs alternativas encontradas |
| `estado_fuentes_ireland.json` | Opción 8 | Estado de cada fuente (activa/inactiva) |
| `keltic_kraken_backup.json` | Cada guardado | Copia de seguridad automática |

---

## SOLUCIÓN DE PROBLEMAS

### Error: "ModuleNotFoundError: No module named 'requests'"

```bash
pip install requests
# o
pip install -r requirements.txt
```

### Error: "Port 5014 already in use"

```bash
# Cambiar el puerto en keltic_kraken.py (línea ~100)
PUERTO = 5015  # Cambia a otro número
```

### Error: Permission denied (Linux/Mac)

```bash
chmod +x keltic_kraken.py
python3 keltic_kraken.py
```

### Muchas fuentes marcadas como INACTIVE

```bash
# Ejecuta verificación con auto-discovery
➤ Opción: 8

# El sistema buscará URLs alternativas automáticamente
# Las URLs encontradas se guardan en caché
```

### No se encuentran incidentes

```bash
# 1. Verifica que hay fuentes activas
➤ Opción: 8

# 2. Aumenta el número de páginas (en keltic_kraken.py)
PAGINAS_BUSQUEDA = 8  # En lugar de 5

# 3. Reintenta la búsqueda
➤ Opción: 1
```

### El dashboard web no carga los gráficos

```bash
# Verifica que tienes conexión a internet
# Los gráficos usan CDN de Chart.js
# Si estás offline, descarga Chart.js localmente
```

### Los datos no se guardan

```bash
# Verifica permisos de escritura en el directorio
ls -la keltic_kraken_ireland.json

# Si no existe, créalo vacío:
echo '{"incidentes": [], "ultima_actualizacion": null}' > keltic_kraken_ireland.json
```

---

## PREGUNTAS FRECUENTES

### ¿Cada cuánto debo actualizar los datos?
**Recomendación:** Una vez al día (mañana) para capturar noticias del día anterior.

### ¿Puedo automatizar las búsquedas?
Sí, con cron (Linux/Mac) o tarea programada (Windows):

```bash
# Añadir a crontab (Linux/Mac)
0 8 * * * cd /ruta/keltic-kraken && python3 keltic_kraken.py -auto
```

### ¿Los datos son en tiempo real?
No exactamente. Depende de cuándo los periódicos publican y cuándo ejecutas el scraper.

### ¿Puedo añadir mis propias fuentes?
Sí, edita la lista `FUENTES_BASE` en `keltic_kraken.py`.

### ¿Esto es legal?
Sí. Solo scrapea datos **públicos** de periódicos. No viola términos de servicio porque:
- Respeta delays entre peticiones
- No sobrecarga servidores
- Solo accede a secciones públicas

### ¿Puedo usar esto para otro país?
El sistema está diseñado específicamente para Irlanda, pero puede adaptarse cambiando:
- La lista de fuentes
- Las palabras clave
- Los condados/regiones

---

## LICENCIA

**GNU General Public License v3.0**

```
Copyright (C) 2026 Condor2026 / SpectrumSecurity

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
```

### ¿Qué significa esto para ti?
- ✅ Puedes usar el software libremente
- ✅ Puedes modificarlo y adaptarlo
- ✅ Puedes distribuir copias
- ❌ No puedes cerrar el código si lo distribuyes
- ❌ No puedes usarlo para fines ilegales

---

## AUTOR

**Condor2026** · **SpectrumSecurity**

- GitHub: [@Condor2026](https://github.com/Condor2026)
- Proyecto: [KELTIC KRAKEN](https://github.com/Condor2026/keltic-kraken)

---

## AGRADECIMIENTOS

- A los periodistas irlandeses que cubren el crimen organizado (trabajo peligroso)
- A la comunidad open source por las librerías que hacen esto posible
- A ti por usar esta herramienta con ética y responsabilidad

---

<p align="center">
  <b>🔪 "Un gran poder conlleva una gran responsabilidad" - Spider-Man</b><br>
  <i>Data-driven intelligence for public safety awareness</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Made%20with-Python-red?style=flat-square">
  <img src="https://img.shields.io/badge/Code%20Lines-2250+-brightgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Sources-85+-blue?style=flat-square">
  <img src="https://img.shields.io/badge/Counties-32-orange?style=flat-square">
  <img src="https://img.shields.io/badge/License-GPLv3-purple?style=flat-square">
</p>
```

---

