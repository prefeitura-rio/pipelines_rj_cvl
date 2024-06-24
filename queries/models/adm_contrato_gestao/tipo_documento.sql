SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_tipo_documento), r'\.0$', '') AS STRING) AS id_tipo_documento,
  SAFE_CAST(TRIM(tipo_documento) AS STRING) AS tipo_documento,
  SAFE_CAST(TRIM(documento) AS STRING) AS documento
FROM `rj-cvl.adm_contrato_gestao_staging.tipo_documento`