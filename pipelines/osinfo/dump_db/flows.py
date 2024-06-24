# -*- coding: utf-8 -*-
"""
Database dumping flows for EGPWeb project.
"""

from copy import deepcopy

from prefect.run_configs import KubernetesRun
from prefect.storage import GCS
from prefeitura_rio.pipelines_templates.dump_db.flows import flow as dump_sql_flow
from prefeitura_rio.pipelines_utils.prefect import set_default_parameters
from prefeitura_rio.pipelines_utils.state_handlers import (
    handler_initialize_sentry,
    handler_inject_bd_credentials,
)

from pipelines.constants import constants
from pipelines.osinfo.dump_db.schedules import os_info_update_schedule

os_info_flow = deepcopy(dump_sql_flow)
os_info_flow.name = "CVL: OSInfo - Ingerir tabelas de banco SQL"
os_info_flow.state_handlers = [handler_inject_bd_credentials, handler_initialize_sentry]
os_info_flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
os_info_flow.run_config = KubernetesRun(
    image=constants.DOCKER_IMAGE.value,
    labels=[
        constants.RJ_CVL_AGENT_LABEL.value,
    ],
    cpu_limit="1",
    cpu_request="1",
    memory_limit="12Gi",
    memory_request="12Gi",
)

os_info_default_parameters = {
    "db_database": "osinfo_V2",
    "db_host": "10.70.4.188",
    "db_port": "3306",
    "db_type": "mysql",
    "infisical_secret_path": "/db-osinfo",
    "materialization_mode": "prod",
    "dataset_id": "adm_contrato_gestao",
    "db_charset": "utf8",
    "materialize_to_datario": False,
    "biglake_table": True,
    "dump_to_gcs": False,
}
os_info_flow = set_default_parameters(os_info_flow, default_parameters=os_info_default_parameters)

os_info_flow.schedule = os_info_update_schedule

# comment to trigger github actions 5
