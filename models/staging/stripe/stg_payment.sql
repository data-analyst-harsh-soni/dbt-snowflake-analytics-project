select 
id as payment,
orderid as order_id,
paymentmethod as payment_method,
status,
amount / 100 as amount ,
created as created_as
from raw.stripe.payment