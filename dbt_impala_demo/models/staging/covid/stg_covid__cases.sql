select 
  cast(date_rep AS DATE) as date_rep, 
  cast(cases as BIGINT) as cases, 
  cast(deaths as BIGINT) as deaths, 
  geo_id
from {{ source('raw_covid','raw_covid__cases') }}
