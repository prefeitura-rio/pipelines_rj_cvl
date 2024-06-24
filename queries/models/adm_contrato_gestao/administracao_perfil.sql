SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_perfil), r'\.0$', '') AS STRING) AS id_perfil,
  SAFE_CAST(TRIM(nome_perfil) AS STRING) AS nome_perfil
FROM `rj-cvl.adm_contrato_gestao_staging.administracao_perfil`