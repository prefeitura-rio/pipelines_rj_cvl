SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_secretaria), r'\.0$', '') AS STRING) AS id_secretaria,
  SAFE_CAST(TRIM(secretaria) AS STRING) AS secretaria,
  SAFE_CAST(TRIM(sigla) AS STRING) AS sigla,
  SAFE_CAST(TRIM(regional) AS STRING) AS regional,
  SAFE_CAST(TRIM(sigla_regional) AS STRING) AS sigla_regional,
  SAFE_CAST(TRIM(cod_secretaria) AS STRING) AS cod_secretaria,
  SAFE_CAST(TRIM(flg_regional) AS STRING) AS flg_regional
FROM `rj-cvl.adm_contrato_gestao_staging.secretaria`