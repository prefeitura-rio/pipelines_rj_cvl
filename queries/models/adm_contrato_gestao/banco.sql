SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_banco), r'\.0$', '') AS STRING) AS id_banco,
  SAFE_CAST(TRIM(cod_banco) AS STRING) AS cod_banco,
  SAFE_CAST(TRIM(banco) AS STRING) AS banco,
  SAFE_CAST(TRIM(nome_fantasia) AS STRING) AS nome_fantasia,
  SAFE_CAST(TRIM(flg_ativo) AS STRING) AS flg_ativo
FROM `rj-cvl.adm_contrato_gestao_staging.banco`