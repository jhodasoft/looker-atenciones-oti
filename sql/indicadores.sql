-- 📂 indicadores.sql
-- KPIs principales para el dashboard de Looker Studio

-- Total de atenciones
SELECT COUNT(*) AS total_atenciones
FROM `proyecto_unap.oti.atenciones`;

-- Atenciones por tipo
SELECT tipo_atencion, COUNT(*) AS total
FROM `proyecto_unap.oti.atenciones`
GROUP BY tipo_atencion
ORDER BY total DESC;

-- Tiempo promedio de resolución (en horas)
SELECT AVG(TIMESTAMP_DIFF(fecha_cierre, fecha_apertura, HOUR)) AS horas_promedio
FROM `proyecto_unap.oti.atenciones`
WHERE fecha_cierre IS NOT NULL;

-- Tendencia mensual de atenciones
SELECT FORMAT_DATE('%Y-%m', fecha_apertura) AS mes, COUNT(*) AS total
FROM `proyecto_unap.oti.atenciones`
GROUP BY mes
ORDER BY mes;
