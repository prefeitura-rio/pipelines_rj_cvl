SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_receita_item), r'\.0$', '') AS STRING) AS id_receita_item,
  SAFE_CAST(TRIM(receita_item) AS STRING) AS receita_item,
  SAFE_CAST(TRIM(flg_ativo) AS STRING) AS flg_ativo,
  SAFE_CAST(REGEXP_REPLACE(TRIM(ordem), r'\.0$', '') AS INT64) AS ordem,
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_receita_tipo), r'\.0$', '') AS STRING) AS id_receita_tipo
FROM `rj-cvl.adm_contrato_gestao_staging.receita_item`