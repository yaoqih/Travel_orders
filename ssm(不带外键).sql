DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phoneNum` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `member` */

insert  into `member`(`id`,`NAME`,`nickname`,`phoneNum`,`email`) values ('E61D65F673D54F68B0861025C69773DB','张三','小三','18888888888','zs@163.com');

/*Table structure for table `order_traveller` */

DROP TABLE IF EXISTS `order_traveller`;

CREATE TABLE `order_traveller` (
  `orderId` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `travellerId` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`orderId`,`travellerId`),
  KEY `travellerId` (`travellerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_traveller` */

insert  into `order_traveller`(`orderId`,`travellerId`) values ('0E7231DC797C486290E8713CA3C6ECCC','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('2FF351C4AC744E2092DCF08CFD314420','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('5DC6A48DD4E94592AE904930EA866AFA','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('A0657832D93E4B10AE88A2D4B70B1A28','3FE27DF2A4E44A6DBC5D0FE4651D3D3E'),('3081770BC3984EF092D9E99760FDABDE','EE7A71FB6945483FBF91543DBE851960'),('55F9AF582D5A4DB28FB4EC3199385762','EE7A71FB6945483FBF91543DBE851960'),('96CC8BD43C734CC2ACBFF09501B4DD5D','EE7A71FB6945483FBF91543DBE851960'),('CA005CF1BE3C4EF68F88ABC7DF30E976','EE7A71FB6945483FBF91543DBE851960'),('E4DD4C45EED84870ABA83574A801083E','EE7A71FB6945483FBF91543DBE851960');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `orderNum` varchar(20) COLLATE utf8_bin NOT NULL,
  `orderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `peopleCount` int(11) DEFAULT NULL,
  `orderDesc` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `payType` int(11) DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  `productId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `memberId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderNum` (`orderNum`),
  KEY `productId` (`productId`),
  KEY `memberId` (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `orders` */

insert  into `orders`(`id`,`orderNum`,`orderTime`,`peopleCount`,`orderDesc`,`payType`,`orderStatus`,`productId`,`memberId`) values ('0E7231DC797C486290E8713CA3C6ECCC','12345','2018-02-03 12:00:00',2,'没什么',0,1,'676C5BD1D35E429A8C2E114939C5685A','E61D65F673D54F68B0861025C69773DB'),('2FF351C4AC744E2092DCF08CFD314420','67890','2018-02-03 12:00:00',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('3081770BC3984EF092D9E99760FDABDE','55555','2018-02-03 12:00:00',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('55F9AF582D5A4DB28FB4EC3199385762','33333','2018-02-03 12:00:00',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('5DC6A48DD4E94592AE904930EA866AFA','54321','2018-02-03 12:00:00',2,'没什么',0,1,'676C5BD1D35E429A8C2E114939C5685A','E61D65F673D54F68B0861025C69773DB'),('96CC8BD43C734CC2ACBFF09501B4DD5D','22222','2018-02-03 12:00:00',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('A0657832D93E4B10AE88A2D4B70B1A28','98765','2018-02-03 12:00:00',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB'),('CA005CF1BE3C4EF68F88ABC7DF30E976','44444','2018-02-03 12:00:00',2,'没什么',0,1,'9F71F01CB448476DAFB309AA6DF9497F','E61D65F673D54F68B0861025C69773DB'),('E4DD4C45EED84870ABA83574A801083E','11111','2018-02-03 12:00:00',2,'没什么',0,1,'12B7ABF2A4C544568B0A7C69F36BF8B7','E61D65F673D54F68B0861025C69773DB');

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL,
  `permissionName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `permission` */

