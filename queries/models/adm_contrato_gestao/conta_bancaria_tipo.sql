SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_conta_bancaria_tipo), r'\.0$', '') AS STRING) AS id_conta_bancaria_tipo,
  SAFE_CAST(TRIM(tipo) AS STRING) AS tipo,
  SAFE_CAST(TRIM(sigla) AS STRING) AS sigla
FROM `rj-cvl.adm_contrato_gestao_staging.conta_bancaria_tipo`