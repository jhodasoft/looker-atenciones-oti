-- 📂 atenciones.sql
-- Consulta base para obtener el detalle de atenciones registradas

SELECT
  id_atencion,
  fecha_apertura,
  fecha_cierre,
  tipo_atencion,
  unidad_solicitante,
  responsable,
  estado
FROM `proyecto_unap.oti.atenciones`
WHERE fecha_apertura >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
ORDER BY fecha_apertura DESC;
