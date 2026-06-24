
  create or replace   view RAW.JAFFLE_SHOP.stg_customers
  
  
  
  
  as (
    with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from RAW.JAFFLE_SHOP.CUSTOMER

)

select *
from customers
  );

