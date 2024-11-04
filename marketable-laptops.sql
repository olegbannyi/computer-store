SELECT 
    Product.maker,
    Product.model,
    Laptop.hd,
    Laptop.speed,
    Laptop.price
FROM 
    Product
INNER JOIN 
    Laptop
ON 
    Product.model = Laptop.model
WHERE 
    Laptop.hd >= 1000
ORDER BY 
    Laptop.hd, 
    Laptop.speed DESC,
    Laptop.price
;
