
  create or replace  view Medical_Analysis_AM.dev.stg_covid__cases
  
   as (
    select 
  cast(date_rep AS DATE) as date_rep, 
  cast(cases as BIGINT) as cases, 
  cast(deaths as BIGINT) as deaths, 
  geo_id
from Medical_Analysis_AM.dev.raw_covid__cases
  );
