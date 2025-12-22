-- query 1

select 
b.booking_id,
u.name as customer_name,
v.name as vehicle_name,
b.start_date,b.end_date,b.status
from bookings b
join users u on b.user_id=u.user_id
join vehicles v on b.vehicle_id=v.vehicle_id
where u.role = 'Customer'



-- query 2

select * from vehicles v
 where not exists(
  select * from bookings b
  where v.vehicle_id=b.vehicle_id  
)
order by v.vehicle_id



-- query 3

select * from vehicles 
where status='available' and type='car'



-- query 4

select v.name as vehicle_name,
count(*) as total_bookings
from bookings b
join vehicles v on b.vehicle_id=v.vehicle_id
group by v.name
having count(*) > 2