-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: cifrado
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `idSender` int(11) NOT NULL,
  `idReceiver` int(11) DEFAULT NULL,
  `message` blob NOT NULL,
  PRIMARY KEY (`idMessage`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,2,1,'7áº\Â^_DSÅ]™lªá°A\ﬂ#7(}àg®\…\ÌÚ0?≥åqD¯)N\ÓU\„\Œ\Èdi∞H≤\\âã\’ \Ó\Í\€\ﬂ\¬3íqß•ù\”\—r\‘¿\Áî˙\Ë\ \·dz\ÈyM˙˘Oã\È¯\'{N˜}\Ìc˘øO?\√Z¨Ü£ﬂ∞)\⁄D4\»2Å<ΩVzÕΩ'),(2,1,2,'{F±™\–rr~|\”5†]á!iÅäÀî£Lá≥\‘	\È)G\√h¡[µ\€F\È\◊¡LªÉUˆ\∆0kæ¥\ÃHYpî†)ä≥ò◊±`g\Ó@Û°üå#\‡ÚsìD\ÌìfÇLÜÄëÇÜC£Yä\níM\€2BÉ5Nh\È“ï∏Û∏r\¬Lám¨\—'),(3,2,0,'ª-Bùu&¸î∞Æáù\ RV	Mß\‰”æ¸SjgU\Ó\“ƒñ\‡\√l\◊*Ù∫Îïº\ÓÙp4˙\ﬁ\0å\Ó°\ËÛ\Ô5ª≥ùé8ﬁ∂ôl\È≠H\r&∑V|\ ˜∂ó≥å\ÁuGOj\ﬁ#\Ÿıû∑¨úpRîv%nh\Â¨˙Aß\ÁG\‰ˆKÉ`r\‚zÙ¥o'),(4,0,1,'O@\È:á\nõ\0û.ÑYmπ´ÎµêÜS,™˘îtoØ\≈mpsoïxê=Ü\◊“É\Ëï.”Æ@TTMé\’Úπ¢0B/#Ö∫\Ê\≈˛†πx7i-√§y†Å˙Ω\‚∆∞\ * f`\“+;0\√nÒÉı<∑`∞{è^ùø5+Z1R[\√∆óe™ì'),(5,1,0,'\ÿ\«\ﬂ\ÕBV[Ù\ÿ\"ıZÆ¯µE\rd†KR\0Ò3M≤f\›l°\«\ÀkEM@§\ƒ\Ôè7¡_Õìrëvˇ_8\¬b\À\ÌxD\ %E)çM=¯ú\ﬂ]\ÕH\n∂	)z>R®µx∂\ﬁﬂÆ÷ò\Ë8\∆\Ì\ÌJ˜;¸\r´.\ÊW†\“˚∏ü\Ì'),(6,1,2,'P))–æ˙\”\‚ùﬂΩØOV¸øw\“\ÀˇDC€¥\Ã\‰Ò@hé\€=\’L1\Ë\œ\ L\‡π\⁄ˆ†v&q-i∑\Í¿Üôƒ∞7ÜEuE\À~¯\”É\‚\0ƒàÄ6ÅÇ.!æ\"_#\◊1\¬WWó\€pa|\Ï ∫@2ˆÛ-mX\À=¶Ñ∞zπÙ\Ì<\Õ\“ì\Ì5');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `keyPrivate` varchar(2048) COLLATE utf8_spanish2_ci NOT NULL,
  `keyPublic` varchar(2048) COLLATE utf8_spanish2_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pass` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` int(11) DEFAULT NULL,
  `token` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'-----BEGIN RSA PRIVATE KEY-----\r\nMIICXAIBAAKBgQDfcp7p6eaEPyQjTW/aWgc2b98R2kw+nr1hn2LqmLhXrqpr4GKo\r\ncySBlbFWTVbUyUGgvCHm9p+Yb3LYymy1Aww9gVExa8H59OwVFmATq6/CKWgb2GCF\r\nHBSvFqe+ko0pEGgtV1M3DPmI4h7pmteNl/FXnMUflRzpYb3/tRWN8traVQIDAQAB\r\nAoGBAIsyIiDhnsJfeymqwbUqRDf7NOEwNjMEPEGmQr6V6LBmlK+jFpKNN/6pu9Fh\r\nWGgx/3ob+JqipAUX2FmIsHOKtIIqBl6Gjqj7B6a9/gH1THlFsLxBnY7vuRLb50Qo\r\nYk7mHAsnSjbXitURMp/JPcVe5CmkI4QcZAOEql++fXUYJEaBAkEA9cXR9v0Yp5ni\r\naWqLrtLjZCQD9OtjHwlcUI+XgM7pD9BYXZtAcnTCo72bsLHIMOMLtw9Bu38Y+TTT\r\nRdWlxo3JBQJBAOi++crxjdshjX/+rIYr+bUpy4yP2q9G+jPz9XWN5XQXDYCGrR1c\r\nees1vkIM5f4XInKDibNKUQZdhznntV8yTRECQBjI3ziqI19bfGKnFPkHWVkS7Lc5\r\nOaC6n+2b3Wpm80fd+dtOubwRHEPI7jduZkLP0rGeP0G6Onl/I0MqnXIdgEUCQBi8\r\nOyXjWBUi0rv4n/M+dzJWt8g/fZlFLNAarEqLAwi8bnXrWjiVnGtv8cFpR4Qih0mu\r\nSxMf4c6QYA+6XV85pFECQECI9scvCL6W3+bJG7I+rLx2MX4n5TkaLt6YLCAKbfVF\r\n/0gsM9gIvwbXgKpzwpUJMfoc8mL10cyaEKP4npnsEDY=\r\n-----END RSA PRIVATE KEY-----','-----BEGIN PUBLIC KEY-----\r\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDfcp7p6eaEPyQjTW/aWgc2b98R\r\n2kw+nr1hn2LqmLhXrqpr4GKocySBlbFWTVbUyUGgvCHm9p+Yb3LYymy1Aww9gVEx\r\na8H59OwVFmATq6/CKWgb2GCFHBSvFqe+ko0pEGgtV1M3DPmI4h7pmteNl/FXnMUf\r\nlRzpYb3/tRWN8traVQIDAQAB\r\n-----END PUBLIC KEY-----','admin','202cb962ac59075b964b07152d234b70','Admin',1,''),(1,'MIICWwIBAAKBgQCpU5QxXW6ecfLXuAv0JDyfh9fOfbIl/QwKUGd40jhHV0/ZcI1P o0VAaJ2sEkzPzPdrKb4iuOiWm9ai2kUJd4vgNBHbydlmZWhn1RZAw9Uk0j5eGuyX wjxqelfcN0+/txW8/Kjxrxw+rtGDlpC+oZwDZ53bltmQqO/07goDBp/DkQIDAQAB AoGAPsKWw/FQhfPQQbqa26PuwGaWS5f1RvVS2CPTJkosx+yJ0RtRlTn7+hKMlnG1 /LOI5TR0n+QPeXtLg9MJEag4tIc0H6jJsnur04EBwIv66fByd8adGHufyrI5cq8B HiwhhS10A7aI6dLNms1LJHYtt2UziERmBhULiij90DdIEO0CQQDkn2rz+t0skGtn H4URcT1Qy8la0056mK5TDQmD+TsmZzooJhl0Ild7BXcRqi4NF9txqOxxClDiiMjh pR5++B+/AkEAvZplJhOzqzVZIZ4QUPwrwx8hv84XHiJzfNsfVaOLbxOQrbHDErNU vGXF8Po7n3F0Pfg/vUAQE0cRhuit4oHwrwJAVGrE7DfaSSU+c0KBORKOKHJG9EGH /d64p7PtqoxxmdmN8Ns4lNhFYwh+kcg73tvLTKmqPIcpnKwTOLZmj02BMwJAH+bh jAWWnoEMbTaeQjIb3unXEOHJS/259tEbtZod9OOS3VbinrvjzwtEweYosAwz5dVm TB6CVewIS+3MjCcW6wJAP16s+6gxWsc25mwa81HYauhg1k6Inv0rs2hJvo3tfjP/ KGXYzl8hUvKRVg2lD6I6vIj34bHxrdULGqvr3T0Qsg==','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCpU5QxXW6ecfLXuAv0JDyfh9fO fbIl/QwKUGd40jhHV0/ZcI1Po0VAaJ2sEkzPzPdrKb4iuOiWm9ai2kUJd4vgNBHb ydlmZWhn1RZAw9Uk0j5eGuyXwjxqelfcN0+/txW8/Kjxrxw+rtGDlpC+oZwDZ53b ltmQqO/07goDBp/DkQIDAQAB','bob','202cb962ac59075b964b07152d234b70','Bob',2,''),(2,'MIICWwIBAAKBgQCZCRmmK9mZTbK01g4vqOg40SyimxtwN8QY6D7c4f5dJqQmANcN p3wpcLW+MhkmpDYR7+6q5EaHKBnmt5sDkzkZY7ZRMXKOd5YMBIcPM4og3rhbSJaR eEcjV+bD5WMLnZB7WJra2xaT4tkUScHzCdHdS3fXuUcSCmq+Nv3SgwVhDQIDAQAB AoGAZfzmlxPKJJzfaBzvv1t1x8e/U27DTnobue2tV09VUYcbBiixKWxhFs0CkgqZ MGNnlXStPj57sj9LY7MhH7TR68zsYbf/8Ko+nlbIB3Afji1yW90FmWAgzQNB/rC6 92cLrcuD3WypWAAD1ILhvXJU5OAoBjhhpxSy0Jr6xQlzoYECQQDYIj8BVa1BWrNf dH+TTCqtYPEjFmdqJ3Gm9pwH30Oh9yBy5XNWpeZ9MVm6wxqj2uLkOxKBuInIJyam YkviwgapAkEAtUNhSlalLcuyLKqpXjnMYj7QETA5lt4uWZAisPt4EbaiJwqHbGR1 Ws0M+gKqO+PZ8t9roT/OTMGmcTHDgynZxQJAA7d7C+PUSeZsZTzUoMzTgw3Ct86/ 0oSBINTm0//T4uokBbXKaPgLYaXCnEKUp7Kw6inV5KMuw2Fg+cWA9pJNmQJAQVp6 4H+e7IUNx5b8m9GBBEcbY6ccjG2tDnOuXls8bj6H9kWQkB8kRMm7jQSa9h7vvOaa +rdznS8Q4K0NjePv9QJAFtBYpq/DmaEC9EPFYFgbgQFPEcG34Qt2sz02hLXvi4Mi 8F/nw8UWZheZNI1+jL8WGsptriOhNJX//zu+eSddpg==','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCZCRmmK9mZTbK01g4vqOg40Syi mxtwN8QY6D7c4f5dJqQmANcNp3wpcLW+MhkmpDYR7+6q5EaHKBnmt5sDkzkZY7ZR MXKOd5YMBIcPM4og3rhbSJaReEcjV+bD5WMLnZB7WJra2xaT4tkUScHzCdHdS3fX uUcSCmq+Nv3SgwVhDQIDAQAB','alice','202cb962ac59075b964b07152d234b70','Alice',2,''),(3,'MIICWwIBAAKBgG1V5yOTPTd+ZvoBQZiucesVDG7gSk94xjM4xVn5/9ZebRzV+hP/ +FyQkj+G6jIdAuCuwyL2aBjAmezo01j4Mjq7BROrgZ6e9HhMv3mN4VlH+ipjB/+r QhY6hhdRcSiXHIIS3cLXTz48zDIzfrkKQv8uBbGeT078/2ZZjqkPEofTAgMBAAEC gYBR+NitfGOmKnesMqrqfMdd9871heVQxfzbRFH6Dow4PV1TBD5VJlEfnSh4xn7p iYSxzXTxzonnHOeKjlh+WL7W/AoV3JLHn35tB+Goa807k2jYszAqBQ/Qui9czovY 7bfWrKMjkZkeWUVlsnCB5eyb2/dUx49JfWBEDQ5rIKYtIQJBALN7QA+E+/KD44vp KShEeADTXNW8SI3ZJxwSdKBI7SZpzut7sy1LaJ836TAcXHQamz1PmsuPoYZEBKG7 r62rhnECQQCb8t+1g1+szzcZd+j3159PHvILJbTOPM9+UVZVLzds7AJfGJOMtagZ B43ttCthObHC1cX3vDJsSXMPmMlRDnyDAkA4ycZ7IpiVIyXcHunm08Mkf7vf5LMQ LqUxPKWqEWj3voK5/2mx6yovNoGRt2eJVOHJhGZ2AfwZf2v3wGrViHABAkAByrOZ UU4bHTJj34XUuyyAazmauS8vo3E64VJdnjJD1R5d21lup3Or/fM6hPRupIwPUgd5 RjdKGTnyNu4xOTpjAkEAiUk1PdyKD7E/N9jmLv12uPueU5opTdremNNuzJPXhu9e 86ZHTAYJnZXWXU3XSxovu95DAieUee3T0aSKOc5PfA==','MIGeMA0GCSqGSIb3DQEBAQUAA4GMADCBiAKBgG1V5yOTPTd+ZvoBQZiucesVDG7g Sk94xjM4xVn5/9ZebRzV+hP/+FyQkj+G6jIdAuCuwyL2aBjAmezo01j4Mjq7BROr gZ6e9HhMv3mN4VlH+ipjB/+rQhY6hhdRcSiXHIIS3cLXTz48zDIzfrkKQv8uBbGe T078/2ZZjqkPEofTAgMBAAE=','hacker','202cb962ac59075b964b07152d234b70','Hacker',0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 12:56:24
