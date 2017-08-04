-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.7-beta-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema online
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ datatransmission2;
USE datatransmission2;

--
-- Table structure for table `online`.`data_table`
--

DROP TABLE IF EXISTS `data_table`;
CREATE TABLE `data_table` (
  `token` varchar(450) NOT NULL default '',
  `frequency` varchar(45) NOT NULL default '',
  `file` varchar(450) NOT NULL default '',
  `userid` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`.`data_table`
--

/*!40000 ALTER TABLE `data_table` DISABLE KEYS */;
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('79cfac6387e0d582f83a29a04d0bcdc4','40.0','bollywood1.txt','s@gmail.com'),
 ('042c0e7a5a606752b998e62773f87ee1','30.0','bollywood1.txt','s@gmail.com'),
 ('094404a16452d4e6f38e78926e44d704','30.0','bollywood1.txt','s@gmail.com'),
 ('9a4b6f884971dcb4a5172876b335baab','26.0','bollywood1.txt','s@gmail.com'),
 ('5d1a128db36370bffada42085d7f9a23','25.0','bollywood1.txt','s@gmail.com'),
 ('8fc42c6ddf9966db3b09e84365034357','25.0','bollywood1.txt','s@gmail.com'),
 ('13b5bfe96f3e2fe411c9f66f4a582adf','13.0','bollywood1.txt','s@gmail.com'),
 ('be5d5d37542d75f93a87094459f76678','11.0','bollywood1.txt','s@gmail.com'),
 ('01b6e20344b68835c5ed1ddedf20d531','10.0','bollywood1.txt','s@gmail.com'),
 ('8bf8854bebe108183caeb845c7676ae4','10.0','bollywood1.txt','s@gmail.com'),
 ('7d0db380a5b95a8ba1da0bca241abda1','9.0','bollywood1.txt','s@gmail.com'),
 ('20c118301a13b1fc65d2428b034626ad','8.0','bollywood1.txt','s@gmail.com'),
 ('ed2b5c0139cec8ad2873829dc1117d50','8.0','bollywood1.txt','s@gmail.com'),
 ('c68271a63ddbc431c307beb7d2918275','6.0','bollywood1.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('cf7a2216034ddbc62bb1b1b3d70d1272','6.0','bollywood1.txt','s@gmail.com'),
 ('6864f389d9876436bc8778ff071d1b6c','6.0','bollywood1.txt','s@gmail.com'),
 ('639bae9ac6b3e1a84cebb7b403297b79','6.0','bollywood1.txt','s@gmail.com'),
 ('2de1b2d6a6738df78c5f9733853bd170','5.0','bollywood1.txt','s@gmail.com'),
 ('d98a07f84921b24ee30f86fd8cd85c3c','5.0','bollywood1.txt','s@gmail.com'),
 ('2b9283462482448559820aa3d43c351a','5.0','bollywood1.txt','s@gmail.com'),
 ('23a58bf9274bedb19375e527a0744fa9','5.0','bollywood1.txt','s@gmail.com'),
 ('7fc6af87de5caedbe5d47d92de9fccb3','5.0','bollywood1.txt','s@gmail.com'),
 ('d55669822f1a8cf72ec1911e462a54eb','5.0','bollywood1.txt','s@gmail.com'),
 ('d671da11ebf818530f84a36134a1cd1e','5.0','bollywood1.txt','s@gmail.com'),
 ('5bd9a6008aa4b9812c6829f331362155','4.0','bollywood1.txt','s@gmail.com'),
 ('22af645d1859cb5ca6da0c484f1f37ea','4.0','bollywood1.txt','s@gmail.com'),
 ('cc71d8f3dc8842c0f4f55e3f5b388ec6','4.0','bollywood1.txt','s@gmail.com'),
 ('a2a551a6458a8de22446cc76d639a9e9','4.0','bollywood1.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('9be7f737aa5d3769a258adce3307362a','4.0','bollywood1.txt','s@gmail.com'),
 ('62cc0b4ebb0b57b40778179234246c38','4.0','bollywood1.txt','s@gmail.com'),
 ('0e66be14b86bd30bf4fc84357763b591','3.0','bollywood1.txt','s@gmail.com'),
 ('b6699ad177759619925a904d2ab79665','3.0','bollywood1.txt','s@gmail.com'),
 ('4a2028eceac5e1f4d252ea13c71ecec6','3.0','bollywood1.txt','s@gmail.com'),
 ('db82206b1d49042d1a710e9c88c21d36','3.0','bollywood1.txt','s@gmail.com'),
 ('a181a603769c1f98ad927e7367c7aa51','3.0','bollywood1.txt','s@gmail.com'),
 ('21582c6c30be1217322cdb9aebaf4a59','3.0','bollywood1.txt','s@gmail.com'),
 ('6f6f027492d24834597d00e4116f154a','3.0','bollywood1.txt','s@gmail.com'),
 ('c6ec967abb10249593dff186a39617b0','3.0','bollywood1.txt','s@gmail.com'),
 ('0d149b90e7394297301c90191ae775f0','3.0','bollywood1.txt','s@gmail.com'),
 ('0ba4439ee9a46d9d9f14c60f88f45f87','3.0','bollywood1.txt','s@gmail.com'),
 ('16ca93df9965e5296337cd88c52f1a2c','3.0','bollywood1.txt','s@gmail.com'),
 ('9afdf4b52d55866f7e67e5c893314129','3.0','bollywood1.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('492bd93456b81ad92f61e8891174ed04','2.0','bollywood1.txt','s@gmail.com'),
 ('18218139eec55d83cf82679934e5cd75','2.0','bollywood1.txt','s@gmail.com'),
 ('b2fdab230a2c39f3595a947861863cb7','2.0','bollywood1.txt','s@gmail.com'),
 ('2c61ebff5a7f675451467527df66788d','2.0','bollywood1.txt','s@gmail.com'),
 ('53d670af9bb16ea82e7ef41ee23ec6df','2.0','bollywood1.txt','s@gmail.com'),
 ('f6b97efb0d0e5583be95b68319ede622','2.0','bollywood1.txt','s@gmail.com'),
 ('f84796f9e55fd22f58e8fe523ab1815a','2.0','bollywood1.txt','s@gmail.com'),
 ('628b7db04235f228d40adc671413a8c8','2.0','bollywood1.txt','s@gmail.com'),
 ('826ad6b0338304c40b42644b5144f80a','2.0','bollywood1.txt','s@gmail.com'),
 ('79cfac6387e0d582f83a29a04d0bcdc4','37.0','bollywood5.txt','s@gmail.com'),
 ('042c0e7a5a606752b998e62773f87ee1','30.0','bollywood5.txt','s@gmail.com'),
 ('094404a16452d4e6f38e78926e44d704','28.0','bollywood5.txt','s@gmail.com'),
 ('5d1a128db36370bffada42085d7f9a23','24.0','bollywood5.txt','s@gmail.com'),
 ('d7b85f12bdf36266db695411a654f73f','19.0','bollywood5.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('8fc42c6ddf9966db3b09e84365034357','18.0','bollywood5.txt','s@gmail.com'),
 ('01b6e20344b68835c5ed1ddedf20d531','16.0','bollywood5.txt','s@gmail.com'),
 ('13b5bfe96f3e2fe411c9f66f4a582adf','13.0','bollywood5.txt','s@gmail.com'),
 ('d55669822f1a8cf72ec1911e462a54eb','13.0','bollywood5.txt','s@gmail.com'),
 ('ed2b5c0139cec8ad2873829dc1117d50','9.0','bollywood5.txt','s@gmail.com'),
 ('5fa9db2e335ef69a4eeb9fe7974d61f4','9.0','bollywood5.txt','s@gmail.com'),
 ('639bae9ac6b3e1a84cebb7b403297b79','9.0','bollywood5.txt','s@gmail.com'),
 ('be5d5d37542d75f93a87094459f76678','8.0','bollywood5.txt','s@gmail.com'),
 ('2de1b2d6a6738df78c5f9733853bd170','7.0','bollywood5.txt','s@gmail.com'),
 ('9e925e9341b490bfd3b4c4ca3b0c1ef2','7.0','bollywood5.txt','s@gmail.com'),
 ('a181a603769c1f98ad927e7367c7aa51','7.0','bollywood5.txt','s@gmail.com'),
 ('804266f946a58c56d9a60309cc6c116c','7.0','bollywood5.txt','s@gmail.com'),
 ('c68271a63ddbc431c307beb7d2918275','6.0','bollywood5.txt','s@gmail.com'),
 ('97bc592b27a9ada2d9a4bb418ed0ebed','6.0','bollywood5.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('7d0db380a5b95a8ba1da0bca241abda1','6.0','bollywood5.txt','s@gmail.com'),
 ('e268443e43d93dab7ebef303bbe9642f','5.0','bollywood5.txt','s@gmail.com'),
 ('723aa82a83c278d5e7e7be9b109b406a','5.0','bollywood5.txt','s@gmail.com'),
 ('b5c0b187fe309af0f4d35982fd961d7e','5.0','bollywood5.txt','s@gmail.com'),
 ('4a2028eceac5e1f4d252ea13c71ecec6','5.0','bollywood5.txt','s@gmail.com'),
 ('cc71d8f3dc8842c0f4f55e3f5b388ec6','5.0','bollywood5.txt','s@gmail.com'),
 ('0d149b90e7394297301c90191ae775f0','5.0','bollywood5.txt','s@gmail.com'),
 ('23a58bf9274bedb19375e527a0744fa9','5.0','bollywood5.txt','s@gmail.com'),
 ('8bf8854bebe108183caeb845c7676ae4','4.0','bollywood5.txt','s@gmail.com'),
 ('bdbd6db1d8cc09a957e86180fda9442a','4.0','bollywood5.txt','s@gmail.com'),
 ('584826e70485130530f7f01a973d5637','4.0','bollywood5.txt','s@gmail.com'),
 ('df3f079de6961496f0460dcfdbf9bca3','4.0','bollywood5.txt','s@gmail.com'),
 ('ef56b0b0ddb93c2885892c06be830c68','4.0','bollywood5.txt','s@gmail.com'),
 ('65b50b04a6af50bb2f174db30a8c6dad','3.0','bollywood5.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('0b3b97fa66886c5688ee4ae80ec0c3c2','3.0','bollywood5.txt','s@gmail.com'),
 ('46c48bec0d282018b9d167eef7711b2c','3.0','bollywood5.txt','s@gmail.com'),
 ('dd1c943ed17328a29a56cf81941c5488','3.0','bollywood5.txt','s@gmail.com'),
 ('d2974c96dc96b3f30a6168bcc4b25b02','3.0','bollywood5.txt','s@gmail.com'),
 ('2b9283462482448559820aa3d43c351a','3.0','bollywood5.txt','s@gmail.com'),
 ('61a590f1b9b5548efbae70fd7bcf45b3','3.0','bollywood5.txt','s@gmail.com'),
 ('35c5f0e2aaf38641502dbd994aaf507f','3.0','bollywood5.txt','s@gmail.com'),
 ('358a641129b3510e87d3f359567d850c','3.0','bollywood5.txt','s@gmail.com'),
 ('8134b84030cca5285ed0e0b31ba06f10','3.0','bollywood5.txt','s@gmail.com'),
 ('d4579b2688d675235f402f6b4b43bcbf','3.0','bollywood5.txt','s@gmail.com'),
 ('4061838f4395ef541fb1b3f07e42bc21','3.0','bollywood5.txt','s@gmail.com'),
 ('62cc0b4ebb0b57b40778179234246c38','3.0','bollywood5.txt','s@gmail.com'),
 ('53d670af9bb16ea82e7ef41ee23ec6df','2.0','bollywood5.txt','s@gmail.com'),
 ('cb5a82154da55c1d60b207976322febe','2.0','bollywood5.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('628b7db04235f228d40adc671413a8c8','2.0','bollywood5.txt','s@gmail.com'),
 ('df491a4de50739fa9cffdbd4e3f4b4bb','2.0','bollywood5.txt','s@gmail.com'),
 ('73cdddd7730abfc13a55efb9f5685a3b','2.0','bollywood5.txt','s@gmail.com'),
 ('e155e1bb4a9c38e3baf90637ab7865df','2.0','bollywood5.txt','s@gmail.com'),
 ('01b6e20344b68835c5ed1ddedf20d531','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8c7dd922ad47494fc02c388e12c00eac','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('008143511b37543c0f8894cd66b7c39a','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('15117b282328146ac6afebaa8acd80e7','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('593616de15330c0fb2d55e55410bf994','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('be5d5d37542d75f93a87094459f76678','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d55669822f1a8cf72ec1911e462a54eb','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('285cee8e0af981aa03e604d22e0ceb8d','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('c58ff5e3a379801b6cc137158d5545fe','2.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('afa928c729b9e64beb746424e010a95e','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('a9ac5a6cc3cbe84f9c18323af2b9007f','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('c5c1ae150f0e6cbf1e9835c0a80c2646','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('76ee3de97a1b8b903319b7c013d8c877','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('9aefc511bf3c972d673dd84b391cec88','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('28f2b95533afb47cbec1d823b0f1a941','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07cc694b9b3fc636710fa08b6922c42b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07129ce9ad0b70acb32a689059372798','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('972a8c3bc82fbee8f38bdb3edd3a3ff5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f077ffb6ef7719f49f2fa6eb436839c2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('096d749fb6b3b4e1216baee83a4274e5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0dea39b065a22f0dcd737ff0bb778924','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3c6e0b8a9c15224a8228b9a98ca1531d','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('0c83f57c786a0b4a39efab23731c7ebc','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('2925e8a45278b8548e9abe066d968a59','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('5bdf74912a51c34815f11e9a3d20b609','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('18b1da42ee3b0e807d8da8c9451c71a1','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0f6969d7052da9261e31ddb6e88c136e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f9d0f7db12a7419cffc73691045b094b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6d3c5993ca017d0ff169b425d3193f02','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('5fd515799993f7602d29e8a40e09d34e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3ac340832f29c11538fbe2d6f75e8bcc','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('43781db5c40ecc39fd718685594f0956','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('cd69b4957f06cd818d7bf3d61980e291','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1563a27db68ea523f240fd13a657772c','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8aee27616a172be402d6fb154f740286','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('ef399b2d446bb37b7c32ad2cc1b6045b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d7659d6978a2968d837c5e2c4abefbbf','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('435ed7e9f07f740abf511a62c00eef6e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ca794fb2d950acf25c964ecc35f2d7e2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('677b65f2750cf4d2d3cec01f4f0d42c3','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('50c243bde42c9f05b0017c0d69166660','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1ac065e393605e57f3eb01f535522c98','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('70c2e0c1e3e9e3eb635d4b7eb464065d','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ecae13117d6f0584c25a9da6c8f8415e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('09fcf669d1de18b1531fc89a0d684538','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('78cdeac478e1ba62b564cfc57b945f87','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6710ad47901fc717935bc4c6aa9fe736','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('a66db021d84e617bd7667ee300aa29c8','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('04fda438cbea34f486f2a751e658a051','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d26deb6325aed2d1d9ebb9d96c423854','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('698d464dd666293bf79e6a17fd7986a2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('01b6e20344b68835c5ed1ddedf20d531','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8c7dd922ad47494fc02c388e12c00eac','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('008143511b37543c0f8894cd66b7c39a','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('15117b282328146ac6afebaa8acd80e7','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('593616de15330c0fb2d55e55410bf994','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('be5d5d37542d75f93a87094459f76678','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d55669822f1a8cf72ec1911e462a54eb','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('285cee8e0af981aa03e604d22e0ceb8d','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('c58ff5e3a379801b6cc137158d5545fe','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('afa928c729b9e64beb746424e010a95e','2.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('a9ac5a6cc3cbe84f9c18323af2b9007f','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('c5c1ae150f0e6cbf1e9835c0a80c2646','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('76ee3de97a1b8b903319b7c013d8c877','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('9aefc511bf3c972d673dd84b391cec88','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('28f2b95533afb47cbec1d823b0f1a941','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07cc694b9b3fc636710fa08b6922c42b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07129ce9ad0b70acb32a689059372798','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('972a8c3bc82fbee8f38bdb3edd3a3ff5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f077ffb6ef7719f49f2fa6eb436839c2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('096d749fb6b3b4e1216baee83a4274e5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0dea39b065a22f0dcd737ff0bb778924','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3c6e0b8a9c15224a8228b9a98ca1531d','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0c83f57c786a0b4a39efab23731c7ebc','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('2925e8a45278b8548e9abe066d968a59','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('5bdf74912a51c34815f11e9a3d20b609','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('18b1da42ee3b0e807d8da8c9451c71a1','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0f6969d7052da9261e31ddb6e88c136e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f9d0f7db12a7419cffc73691045b094b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6d3c5993ca017d0ff169b425d3193f02','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('5fd515799993f7602d29e8a40e09d34e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3ac340832f29c11538fbe2d6f75e8bcc','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('43781db5c40ecc39fd718685594f0956','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('cd69b4957f06cd818d7bf3d61980e291','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1563a27db68ea523f240fd13a657772c','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8aee27616a172be402d6fb154f740286','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ef399b2d446bb37b7c32ad2cc1b6045b','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('d7659d6978a2968d837c5e2c4abefbbf','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('435ed7e9f07f740abf511a62c00eef6e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ca794fb2d950acf25c964ecc35f2d7e2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('677b65f2750cf4d2d3cec01f4f0d42c3','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('50c243bde42c9f05b0017c0d69166660','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1ac065e393605e57f3eb01f535522c98','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('70c2e0c1e3e9e3eb635d4b7eb464065d','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ecae13117d6f0584c25a9da6c8f8415e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('09fcf669d1de18b1531fc89a0d684538','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('78cdeac478e1ba62b564cfc57b945f87','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6710ad47901fc717935bc4c6aa9fe736','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('a66db021d84e617bd7667ee300aa29c8','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('04fda438cbea34f486f2a751e658a051','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('d26deb6325aed2d1d9ebb9d96c423854','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('698d464dd666293bf79e6a17fd7986a2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('01b6e20344b68835c5ed1ddedf20d531','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8c7dd922ad47494fc02c388e12c00eac','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('008143511b37543c0f8894cd66b7c39a','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('15117b282328146ac6afebaa8acd80e7','4.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('593616de15330c0fb2d55e55410bf994','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('be5d5d37542d75f93a87094459f76678','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d55669822f1a8cf72ec1911e462a54eb','3.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('285cee8e0af981aa03e604d22e0ceb8d','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('c58ff5e3a379801b6cc137158d5545fe','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('afa928c729b9e64beb746424e010a95e','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('a9ac5a6cc3cbe84f9c18323af2b9007f','2.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('c5c1ae150f0e6cbf1e9835c0a80c2646','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('76ee3de97a1b8b903319b7c013d8c877','2.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('9aefc511bf3c972d673dd84b391cec88','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('28f2b95533afb47cbec1d823b0f1a941','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07cc694b9b3fc636710fa08b6922c42b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('07129ce9ad0b70acb32a689059372798','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('972a8c3bc82fbee8f38bdb3edd3a3ff5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f077ffb6ef7719f49f2fa6eb436839c2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('096d749fb6b3b4e1216baee83a4274e5','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0dea39b065a22f0dcd737ff0bb778924','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3c6e0b8a9c15224a8228b9a98ca1531d','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0c83f57c786a0b4a39efab23731c7ebc','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('2925e8a45278b8548e9abe066d968a59','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('5bdf74912a51c34815f11e9a3d20b609','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('18b1da42ee3b0e807d8da8c9451c71a1','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('0f6969d7052da9261e31ddb6e88c136e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('f9d0f7db12a7419cffc73691045b094b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6d3c5993ca017d0ff169b425d3193f02','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('5fd515799993f7602d29e8a40e09d34e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('3ac340832f29c11538fbe2d6f75e8bcc','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('43781db5c40ecc39fd718685594f0956','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('cd69b4957f06cd818d7bf3d61980e291','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1563a27db68ea523f240fd13a657772c','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('8aee27616a172be402d6fb154f740286','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ef399b2d446bb37b7c32ad2cc1b6045b','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d7659d6978a2968d837c5e2c4abefbbf','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('435ed7e9f07f740abf511a62c00eef6e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ca794fb2d950acf25c964ecc35f2d7e2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('677b65f2750cf4d2d3cec01f4f0d42c3','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('50c243bde42c9f05b0017c0d69166660','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('1ac065e393605e57f3eb01f535522c98','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('70c2e0c1e3e9e3eb635d4b7eb464065d','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('ecae13117d6f0584c25a9da6c8f8415e','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('09fcf669d1de18b1531fc89a0d684538','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('78cdeac478e1ba62b564cfc57b945f87','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('6710ad47901fc717935bc4c6aa9fe736','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('a66db021d84e617bd7667ee300aa29c8','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('04fda438cbea34f486f2a751e658a051','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('d26deb6325aed2d1d9ebb9d96c423854','1.0','Savita Vishwakarma.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('698d464dd666293bf79e6a17fd7986a2','1.0','Savita Vishwakarma.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha.txt','s@gmail.com'),
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha.txt','s@gmail.com'),
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha.txt','s@gmail.com'),
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha12.txt','s@gmail.com'),
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha12.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha12.txt','s@gmail.com'),
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha12.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha12.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha12.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha12.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha12.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha1223.txt','s@gmail.com'),
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha1223.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha1223.txt','s@gmail.com'),
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha1223.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha1223.txt','s@gmail.com'),
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha1223.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha1223.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha1223.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha.txt','s@gmail.com'),
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha.txt','s@gmail.com'),
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha12.txt','s@gmail.com'),
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha12.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha12.txt','s@gmail.com'),
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha12.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha12.txt','s@gmail.com'),
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha12.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha12.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha12.txt','s@gmail.com'),
 ('01868918c8cec5bc8773e98ae11a0f54','1.0','aveksha.txt','s@gmail.com');
INSERT INTO `data_table` (`token`,`frequency`,`file`,`userid`) VALUES 
 ('5d97c1ced746618bd44d717bc9b3973a','1.0','aveksha.txt','s@gmail.com'),
 ('49f8e8f71fe3816fb5cfda8dd6ab0a25','1.0','aveksha.txt','s@gmail.com'),
 ('d63c7ede8cb1e1c8db5e51c63fd47cff','1.0','aveksha.txt','s@gmail.com'),
 ('35e73c6ac47d2bb98e707b6471682dda','1.0','aveksha.txt','s@gmail.com'),
 ('2c17c6393771ee3048ae34d6b380c5ec','1.0','aveksha.txt','s@gmail.com'),
 ('4fa483b755cb8c02dd79034f95e032f9','1.0','aveksha.txt','s@gmail.com'),
 ('d1cd22060d0eb5019f821eeeff270ff7','1.0','aveksha.txt','s@gmail.com');
/*!40000 ALTER TABLE `data_table` ENABLE KEYS */;


--
-- Table structure for table `online`.`performance`
--

DROP TABLE IF EXISTS `performance`;
CREATE TABLE `performance` (
  `Email` varchar(50) NOT NULL default '',
  `EncrTime` varchar(45) NOT NULL default '',
  `EncrMemory` varchar(45) NOT NULL default '',
  `Algo` varchar(45) NOT NULL default '',
  `Filename` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`.`performance`
--

/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` (`Email`,`EncrTime`,`EncrMemory`,`Algo`,`Filename`) VALUES 
 ('s@gmail.com','3373.0','220727.0','AES',''),
 ('s@gmail.com','3909.0','240185.0','AES',''),
 ('s@gmail.com','3765.0','195006.0','DES',''),
 ('s@gmail.com','3744.0','173265.0','AES',''),
 ('s@gmail.com','8000.0','136151.0','AES',''),
 ('s@gmail.com','3110.0','218007.0','AES',''),
 ('s@gmail.com','1979.0','139013.0','AES','Savita Vishwakarma.txt'),
 ('s@gmail.com','260.0','196365.0','AES','aveksha.txt'),
 ('s@gmail.com','277.0','292441.0','AES','aveksha12.txt'),
 ('s@gmail.com','330.0','326125.0','AES','aveksha1223.txt'),
 ('s@gmail.com','1322.0','221696.0','AES','aveksha.txt'),
 ('s@gmail.com','1853.0','266094.0','DES','aveksha12.txt'),
 ('s@gmail.com','260.0','167976.0','AES','aveksha.txt');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;


--
-- Table structure for table `online`.`upload_data`
--

DROP TABLE IF EXISTS `upload_data`;
CREATE TABLE `upload_data` (
  `userid` varchar(45) NOT NULL default '0',
  `filename` varchar(100) NOT NULL default '',
  `Encr_key` varchar(500) NOT NULL default '',
  `SHA_key` varchar(500) NOT NULL default '',
  `SHA2_key` varchar(500) NOT NULL default '',
  `Algo` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`.`upload_data`
--

/*!40000 ALTER TABLE `upload_data` DISABLE KEYS */;
INSERT INTO `upload_data` (`userid`,`filename`,`Encr_key`,`SHA_key`,`SHA2_key`,`Algo`) VALUES 
 ('s@gmail.com','bollywood3.txt','d47c5d15dec4b08e185615a5073bb8ab','63dd8b6c4a039dd1b5d3505e407e977f37845dea148fb5945eec9026ce1e533b','','AES'),
 ('s@gmail.com','bollywood1.txt','d47c5d15dec4b08e185615a5073bb8ab','e343d465461efad61f7b13cb20065421039e47ee7a04b46f1c6d3ca467cc3b89','e343d465461efad61f7b13cb20065421039e47ee7a04b46f1c6d3ca467cc3b89','AES'),
 ('s@gmail.com','bollywood5.txt','d47c5d15dec4b08e185615a5073bb8ab','d3f029f385c22f4b36fd20c2c63914e0c84f2231593fc70c22daf6cd531cd1b9','d3f029f385c22f4b36fd20c2c63914e0c84f2231593fc70c22daf6cd531cd1b9','AES'),
 ('s@gmail.com','Savita Vishwakarma.txt','d47c5d15dec4b08e185615a5073bb8ab','f764a6e2361b0d97503a5dca7bab916f5617e95fcf8a9d2ec0e956e2bfe979b7','','AES'),
 ('s@gmail.com','Savita Vishwakarma.txt','d47c5d15dec4b08e185615a5073bb8ab','f764a6e2361b0d97503a5dca7bab916f5617e95fcf8a9d2ec0e956e2bfe979b7','','AES'),
 ('s@gmail.com','Savita Vishwakarma.txt','d47c5d15dec4b08e185615a5073bb8ab','f764a6e2361b0d97503a5dca7bab916f5617e95fcf8a9d2ec0e956e2bfe979b7','','AES'),
 ('s@gmail.com','aveksha.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','AES');
INSERT INTO `upload_data` (`userid`,`filename`,`Encr_key`,`SHA_key`,`SHA2_key`,`Algo`) VALUES 
 ('s@gmail.com','aveksha12.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','','AES'),
 ('s@gmail.com','aveksha1223.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','AES'),
 ('s@gmail.com','aveksha.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','AES'),
 ('s@gmail.com','aveksha12.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','','DES'),
 ('s@gmail.com','aveksha.txt','d47c5d15dec4b08e185615a5073bb8ab','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','f858763c516f587f5dc6ab003a1a9057f37bead86f85088d6e4e6c0505ca1997','AES');
/*!40000 ALTER TABLE `upload_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
