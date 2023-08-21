use mahendar;
 select*from mobile;
 
 /*check mobile features and price*/
 select phone_name,price from mobile;
 
 /* find out the price of 5 most expensive phones*/
 select*from mobile
 order by price desc
 limit 5;
 
 /* find out the price of 5 most chepest phone*/
 select*from mobile
 order by price asc
 limit 5;
 /* list of top 5 samsung phones with price and all features*/
 select*from mobile where brands = "samsung"
 order by price desc
 limit 5;
 /* must have android phone list then top 5 high price android phones*/
 select*from mobile where operating_system_type = "Android"
 order by price desc
 limit 5;
 /*must have android phone list then top 5 lower price android phones*/
 select*from mobile where Operating_System_Type = "Android"
 order by price asc
 limit 5;
 /*must have  IOS phones list then top 5 high price IOS phones */
 select*from mobile where Operating_System_Type = "IOS"
 order by price desc
 limit 5;
 /*must have  IOS phones list then top 5 lower price IOS phones */
 select*from mobile where Operating_System_Type = "IOS"
 order by price asc
 limit 5;
 /* write a query which phones support 5g and also top 5 phones with 5g support */
 select*from mobile where 5g_availability = "Yes"
  order by price desc
 limit 5;
 /* total price of all mobile is to be found with brand name */
 select brands, sum(price) from mobile group by brands;
 
 