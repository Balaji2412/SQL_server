  use practise;
  select * from product;
  select * from orderitems;
  select * from user;
select name from product p inner join orderitems oi on oi.productid=p.id;
select name from product p where id not in (select oi.productid from orderitems);
 
  

select u.name,p.name,sum(oi.quantity),sum(oi.price)
 from user u
 inner join 
 orderitems oi on oi.userid =u.id 
 inner join 
 product p on p.id=oi.productid 
 group by
 u.name ,p.name;
 
 select oi.status ,sum(oi.quantity)from orderitems oi group by oi.id;
 
 select u.name,p.name 
 from user u
 inner join orderitems oi on oi.userid=u.id 
 left join product p on p.id=oi.productid group by u.id;
 
 select u.name,p.name from user u left join product p on p.id=u.id 
 right join orderitems oi on oi.id=p.id where oi.quantity>1;
 

select sum(oi.quantity *oi.price),u.name
from user u inner join orderitems oi on oi.userid=u.id group by oi;

select u.name,sum(oi.quantity) from user u left join orderitems oi on oi.userid=u.id;
 
 select u.name "username",p.name"product name",sum(oi.quantity) from user u left join orderitems oi on oi.userid=u.id left join product p on p.id=oi.productid group by u.name;
 

 
 