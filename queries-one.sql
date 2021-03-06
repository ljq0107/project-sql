SELECT 
`order`.`OrderID`, `customers`.`FirstName`,`customers`.`LastName`,`customers`.`Email`,`customers`.`PhoneNumber`,`address`.`Line1`,`address`.`Line2`,`address`.`PostCode`,`address`.`City`,
`dish`.`DishName`,`dish`.`Price`,
COUNT(`dish`.`idDish`) AS 'QTY',
SUM(`dish`.`Price`) AS 'Total Price',
`date`.`DateTime`
FROM 
`database_project`.`order`
INNER JOIN
`database_project`.`customers`
ON
(`order`.`OrderID`=`customers`.`idCustomers`)

INNER JOIN
`database_project`.`address`
ON
(`order`.`OrderID`=`address`.`idAddress`)

INNER JOIN
`database_project`.`date`
ON
(`order`.`OrderID`=`date`.`idOrderDate`)

INNER JOIN
`database_project`.`dish`
ON
(`order`.`D_id`=`dish`.`idDish`)


GROUP BY
`order`.`D_id`
ORDER BY
`customers`.`idCustomers` ASC
