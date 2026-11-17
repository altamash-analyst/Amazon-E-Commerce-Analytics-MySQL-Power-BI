CREATE DATABASE  IF NOT EXISTS `amazon_ecommerce_analytics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `amazon_ecommerce_analytics`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: amazon_ecommerce_analytics
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_amazon_sales`
--

DROP TABLE IF EXISTS `vw_amazon_sales`;
/*!50001 DROP VIEW IF EXISTS `vw_amazon_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_amazon_sales` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `payment_method`,
 1 AS `shipping_city`,
 1 AS `shipping_state`,
 1 AS `shipping_region`,
 1 AS `shipping_type`,
 1 AS `delivery_days`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `customer_city`,
 1 AS `customer_state`,
 1 AS `customer_region`,
 1 AS `customer_segment`,
 1 AS `registration_date`,
 1 AS `order_item_id`,
 1 AS `product_id`,
 1 AS `quantity`,
 1 AS `unit_price`,
 1 AS `discount`,
 1 AS `product_name`,
 1 AS `category`,
 1 AS `subcategory`,
 1 AS `brand`,
 1 AS `unit_cost`,
 1 AS `selling_price`,
 1 AS `gross_sales`,
 1 AS `discount_amount`,
 1 AS `net_sales`,
 1 AS `product_cost`,
 1 AS `profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_amazon_sales`
--

/*!50001 DROP VIEW IF EXISTS `vw_amazon_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_amazon_sales` AS select `o`.`order_id` AS `order_id`,`o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`payment_method` AS `payment_method`,`o`.`shipping_city` AS `shipping_city`,`o`.`shipping_state` AS `shipping_state`,`o`.`shipping_region` AS `shipping_region`,`o`.`shipping_type` AS `shipping_type`,`o`.`delivery_days` AS `delivery_days`,`c`.`customer_id` AS `customer_id`,`c`.`customer_name` AS `customer_name`,`c`.`gender` AS `gender`,`c`.`age` AS `age`,`c`.`city` AS `customer_city`,`c`.`state` AS `customer_state`,`c`.`region` AS `customer_region`,`c`.`customer_segment` AS `customer_segment`,`c`.`registration_date` AS `registration_date`,`oi`.`order_item_id` AS `order_item_id`,`oi`.`product_id` AS `product_id`,`oi`.`quantity` AS `quantity`,`oi`.`unit_price` AS `unit_price`,`oi`.`discount` AS `discount`,`p`.`product_name` AS `product_name`,`p`.`category` AS `category`,`p`.`subcategory` AS `subcategory`,`p`.`brand` AS `brand`,`p`.`unit_cost` AS `unit_cost`,`p`.`selling_price` AS `selling_price`,round((`oi`.`quantity` * `oi`.`unit_price`),2) AS `gross_sales`,round((((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100),2) AS `discount_amount`,round(((`oi`.`quantity` * `oi`.`unit_price`) - (((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100)),2) AS `net_sales`,round((`oi`.`quantity` * `p`.`unit_cost`),2) AS `product_cost`,round((((`oi`.`quantity` * `oi`.`unit_price`) - (((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100)) - (`oi`.`quantity` * `p`.`unit_cost`)),2) AS `profit` from (((`orders` `o` join `customers` `c` on((`o`.`customer_id` = `c`.`customer_id`))) join `order_items` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-19 19:15:02
