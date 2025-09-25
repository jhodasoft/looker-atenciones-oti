# 📊 Dashboard de Atenciones OTI – Looker Studio

Este proyecto contiene el **dashboard de Atenciones de la Oficina de Tecnologías de la Información (OTI)** de la **Universidad Nacional de la Amazonía Peruana (UNAP)**, desarrollado en **Looker Studio (antes Google Data Studio)**.

El tablero presenta los principales **indicadores de gestión y soporte TI**, permitiendo analizar el volumen, tipo y evolución de las atenciones realizadas.

---

## 🚀 Objetivo
Brindar a la OTI una herramienta de **visualización interactiva** que facilite:
- Monitorear la cantidad de atenciones realizadas en distintos periodos.
- Analizar el desempeño según tipo de atención.
- Identificar tendencias y posibles cuellos de botella en la gestión de soporte.

---

## 📂 Estructura del repositorio

```
/looker-studio-atenciones-oti
 ├── sql/                   # Consultas SQL utilizadas en BigQuery u otras fuentes
 │    ├── atenciones.sql
 │    └── indicadores.sql
 ├── docs/                  # Evidencia visual del dashboard
 │    └── dashboard.pdf     # Exportación en PDF desde Looker Studio
 ├── diccionario_kpis.md    # Definición de métricas y KPIs
 └── README.md              # Documentación principal del proyecto
```

---

## 🗂️ Fuentes de datos
- **BigQuery**: Base de datos que contiene el histórico de atenciones.
- **Archivos planos/Excel**: Integración puntual de datos complementarios.
- **Transformaciones SQL** incluidas en la carpeta `/sql/`.

---

## 📈 Indicadores principales (KPIs)
Algunos de los KPIs destacados en el dashboard son:
- **Total de atenciones** por periodo.
- **Atenciones por tipo** (incidencia, requerimiento, soporte).
- **Tiempo promedio de resolución**.
- **Tendencia mensual** de solicitudes.

La definición detallada de cada indicador está en [`diccionario_kpis.md`](./diccionario_kpis.md).

---

## 📎 Evidencia visual
En la carpeta [`/docs`](./docs) se incluye una versión **PDF** del dashboard exportado desde Looker Studio.  
También se recomienda incluir **capturas de pantalla** en formato `.png` para referencias rápidas.

---

## 🔗 Acceso al dashboard en Looker Studio
👉 [Ver dashboard en vivo](https://lookerstudio.google.com/s/mr_BiWgctbA)

*(El acceso dependerá de los permisos de compartición en Looker Studio)*

---

## ⚙️ Tecnologías utilizadas
- **Google Looker Studio**
- **Google BigQuery** (fuente de datos principal)
- **SQL estándar**
- **GitHub** (para versionado de queries, KPIs y documentación)

---

## 👨‍💻 Autor
**Jhonny Dante**  
Data Engineer & Analytics  
Universidad Nacional de la Amazonía Peruana – UNAP
