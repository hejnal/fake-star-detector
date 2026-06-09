
{{ config(materialized='table') }}

with source_data as (
    select
      1 as id,
      {% if execute %}
        'dynamic_value' as val
      {% else %}
        'static_value' as val
      {% endif %}
)

select
  id,
  val,
  {{ dbt_utils.safe_divide(10, 2) }} as safe_div_val
from source_data
