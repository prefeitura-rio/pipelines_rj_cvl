SELECT
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_unidade_perfil), r'\.0$', '') AS STRING) AS id_unidade_perfil,
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_usuario), r'\.0$', '') AS STRING) AS id_usuario,
  SAFE_CAST(TRIM(cod_unidade) AS STRING) AS cod_unidade,
  SAFE_CAST(REGEXP_REPLACE(TRIM(id_perfil), r'\.0$', '') AS STRING) AS id_perfil
FROM `rj-cvl.adm_contrato_gestao_staging.administracao_unidade_perfil`