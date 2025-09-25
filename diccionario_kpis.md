# 📑 Diccionario de KPIs – Dashboard de Atenciones OTI

Este documento describe las principales métricas y KPIs utilizados en el **Dashboard de Atenciones OTI** en Looker Studio.

---

## 📊 Indicadores principales

| **KPI**                     | **Descripción**                                                                 | **Fuente de datos** | **Fórmula / Query**                            | **Frecuencia de actualización** |
|------------------------------|---------------------------------------------------------------------------------|----------------------|-----------------------------------------------|---------------------------------|
| Total de atenciones          | Cantidad total de atenciones registradas en un periodo determinado              | BigQuery (tabla `atenciones`) | `COUNT(*)`                                   | Diario |
| Atenciones por tipo          | Distribución de atenciones según tipo (incidencia, requerimiento, soporte, etc) | BigQuery (tabla `atenciones`) | `COUNT(*) GROUP BY tipo_atencion`            | Diario |
| Tiempo promedio de resolución| Tiempo promedio en horas que se tarda en resolver una atención                  | BigQuery (tabla `atenciones`) | `AVG(TIMESTAMP_DIFF(fecha_cierre, fecha_apertura, HOUR))` | Diario |
| Tendencia mensual            | Evolución del número de atenciones por mes                                      | BigQuery (tabla `atenciones`) | `COUNT(*) GROUP BY FORMAT_DATE('%Y-%m', fecha_apertura)` | Mensual |
| Atenciones por unidad        | Cantidad de atenciones clasificadas por facultad o área solicitante             | BigQuery (tabla `atenciones`) | `COUNT(*) GROUP BY unidad_solicitante`       | Diario |

---

## 📌 Notas adicionales
- Todos los KPIs están calculados en **BigQuery** usando SQL estándar.  
- Looker Studio se conecta a BigQuery mediante credenciales seguras.  
- Los cálculos de agregación (suma, promedio, conteo) se realizan en la capa de datos para optimizar el rendimiento.  

---

## 👨‍💻 Responsable
**Jhonny Dante** – Administrador de Base de Datos & Analista BI  
Universidad Nacional de la Amazonía Peruana – UNAP
