SELECT
  SAFE_CAST(TRIM(cod_estado) AS STRING) AS cod_estado,
  SAFE_CAST(TRIM(estado) AS STRING) AS estado,
  SAFE_CAST(TRIM(etiqueta) AS STRING) AS etiqueta,
  SAFE_CAST(TRIM(detalhe) AS STRING) AS detalhe
FROM `rj-cvl.adm_contrato_gestao_staging.estado_entrega`