insert  into `permission`(`id`,`permissionName`,`url`) values ('1','user findAll','/user/findAll'),('2','user findById','/user/findById'),('4','product save','/product/save'),('a0b4cf1d-b5c0-43b1-81cc-2d83c354681b','product findAll','/product/findAll'),('d871b8ca-c766-4f49-b2ff-77d839a5763d',NULL,NULL),('eda71f76-ba91-4c85-a0c2-956a957c7844','haha','/haha/findAll');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL,
  `productNum` varchar(50) COLLATE utf8_bin NOT NULL,
  `productName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cityName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DepartureTime` date NOT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productDesc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `productStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product` (`id`,`productNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `product` */

insert  into `product`(`id`,`productNum`,`productName`,`cityName`,`DepartureTime`,`productPrice`,`productDesc`,`productStatus`) values ('12B7ABF2A4C544568B0A7C69F36BF8B7','qianfeng-003','上海五日游','上海','2021-11-05',1800,'魔都我来了',0),('35cc77c3-c0e0-40bc-91f2-a7c77f24182a','qianfeng_004','成都一日游','成都','2021-11-08',1000,'很好玩',1),('676C5BD1D35E429A8C2E114939C5685A','qianfeng-002','北京三日游','北京','2021-11-05',1200,'不错的旅行',1),('9F71F01CB448476DAFB309AA6DF9497F','qianfeng-001','北京三日游','北京','2021-11-05',1200,'不错的旅行',1),('9b7e8e30-ab3c-4ca9-be16-d4a7b77c31f6','qianfeng-005','二仙桥走一走','成华大道','2022-05-16',10,'								走一走只需要三碗米饭\r\n							',1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL,
  `roleName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `roleDesc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `role` */

insert  into `role`(`id`,`roleName`,`roleDesc`) values ('1','USER','管理整合学校'),('2','ADMIN','管理学科'),('b2708cd9-b0cb-4157-951f-82aa384c310f','haha','开心的角色'),('e222265f-71e3-4e25-9c84-8af7f39c4981','test','测试角色');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `permissionId` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `roleId` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`permissionId`,`roleId`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `role_permission` */

insert  into `role_permission`(`permissionId`,`roleId`) values ('1','1'),('2','1'),('4','1'),('1','2'),('2','2'),('1','e222265f-71e3-4e25-9c84-8af7f39c4981'),('2','e222265f-71e3-4e25-9c84-8af7f39c4981'),('4','e222265f-71e3-4e25-9c84-8af7f39c4981'),('a0b4cf1d-b5c0-43b1-81cc-2d83c354681b','e222265f-71e3-4e25-9c84-8af7f39c4981'),('d871b8ca-c766-4f49-b2ff-77d839a5763d','e222265f-71e3-4e25-9c84-8af7f39c4981'),('eda71f76-ba91-4c85-a0c2-956a957c7844','e222265f-71e3-4e25-9c84-8af7f39c4981');

/*Table structure for table `syslog` */

DROP TABLE IF EXISTS `syslog`;

CREATE TABLE `syslog` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL,
  `visitTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `executionTime` int(11) DEFAULT NULL,
  `method` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `syslog` */

insert  into `syslog`(`id`,`visitTime`,`username`,`ip`,`url`,`executionTime`,`method`) values ('28399a5a-0820-4573-b6bc-ba86831c6b52','2022-05-18 16:25:50','wanglaohu','0:0:0:0:0:0:0:1','/permission/findAll',21,'[类名]com.qianfeng.ssm.controller.PermissionController[方法名]findAll'),('6bbf1957-116a-4fff-a3dc-68da3e7835cf','2022-05-18 16:18:00','wanglaohu','0:0:0:0:0:0:0:1','/user/findAll',185,'[类名]com.qianfeng.ssm.controller.UserController[方法名]findAll'),('785fb99b-0286-4614-912e-4c221b918e34','2022-05-18 16:25:41','wanglaohu','0:0:0:0:0:0:0:1','/role/findAll',145,'[类名]com.qianfeng.ssm.controller.RoleController[方法名]findAll'),('f6af9953-4081-4560-a80d-0a58a1161ce0','2022-05-18 16:18:27','wanglaohu','0:0:0:0:0:0:0:1','/role/findAll',31,'[类名]com.qianfeng.ssm.controller.RoleController[方法名]findAll');

/*Table structure for table `traveller` */

DROP TABLE IF EXISTS `traveller`;

CREATE TABLE `traveller` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `phoneNum` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `credentialsType` int(11) DEFAULT NULL,
  `credentialsNum` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `travellerType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `traveller` */

insert  into `traveller`(`id`,`NAME`,`sex`,`phoneNum`,`credentialsType`,`credentialsNum`,`travellerType`) values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E','张龙','男','13333333333',0,'123456789009876543',0),('EE7A71FB6945483FBF91543DBE851960','张小龙','男','15555555555',0,'987654321123456789',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phoneNum` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`username`,`PASSWORD`,`phoneNum`,`STATUS`) values ('1','1111@qq.com','zhishikeng','$2a$10$zMXqGQSpjQbo3iT7QTi49.YNjS5jkvDJ0H6N/B/.1uboHooyE8Gci','1425785',1),('10424c60-846b-4127-a997-f27246fce3ec','123456789@qq.com','vuebaby','12345','1234567890',0),('2','2222@qq.com','superbaby','$2a$10$uroq/glyF45jMmTLAw9DluKrrKkA2RBRAcQYLhUTZyVN431J8py16','1448525',1),('2f3d1370-ee5c-453e-aeed-fc2ebdca1ba9','zhangsan@qianfeng.cn','zhaoliu','$2a$10$4s.1qxyhX8/j/atoxIdJvOYI5aZjbdhqoG9KBBCYWV5vKh2Mni/2C','15454588444',1),('3b0b67ec-a03f-48e3-b74c-2f99fa76f573','1234567555@qq.com','lingkunbaby','$2a$10$6iLD5NvmTF08vHfvV/Fgr.Zlav60uDgGzmdErj5wT9hPlt2XLVPBa','1234567890',1),('636604a8-e679-4456-b4dd-64ea2c78e190','3302880461@qq.com','wanglaohu','$2a$10$uroq/glyF45jMmTLAw9DluKrrKkA2RBRAcQYLhUTZyVN431J8py16','15454588444',1),('636604a8-e679-4456-b4dd-64ea2c78e191',NULL,'zhanglaohu','12345',NULL,0);

