with ComputerModels as
(
select Product.maker, Product.model, PC.speed, PC.price
from Product
join PC
on Product.model = PC.model
union
select Product.maker, Product.model, Laptop.speed, Laptop.price
from Product
join Laptop
on Product.model = Laptop.model
)
select * from ComputerModels
where speed = (select min(speed) from ComputerModels);