/*Table structure for table `users_role` */

DROP TABLE IF EXISTS `users_role`;

CREATE TABLE `users_role` (
  `userId` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `roleId` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`userId`,`roleId`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users_role` */

insert  into `users_role`(`userId`,`roleId`) values ('1','1'),('636604a8-e679-4456-b4dd-64ea2c78e190','1'),('636604a8-e679-4456-b4dd-64ea2c78e191','1'),('1','2'),('2','2'),('636604a8-e679-4456-b4dd-64ea2c78e190','2'),('636604a8-e679-4456-b4dd-64ea2c78e191','2'),('636604a8-e679-4456-b4dd-64ea2c78e191','b2708cd9-b0cb-4157-951f-82aa384c310f'),('1','e222265f-71e3-4e25-9c84-8af7f39c4981'),('636604a8-e679-4456-b4dd-64ea2c78e191','e222265f-71e3-4e25-9c84-8af7f39c4981');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
CREATE TABLE `employee_comments` (
                                     `comment_id` int NOT NULL AUTO_INCREMENT,
                                     `employee_id` int DEFAULT NULL,
                                     `comment` text,
                                     `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                     PRIMARY KEY (`comment_id`),
                                     KEY `employee_id` (`employee_id`),
                                     CONSTRAINT `employee_comments_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (1, 10, 'The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. I destroy my enemies when I make them my friends. Creativity is intelligence having fun. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. A man’s best friends are his ten fingers. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. There is no way to happiness. Happiness is the way. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. Creativity is intelligence having fun. Flexible settings enable you to set up a custom key for comparison and synchronization. You must be the change you wish to see in the world. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Difficult circumstances serve as a textbook of life for people. I destroy my enemies when I make them my friends. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. To connect to a database or schema, simply double-click it in the pane. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Typically, it is employed as an encrypted version of Telnet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. If it scares you, it might be a good thing to try. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A query is used to extract data from the database in a readable format according to the user\'s request. Sometimes you win, sometimes you learn.', '2013-06-15 07:17:00');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (2, 9, 'All journeys have secret destinations of which the traveler is unaware. The Synchronize to Database function will give you a full picture of all database differences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. How we spend our days is, of course, how we spend our lives. Success consists of going from failure to failure without loss of enthusiasm. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. A comfort zone is a beautiful place, but nothing ever grows there. If you wait, all that happens is you get older. The On Startup feature allows you to control what tabs appear when you launch Navicat. Flexible settings enable you to set up a custom key for comparison and synchronization. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In the middle of winter I at last discovered that there was in me an invincible summer. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat 15 has added support for the system-wide dark mode. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. To connect to a database or schema, simply double-click it in the pane. You will succeed because most people are lazy. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To connect to a database or schema, simply double-click it in the pane. How we spend our days is, of course, how we spend our lives. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Flexible settings enable you to set up a custom key for comparison and synchronization. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If the plan doesn’t work, change the plan, but never the goal. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. All journeys have secret destinations of which the traveler is unaware. There is no way to happiness. Happiness is the way. Anyone who has ever made anything of importance was disciplined. If it scares you, it might be a good thing to try. How we spend our days is, of course, how we spend our lives. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. In the middle of winter I at last discovered that there was in me an invincible summer. Creativity is intelligence having fun. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If the plan doesn’t work, change the plan, but never the goal. If opportunity doesn’t knock, build a door. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. A comfort zone is a beautiful place, but nothing ever grows there. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Optimism is the one quality more associated with success and happiness than any other. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. There is no way to happiness. Happiness is the way. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The Synchronize to Database function will give you a full picture of all database differences. Genius is an infinite capacity for taking pains. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. If the plan doesn’t work, change the plan, but never the goal. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. I will greet this day with love in my heart. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If it scares you, it might be a good thing to try. It wasn’t raining when Noah built the ark. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. If it scares you, it might be a good thing to try. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily.', '2007-09-25 18:10:09');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (3, 2, 'Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. You will succeed because most people are lazy. Creativity is intelligence having fun. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. If it scares you, it might be a good thing to try. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Remember that failure is an event, not a person. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Creativity is intelligence having fun. Actually it is just in an idea when feel oneself can achieve and cannot achieve.', '2005-05-19 12:54:12');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (4, 9, 'Champions keep playing until they get it right. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If it scares you, it might be a good thing to try. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Sometimes you win, sometimes you learn. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process.', '2002-11-30 08:12:04');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (5, 2, 'You cannot save people, you can just love them. You will succeed because most people are lazy. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. To connect to a database or schema, simply double-click it in the pane. If the plan doesn’t work, change the plan, but never the goal. Success consists of going from failure to failure without loss of enthusiasm. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. You will succeed because most people are lazy. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The past has no power over the present moment. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Typically, it is employed as an encrypted version of Telnet. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Optimism is the one quality more associated with success and happiness than any other. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Sometimes you win, sometimes you learn. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. In the middle of winter I at last discovered that there was in me an invincible summer. Difficult circumstances serve as a textbook of life for people. How we spend our days is, of course, how we spend our lives. To connect to a database or schema, simply double-click it in the pane. The Synchronize to Database function will give you a full picture of all database differences. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. All journeys have secret destinations of which the traveler is unaware. There is no way to happiness. Happiness is the way. The reason why a great man is great is that he resolves to be a great man. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It wasn’t raining when Noah built the ark. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. How we spend our days is, of course, how we spend our lives. Difficult circumstances serve as a textbook of life for people. How we spend our days is, of course, how we spend our lives. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Remember that failure is an event, not a person. The reason why a great man is great is that he resolves to be a great man. The past has no power over the present moment. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. I will greet this day with love in my heart. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. If you wait, all that happens is you get older. I destroy my enemies when I make them my friends. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view.', '2002-09-16 08:04:19');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (6, 5, 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Synchronize to Database function will give you a full picture of all database differences. Champions keep playing until they get it right. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. All journeys have secret destinations of which the traveler is unaware. I destroy my enemies when I make them my friends. How we spend our days is, of course, how we spend our lives. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The first step is as good as half over. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. The reason why a great man is great is that he resolves to be a great man. Anyone who has never made a mistake has never tried anything new. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The On Startup feature allows you to control what tabs appear when you launch Navicat. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. You cannot save people, you can just love them. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. I will greet this day with love in my heart. If the plan doesn’t work, change the plan, but never the goal. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. You will succeed because most people are lazy. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud.', '2013-05-31 09:42:22');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (7, 2, 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The first step is as good as half over. Sometimes you win, sometimes you learn. A man’s best friends are his ten fingers. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. You cannot save people, you can just love them. If it scares you, it might be a good thing to try. Genius is an infinite capacity for taking pains. There is no way to happiness. Happiness is the way. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The On Startup feature allows you to control what tabs appear when you launch Navicat. The past has no power over the present moment. Champions keep playing until they get it right. The past has no power over the present moment. Typically, it is employed as an encrypted version of Telnet. A comfort zone is a beautiful place, but nothing ever grows there. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Difficult circumstances serve as a textbook of life for people. If the plan doesn’t work, change the plan, but never the goal. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat 15 has added support for the system-wide dark mode. You will succeed because most people are lazy. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Sometimes you win, sometimes you learn. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat 15 has added support for the system-wide dark mode. You must be the change you wish to see in the world. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Creativity is intelligence having fun. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Remember that failure is an event, not a person. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Remember that failure is an event, not a person. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. A man is not old until regrets take the place of dreams. Difficult circumstances serve as a textbook of life for people. Optimism is the one quality more associated with success and happiness than any other. The past has no power over the present moment. You cannot save people, you can just love them. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window.', '2013-01-28 23:34:24');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (8, 10, 'If you wait, all that happens is you get older. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Creativity is intelligence having fun. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. A man’s best friends are his ten fingers. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Genius is an infinite capacity for taking pains. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Flexible settings enable you to set up a custom key for comparison and synchronization. Flexible settings enable you to set up a custom key for comparison and synchronization. Creativity is intelligence having fun. Anyone who has never made a mistake has never tried anything new. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Anyone who has ever made anything of importance was disciplined. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Remember that failure is an event, not a person. I may not have gone where I intended to go, but I think I have ended up where I needed to be. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. I will greet this day with love in my heart. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The past has no power over the present moment. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat 15 has added support for the system-wide dark mode. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If it scares you, it might be a good thing to try. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It wasn’t raining when Noah built the ark. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. If you wait, all that happens is you get older. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Optimism is the one quality more associated with success and happiness than any other. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The reason why a great man is great is that he resolves to be a great man. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If you wait, all that happens is you get older. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2015-12-22 23:01:20');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (9, 7, 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To connect to a database or schema, simply double-click it in the pane. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Anyone who has ever made anything of importance was disciplined. Genius is an infinite capacity for taking pains. You cannot save people, you can just love them. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. You must be the change you wish to see in the world. There is no way to happiness. Happiness is the way. There is no way to happiness. Happiness is the way. Flexible settings enable you to set up a custom key for comparison and synchronization. There is no way to happiness. Happiness is the way. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. All journeys have secret destinations of which the traveler is unaware. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Creativity is intelligence having fun. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat 15 has added support for the system-wide dark mode. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Creativity is intelligence having fun. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. I destroy my enemies when I make them my friends. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', '2021-11-28 00:26:01');
INSERT INTO `employee_comments` (`comment_id`, `employee_id`, `comment`, `created_at`) VALUES (10, 7, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. All journeys have secret destinations of which the traveler is unaware. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. To connect to a database or schema, simply double-click it in the pane. You cannot save people, you can just love them. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. It wasn’t raining when Noah built the ark. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. If opportunity doesn’t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. To connect to a database or schema, simply double-click it in the pane. Creativity is intelligence having fun. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A query is used to extract data from the database in a readable format according to the user\'s request. Genius is an infinite capacity for taking pains. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. A comfort zone is a beautiful place, but nothing ever grows there. What you get by achieving your goals is not as important as what you become by achieving your goals. There is no way to happiness. Happiness is the way. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP.', '2017-12-08 16:16:17');

/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3307
 Source Schema         : ligong_ssm

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 10/06/2023 01:13:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for present
-- ----------------------------
DROP TABLE IF EXISTS `present`;
CREATE TABLE `present`  (
                            `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            `presentName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            `presentDesc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                            `requiredPoints` int(11) NOT NULL,
                            `stock` int(11) NOT NULL,
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of present
-- ----------------------------
INSERT INTO `present` VALUES ('1', '电子书阅读器', '一款便携式电子书阅读器，支持多种电子书格式', 200, 50);
INSERT INTO `present` VALUES ('10', '家用电器', '一款小型家用电器，如电饭煲或电磁炉', 150, 20);
INSERT INTO `present` VALUES ('2', '运动水瓶', '容量为500ml的不锈钢运动水瓶，带有防漏设计', 80, 100);
INSERT INTO `present` VALUES ('3', '旅行背包', '适用于短途旅行的背包，具有多个分隔和口袋', 300, 20);
INSERT INTO `present` VALUES ('4', '无线蓝牙耳机', '具备高音质和长续航的无线蓝牙耳机', 150, 30);
INSERT INTO `present` VALUES ('5', '优惠券礼包', '包含多张各类商店的优惠券，可享受折扣和特惠', 100, 50);
INSERT INTO `present` VALUES ('6', '户外运动手表', '具备计步、心率监测和GPS功能的户外运动手表', 250, 15);
INSERT INTO `present` VALUES ('7', '文具套装', '一套包含笔、记事本和文件夹的精美文具套装', 80, 50);
INSERT INTO `present` VALUES ('8', '音乐耳机', '舒适的音乐耳机，提供出色的音质和降噪功能', 180, 25);
INSERT INTO `present` VALUES ('9', '美妆礼品套装', '一套包含化妆品和护肤品的精美礼品套装', 200, 10);
INSERT INTO `present` VALUES ('cd011b31-bf18-4aaa-97fa-c73b29792b52', '大力神杯', '有大力神的力量', 666, 50);

SET FOREIGN_KEY_CHECKS = 1;


/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ligong_ssm

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2023-06-10 12:54:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for points
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points` (
                          `id` varchar(32) COLLATE utf8_bin NOT NULL,
                          `points` int(11) DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          CONSTRAINT `points_ibfk_1` FOREIGN KEY (`id`) REFERENCES `traveller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of points
-- ----------------------------
INSERT INTO `points` VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '100000');
INSERT INTO `points` VALUES ('EE7A71FB6945483FBF91543DBE851960', '100');


