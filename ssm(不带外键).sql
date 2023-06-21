/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ligong_ssm

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2023-06-21 22:05:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
                              `id` varchar(50) COLLATE utf8_bin NOT NULL,
                              `activityName` varchar(255) COLLATE utf8_bin NOT NULL,
                              `activityDesc` text COLLATE utf8_bin,
                              `startDate` date DEFAULT NULL,
                              `endDate` date DEFAULT NULL,
                              `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('1', '徒步旅行', 0xE58AA0E585A5E68891E4BBACE8BF9BE8A18CE6838AE999A9E588BAE6BF80E79A84E5BE92E6ADA5E68EA2E999A9EFBC81, '2023-06-15', '2023-06-16', '0');
INSERT INTO `activities` VALUES ('10', '音乐会之夜', 0xE6ACA3E8B58FE89197E5908DE889BAE69CAFE5AEB6E79A84E4BBA4E4BABAE999B6E98689E79A84E99FB3E4B990E4BC9AE38082, '2023-07-08', '2023-07-08', '1');
INSERT INTO `activities` VALUES ('2', '城市观光', 0xE68EA2E7B4A2E8BF99E5BAA7E58585E6BBA1E6B4BBE58A9BE79A84E59F8EE5B882E5928CE585B6E89197E5908DE59CB0E6A087E38082, '2023-06-20', '2023-06-20', '1');
INSERT INTO `activities` VALUES ('3', '沙滩排球锦标赛', 0xE58F82E58AA0E68891E4BBACE79A84E5B9B4E5BAA6E6B299E6BBA9E68E92E79083E994A6E6A087E8B59BE38082, '2023-07-10', '2023-07-10', '1');
INSERT INTO `activities` VALUES ('4', '摄影工作坊', 0xE59091E4B893E5AEB6E5ADA6E4B9A0E69184E5BDB1E889BAE69CAFE38082, '2023-07-05', '2023-07-07', '0');
INSERT INTO `activities` VALUES ('5', '烹饪课程', 0xE68FADE5BC80E7BE8EE9A39FE783B9E9A5AAE79A84E7A798E5AF86E38082, '2023-06-25', '2023-06-25', '0');
INSERT INTO `activities` VALUES ('6', '品酒活动', 0xE59381E591B3E59084E7A78DE7BE8EE5A699E79A84E891A1E89084E98592E38082, '2023-07-15', '2023-07-15', '1');
INSERT INTO `activities` VALUES ('7', '文化节', 0xE4BD93E9AA8CE68891E4BBACE69687E58C96E79A84E4B8B0E5AF8CE4BCA0E7BB9FE38082, '2023-07-20', '2023-07-25', '1');
INSERT INTO `activities` VALUES ('76edaffb-e38c-4c7c-be9c-cbaf6894e933', 'dada', 0x6461616461, '2023-06-05', '2023-06-12', '1');
INSERT INTO `activities` VALUES ('8', '瑜伽静修', 0xE694BEE69DBEE8BAABE5BF83EFBC8CE78495E58F91E6B4BBE58A9BE38082, '2023-08-01', '2023-08-07', '0');
INSERT INTO `activities` VALUES ('9', '自行车之旅', 0xE9AA91E8A18CE59CA8E9A38EE699AFE5A682E794BBE79A84E8B7AFE7BABFE4B88AE38082, '2023-06-30', '2023-06-30', '1');
INSERT INTO `activities` VALUES ('ae5c5b87-7a29-45ac-a04d-75826a13f53f', '上课了', '', null, null, '0');
INSERT INTO `activities` VALUES ('db6f16a6-6118-422b-8dad-167218252f87', 'dada', 0x6461646164616461, '2023-06-12', '2023-06-12', '1');
INSERT INTO `activities` VALUES ('f58d3149-63ff-40f1-aa0c-a8e538eaa621', '上课了', 0x73612E6D64616B6C64, '2023-06-13', '2023-06-28', '1');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
                             `id` varchar(50) COLLATE utf8_bin NOT NULL,
                             `position` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                             `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                             `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                             `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', 'main', 'test', 'test', '110');
INSERT INTO `employees` VALUES ('10', 'Operator', 'Daniel Russell', 'daniel.russell@example.com', '999-999-9999');
INSERT INTO `employees` VALUES ('2', 'Developer', 'Adam Johnson', 'adam.johnson@example.com', '111-111-1111');
INSERT INTO `employees` VALUES ('3', 'Analyst', 'Emma Williams', 'emma.williams@example.com', '222-222-2222');
INSERT INTO `employees` VALUES ('4', 'Designer', 'Lauren Taylor', 'lauren.taylor@example.com', '333-333-3333');
INSERT INTO `employees` VALUES ('5', 'Engineer', 'Jacob Brown', 'jacob.brown@example.com', '444-444-4444');
INSERT INTO `employees` VALUES ('6', 'Supervisor', 'Olivia Davis', 'olivia.davis@example.com', '555-555-5555');
INSERT INTO `employees` VALUES ('7', 'Technician', 'Ava Jones', 'ava.jones@example.com', '666-666-6666');
INSERT INTO `employees` VALUES ('8', 'Assistant', 'William Wilson', 'william.wilson@example.com', '777-777-7777');
INSERT INTO `employees` VALUES ('9', 'Clerk', 'Sophia Garcia', 'sophia.garcia@example.com', '888-888-8888');
INSERT INTO `employees` VALUES ('935cafe7-4383-4a6c-a264-43f27005632f', 'asdasds', 'asdsa', 'asdsadsadsa', 'asdasd');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
                          `id` varchar(32) COLLATE utf8_bin NOT NULL,
                          `NAME` varchar(20) COLLATE utf8_bin DEFAULT NULL,
                          `nickname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
                          `phoneNum` varchar(20) COLLATE utf8_bin DEFAULT NULL,
                          `email` varchar(20) COLLATE utf8_bin DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
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

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '12345', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '67890', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('3081770BC3984EF092D9E99760FDABDE', '55555', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', '33333', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '54321', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('E4DD4C45EED84870ABA83574A801083E', '11111', '2018-02-03 12:00:00', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');

-- ----------------------------
-- Table structure for order_traveller
-- ----------------------------
DROP TABLE IF EXISTS `order_traveller`;
CREATE TABLE `order_traveller` (
                                   `orderId` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
                                   `travellerId` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
                                   PRIMARY KEY (`orderId`,`travellerId`),
                                   KEY `travellerId` (`travellerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of order_traveller
-- ----------------------------
INSERT INTO `order_traveller` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
                            `id` varchar(50) NOT NULL COMMENT '合作商ID',
                            `name` varchar(50) NOT NULL COMMENT '合作商名称',
                            `sign_time` date NOT NULL COMMENT '签约时间',
                            `contact_name` varchar(20) DEFAULT NULL COMMENT '联系人名称',
                            `contact_tel` varchar(20) DEFAULT NULL COMMENT '联系人电话',
                            `address` varchar(100) DEFAULT NULL COMMENT '联系地址',
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作商表';

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO `partners` VALUES ('1001', '合作商A', '2021-01-01', '张三', '13888888888', '上海市浦东新区XX路XX号');
INSERT INTO `partners` VALUES ('1002', '合作商B', '2021-02-15', '李四', '13999999999', '北京市朝阳区XX路XX号');
INSERT INTO `partners` VALUES ('1003', '合作商C', '2021-03-08', '王五', '13666666666', '广东省深圳市XX路XX号');
INSERT INTO `partners` VALUES ('1004', '合作商D', '2021-04-22', '赵六', '13555555555', '福建省厦门市XX路XX号');
INSERT INTO `partners` VALUES ('1005', '合作商E', '2021-05-16', '韩七', '13666666666', '上海市静安区XX路XX号');
INSERT INTO `partners` VALUES ('1006', '合作商F', '2021-06-30', '李云龙', '123456', '浙江省杭州市XX路XX号');
INSERT INTO `partners` VALUES ('1007', '合作商G', '2021-07-11', '钱八', '13988888888', '江苏省南京市XX路XX号');
INSERT INTO `partners` VALUES ('1008', '合作商H', '2021-08-02', '周九', '13777777777', '北京市海淀区XX路XX号');
INSERT INTO `partners` VALUES ('1009', '合作商I', '2021-09-19', '燕双鹰', '145656', '四川省成都市XX路XX号');
INSERT INTO `partners` VALUES ('1010', '合作商J', '2021-10-08', '吴十', '13911111111', '广东省广州市XX路XX号');
INSERT INTO `partners` VALUES ('6e61db57-43ae-4610-a4a2-5f5f01525731', '独立团', '2023-06-22', '李云龙', '123456', '晋西北战区');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
                              `id` varchar(100) COLLATE utf8_bin NOT NULL,
                              `permissionName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                              `url` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1f09f788-9f1a-4890-8030-5a9b1282c779', null, null);
INSERT INTO `permission` VALUES ('2', 'user findById', '/user/findById');
INSERT INTO `permission` VALUES ('3e990399-b4db-4598-9aea-b02acff6df5c', '测试1', '测试');
INSERT INTO `permission` VALUES ('4', 'product save', '/product/save');
INSERT INTO `permission` VALUES ('4dad9adc-42dc-45da-8c6a-08691bbe54b9', '测试', '测试');
INSERT INTO `permission` VALUES ('7f73ce4c-0c9a-4721-bf4c-3652fb17883b', null, null);
INSERT INTO `permission` VALUES ('a0b4cf1d-b5c0-43b1-81cc-2d83c354681b', 'product findAll', '/product/findAll');
INSERT INTO `permission` VALUES ('eda71f76-ba91-4c85-a0c2-956a957c7844', 'haha', '/haha/findAll');

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

-- ----------------------------
-- Table structure for present
-- ----------------------------
DROP TABLE IF EXISTS `present`;
CREATE TABLE `present` (
                           `id` varchar(50) COLLATE utf8_bin NOT NULL,
                           `presentName` varchar(100) COLLATE utf8_bin NOT NULL,
                           `presentDesc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
                           `requiredPoints` int(11) NOT NULL,
                           `stock` int(11) NOT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of present
-- ----------------------------
INSERT INTO `present` VALUES ('1', '电子书阅读器', '一款便携式电子书阅读器，支持多种电子书格式', '200', '50');
INSERT INTO `present` VALUES ('10', '家用电器', '一款小型家用电器，如电饭煲或电磁炉', '150', '20');
INSERT INTO `present` VALUES ('2', '运动水瓶', '容量为500ml的不锈钢运动水瓶，带有防漏设计', '80', '100');
INSERT INTO `present` VALUES ('3', '旅行背包', '适用于短途旅行的背包，具有多个分隔和口袋', '300', '20');
INSERT INTO `present` VALUES ('4', '无线蓝牙耳机', '具备高音质和长续航的无线蓝牙耳机', '150', '30');
INSERT INTO `present` VALUES ('5', '优惠券礼包', '包含多张各类商店的优惠券，可享受折扣和特惠', '100', '50');
INSERT INTO `present` VALUES ('6', '户外运动手表', '具备计步、心率监测和GPS功能的户外运动手表', '250', '15');
INSERT INTO `present` VALUES ('7', '文具套装', '一套包含笔、记事本和文件夹的精美文具套装', '80', '50');
INSERT INTO `present` VALUES ('8', '音乐耳机', '舒适的音乐耳机，提供出色的音质和降噪功能', '180', '25');
INSERT INTO `present` VALUES ('9', '美妆礼品套装', '一套包含化妆品和护肤品的精美礼品套装', '200', '10');
INSERT INTO `present` VALUES ('cd011b31-bf18-4aaa-97fa-c73b29792b52', '大力神杯', '有大力神的力量', '666', '50');

-- ----------------------------
-- Table structure for product
-- ----------------------------
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

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('00f1eddf-7ab2-4068-a447-8763b28e40a6', 'cqut-12', 'test', '重庆', '2023-06-15', '3', 'test', '1');
INSERT INTO `product` VALUES ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'qianfeng-003', '上海五日游', '上海', '2021-11-05', '1800', '魔都我来了', '0');
INSERT INTO `product` VALUES ('35cc77c3-c0e0-40bc-91f2-a7c77f24182a', 'qianfeng_004', '成都一日游', '成都', '2021-11-08', '1000', '很好玩', '1');
INSERT INTO `product` VALUES ('676C5BD1D35E429A8C2E114939C5685A', 'qianfeng-002', '北京三日游', '北京', '2021-11-05', '1200', '不错的旅行', '1');
INSERT INTO `product` VALUES ('9F71F01CB448476DAFB309AA6DF9497F', 'qianfeng-001', '北京三日游', '北京', '2021-11-05', '1200', '不错的旅行', '1');
INSERT INTO `product` VALUES ('9b7e8e30-ab3c-4ca9-be16-d4a7b77c31f6', 'qianfeng-005', '二仙桥走一走', '成华大道', '2022-05-16', '10', '								走一走只需要三碗米饭\r\n							', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
                        `id` varchar(100) COLLATE utf8_bin NOT NULL,
                        `roleName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                        `roleDesc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'USER', '管理整合学校');
INSERT INTO `role` VALUES ('2', 'ADMIN', '管理学科');
INSERT INTO `role` VALUES ('366b2d15-d9bd-4259-a3c7-f745d338ba6f', 'VIP', 'vip');
INSERT INTO `role` VALUES ('50111b3e-bc52-4b32-8e2c-2fbee17fccb2', 'liyunlong', '独立团团长');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
                                   `permissionId` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
                                   `roleId` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
                                   PRIMARY KEY (`permissionId`,`roleId`),
                                   KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('4', '1');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('1f09f788-9f1a-4890-8030-5a9b1282c779', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('2', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('3e990399-b4db-4598-9aea-b02acff6df5c', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('4', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('4dad9adc-42dc-45da-8c6a-08691bbe54b9', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('a0b4cf1d-b5c0-43b1-81cc-2d83c354681b', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('eda71f76-ba91-4c85-a0c2-956a957c7844', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `role_permission` VALUES ('1', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `role_permission` VALUES ('2', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `role_permission` VALUES ('4', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `role_permission` VALUES ('4dad9adc-42dc-45da-8c6a-08691bbe54b9', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `role_permission` VALUES ('1', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `role_permission` VALUES ('2', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `role_permission` VALUES ('4', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `role_permission` VALUES ('a0b4cf1d-b5c0-43b1-81cc-2d83c354681b', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `role_permission` VALUES ('d871b8ca-c766-4f49-b2ff-77d839a5763d', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `role_permission` VALUES ('eda71f76-ba91-4c85-a0c2-956a957c7844', 'e222265f-71e3-4e25-9c84-8af7f39c4981');

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
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

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES ('004f3ead-2523-4a85-8668-90e89bcdfb5f', '2023-06-10 11:34:27', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('00eea5c7-62d9-4ee4-b7f8-fd572b7ef572', '2023-06-10 11:43:47', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('01032618-30cc-40d3-ac1e-031252405565', '2023-06-09 15:32:26', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '2', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('022019ec-8a2d-4a4d-8601-eacefc7c99ba', '2023-06-09 16:31:23', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('0306da74-c67c-4058-b030-91ac28f4d745', '2023-06-10 11:36:29', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('03c20825-b280-48d1-a9f9-4f98c0bd960b', '2023-06-10 12:29:42', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('04052a09-45b7-418e-b232-7e23a21a68aa', '2023-06-10 12:29:45', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('044b79d0-84e9-41d1-af8c-20e7d8439fc4', '2023-06-09 10:11:44', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('0453df03-fdc7-4de5-ab83-d4f6d8690152', '2023-06-09 16:21:35', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('04c8b94c-6a83-4f71-9340-79aa32d47135', '2023-06-10 12:31:48', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '1', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('060c68de-740a-4ce6-abe0-af48ad3dd95d', '2023-06-09 17:01:24', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('07e83828-55f6-4546-8db5-c9755bce3fcd', '2023-06-09 16:32:45', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('08088508-8f1e-4314-a5bf-0c4b99644731', '2023-06-08 19:34:44', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('0862bc35-e86c-4a93-a29e-1ab070500d3a', '2023-06-09 15:54:51', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('0bbbfb0e-4fd4-43c0-8597-d8df8f774bd3', '2023-06-09 17:01:19', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('0c7aab3d-60b4-43a3-a90f-edc42b3dcf01', '2023-06-10 11:35:52', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('0cd67f81-d80b-4b81-8a67-437ddbc78496', '2023-06-21 21:42:12', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('0cf9b3e4-18d6-4d77-8485-7cc89c15d5de', '2023-06-21 21:37:09', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('0dd23ee5-8b55-405d-b128-389c0e8c939a', '2023-06-09 14:35:33', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('0de6b3ef-9060-4a59-952c-5dd9913dcd6c', '2023-06-10 11:34:57', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('0e586017-d108-4810-b8b7-38cbe164415c', '2023-06-10 00:22:33', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('0eb5b001-1411-43ca-a3dc-2bc7401c40db', '2023-06-10 11:58:39', 'test', '0:0:0:0:0:0:0:1', '/present/findById', '0', 'com.qianfeng.controller.PresentController.findById');
INSERT INTO `syslog` VALUES ('0fd61848-cea0-4b5f-9fea-1ffee2cc5b1f', '2023-06-09 23:13:53', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('1152c1ce-26d9-44d4-8bd4-e04a2ce8c623', '2023-06-09 10:11:10', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('11a50b5c-86ac-4952-9285-c89ddb2860ea', '2023-06-10 11:22:36', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('11c88dae-a9dd-4f39-9b4b-3a59a726eb0a', '2023-06-09 17:04:07', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('11f6f946-c041-496b-ab61-56a1e02dfa9b', '2023-06-09 16:21:31', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('121f7190-4985-4f52-b749-3eeecb48886e', '2023-06-09 17:01:25', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('1347450a-51eb-4bfa-9f6b-1ab9dda564f5', '2023-06-09 10:10:59', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('1438096f-94cd-4a80-87ef-25c16f2ec536', '2023-06-08 19:32:50', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('1509257d-60ab-4d4e-be54-1edff542ecd4', '2023-06-10 11:24:18', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('1578c493-7b42-44f4-8d1f-4ef5232f1029', '2023-06-09 16:32:38', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('157a8204-5615-4343-9b6d-6b8034c421e1', '2023-06-09 16:32:39', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('157e0465-d0f2-4b6c-b781-f4602a2b4085', '2023-06-10 11:54:52', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('15b3748b-5b23-43b7-8832-9b3ecfc6bd0f', '2023-06-09 16:32:28', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('15f6fb0a-636e-4fa7-8cbd-f915cd9cca8f', '2023-06-09 09:50:41', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('1612180d-d9da-428e-a17a-b85feebab424', '2023-06-10 00:22:31', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('16d783be-06bb-407f-8121-d6ce3286b11d', '2023-06-09 16:18:22', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('17a3725a-4e53-49ef-83b9-a07e2bbed70f', '2023-06-09 23:21:06', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('180ae44b-607f-44ce-bde2-58d48473e7b3', '2023-06-09 09:50:44', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('18a8bf2c-15ba-4998-8fcd-4c1092bb66c6', '2023-06-09 16:20:49', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('1906444b-440a-4c94-a655-a51cefcc0113', '2023-06-10 00:26:46', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('1930df5e-ff47-4311-9f66-7c13d76cc51c', '2023-06-09 16:34:40', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('196859b2-1f42-4f89-a58c-65e19b60e7b0', '2023-06-21 22:00:52', 'test', '0:0:0:0:0:0:0:1', '/employee/findAll', '2', 'com.qianfeng.controller.EmployeeController.findAll');
INSERT INTO `syslog` VALUES ('1b414f45-d0bf-4562-ae82-db6d5182ddf5', '2023-06-09 10:11:29', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('1bacf491-f917-482c-a740-fa21e7d94e91', '2023-06-08 19:34:46', 'test', '0:0:0:0:0:0:0:1', '/user/findUserByIdAndAllRole', '0', 'com.qianfeng.controller.UserController.findUserByIdAndAllRole');
INSERT INTO `syslog` VALUES ('1c474d72-c318-412a-80f8-60e6fb10277c', '2023-06-09 17:01:20', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('1c85e5fb-6012-45de-a339-0b9d210b276b', '2023-06-09 16:33:02', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('1dc41d3a-2680-4fb1-b0ad-caf273516c22', '2023-06-09 17:01:18', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('1e063cf7-865f-4028-8492-15b481906840', '2023-06-09 09:50:30', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('1e6e0eef-7411-47c8-ac06-d0069f0ba7f1', '2023-06-09 15:58:04', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('1f517998-23de-4ab5-a97d-fdd9548aff7b', '2023-06-10 11:24:18', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('1f91135e-01f3-4828-b2fd-a59afe98ea2c', '2023-06-09 16:32:41', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('20697019-8296-4ae0-9cc5-36284c315399', '2023-06-09 16:04:58', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2198b539-2fc6-444a-b6f0-f54aec0b3a3c', '2023-06-09 15:54:53', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('21add34e-8b95-4b4a-b86b-c40ff2de934d', '2023-06-10 00:26:51', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('22e6b4d0-0942-49f3-b29b-7e3b77a76550', '2023-06-09 14:35:37', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('22f30461-355a-43c3-b6af-96f974bfcb25', '2023-06-09 15:49:29', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2371512f-9a44-471f-9abd-6d4d397b632c', '2023-06-21 21:37:26', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('23b3f9fa-21d3-4254-be1c-7d2fddff6418', '2023-06-10 11:23:44', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('23b58a16-43cf-40ec-ae55-c3cc8f08ae7f', '2023-06-10 00:25:07', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('24c34c96-84a0-4d81-95d6-3781cb65d118', '2023-06-10 11:24:10', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('250a7803-24c5-49b2-9df5-28c51717bd3a', '2023-06-09 16:21:39', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('253e1a1a-aa40-4494-857c-84aaa2c3108d', '2023-06-09 09:57:28', 'test', '0:0:0:0:0:0:0:1', '/user/findUserByIdAndAllRole', '0', 'com.qianfeng.controller.UserController.findUserByIdAndAllRole');
INSERT INTO `syslog` VALUES ('27425ff4-1719-484e-8ebf-0621104345a3', '2023-06-09 16:32:36', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('275ae004-f300-46cd-841e-e562e849d4bc', '2023-06-09 09:57:32', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('28a08577-8b06-436a-92d4-5c27bc2575f6', '2023-06-21 21:41:33', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('29b8bcd4-496d-4b1d-847b-c6125c1913c4', '2023-06-09 15:48:00', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2a86b073-4b07-4a93-8461-ecfe0c6dadc4', '2023-06-09 10:11:06', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('2ac85e81-ccf7-42bc-b405-f5742b69a2a6', '2023-06-14 15:34:29', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2af8ab56-a767-4e74-ac8b-654917dc3714', '2023-06-09 14:22:58', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('2b676f9b-a0e7-498b-813a-a61794c35b57', '2023-06-21 21:37:15', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2c1790e0-70e0-45f5-a4ad-206f82609a1d', '2023-06-09 23:30:32', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('2c3d3729-5de0-40b5-bdd7-fb5c8aa26848', '2023-06-14 15:34:44', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('2c9ce99e-51fa-44ab-a950-ca1cd0414341', '2023-06-09 10:10:01', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '1', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('2d1a84d6-f58b-4e37-9630-0704662e70a7', '2023-06-10 00:24:50', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('2e38418a-b2a6-4adc-a952-ab0d94291420', '2023-06-09 22:58:34', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('2e9c3681-9824-4246-b797-72d0cc13de88', '2023-06-09 10:11:03', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '1', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('2ec40560-2393-4c7e-9a08-a77f0a02ad90', '2023-06-09 15:58:07', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('2ee63776-87c9-4173-a9e9-ab082557abfc', '2023-06-10 11:43:58', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('2fe28e04-82df-412c-bd4e-c1ff23234d6f', '2023-06-09 10:10:02', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('30cfd2f4-6f66-43b6-b83e-57b648941d19', '2023-06-10 11:36:27', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('30e7e076-d71a-4492-8218-9d8b2e761581', '2023-06-09 16:13:31', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '1', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('32363783-98ef-49fb-be6d-8391d8a5b160', '2023-06-10 11:25:54', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('32657ee6-05f6-47d3-b199-7990bb71879a', '2023-06-10 11:59:17', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('328d71a5-9d64-46cf-aa6f-f8666c9020c0', '2023-06-09 16:20:40', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('336e5157-89e9-430b-94d0-2c64a6970bea', '2023-06-08 19:33:50', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('338f7895-4a8a-4599-92fd-c80174fe5cdc', '2023-06-21 21:41:38', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('340a74a9-505f-4aac-906a-3b83269574d2', '2023-06-09 16:34:34', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('3445f25a-4ef7-4c99-8d92-0f3b1f9e094e', '2023-06-09 09:57:21', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('35a0e58a-3554-43a4-82b0-0ab5c1351944', '2023-06-09 16:32:43', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('37c7b234-9ccf-4e40-9b5b-1205ece60fc0', '2023-06-09 23:21:13', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('37cc9045-a5dc-4bb7-b368-1770e05a0593', '2023-06-09 11:28:55', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '2', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('385c62c4-986d-4b5b-971d-1f58babb02a3', '2023-06-09 23:21:17', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('388a987f-5a48-4055-8a75-dea247d6b3d3', '2023-06-09 17:04:21', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('389b6d9b-74e9-4c1d-931d-3473360d3ba4', '2023-06-09 23:21:27', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('3957fbb9-97c3-4ad5-b3e4-fbc348a982af', '2023-06-10 11:22:27', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('396a53c7-8c15-41ac-b1ed-45dbfe7c8c26', '2023-06-09 23:25:22', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('39c56bce-716e-4f58-ab40-c8d1b3efd712', '2023-06-10 11:58:32', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('3a83b593-b8ab-4c10-acbc-9c5904733a9c', '2023-06-09 15:35:35', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('3ac8bb2d-6778-42f0-bbf9-3ed511498dda', '2023-06-09 16:20:42', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('3d8b727f-5a78-41a6-b417-308e75a8ca53', '2023-06-09 16:34:56', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('3df65f05-b6df-4bc1-ac14-bbc4b3beea24', '2023-06-14 15:34:47', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('3e37e583-8927-4cf7-bf6f-84f9a8d92a76', '2023-06-09 14:23:00', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('3ec48772-05ce-4a63-a8a3-ba8707a520da', '2023-06-10 11:35:53', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '1', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('3f09a084-4611-446a-b61b-22adc10d5126', '2023-06-09 17:04:20', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('3fe620dd-4f42-459b-8dca-ffafcc9bb584', '2023-06-09 09:57:27', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('400bd706-361e-4986-8d0d-e5f762254273', '2023-06-09 09:59:02', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('400ced5e-bf76-4e45-9be4-af8ad8afe64d', '2023-06-10 11:25:56', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('405fabe0-3559-4f76-ba1a-211b05b589e4', '2023-06-10 11:34:31', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('40ff591d-8f49-4fe0-af65-1abbdbdf4fdb', '2023-06-09 16:21:10', 'test', '0:0:0:0:0:0:0:1', '/product/findById', '0', 'com.qianfeng.controller.ProductController.findById');
INSERT INTO `syslog` VALUES ('410a5aca-a673-4e1e-830c-bd4923dddc86', '2023-06-09 16:34:39', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('4163592b-db43-43c8-be6b-36bd962ba276', '2023-06-09 17:01:22', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('417b876e-6244-4ad6-b0e2-ea054a474c1f', '2023-06-09 23:12:59', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('41f9b2b8-3ba5-4579-8331-d548bf827293', '2023-06-10 11:57:57', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('43c414ca-4a96-4359-a53c-735be14cbbca', '2023-06-09 16:18:41', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('44fe661f-23f0-4bdf-a015-1cfec7433934', '2023-06-09 09:57:30', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('452b120f-95f4-4f36-af67-2b6280bd7e34', '2023-06-09 22:34:38', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '1', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('452f44a6-7aaa-4205-8f58-3ab41449523a', '2023-06-21 21:37:28', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('46429b4c-b3fe-49ec-943d-4ca21a1119c8', '2023-06-09 09:50:42', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('470d5105-1b3b-4a3b-a7f8-8340ef981965', '2023-06-10 11:30:29', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('4731117e-6d8c-4e39-aba5-5e68b2ce47bd', '2023-06-09 23:14:51', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('4741d898-6db5-493d-a395-03d9f36150ce', '2023-06-08 19:32:46', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('485cc37d-2249-40e9-a47c-09ca79062169', '2023-06-09 10:11:33', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('4868ebed-422b-4b2d-a814-2dee6d1b0998', '2023-06-09 23:15:02', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('4b3622f4-a688-40fd-9568-54b8f35533da', '2023-06-21 21:42:50', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('4bbbfb11-240f-4972-9104-8b17be5b4d92', '2023-06-09 23:13:56', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('4c82baee-e22f-448a-a42d-fd7f252ede5d', '2023-06-10 11:21:33', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('4f59967e-6576-40d0-886f-7be18199cce6', '2023-06-09 23:30:27', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('4f5fb3ef-9933-42d6-95cb-28e2f46d7c28', '2023-06-09 09:57:24', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('507133ae-9ac2-4b63-9409-193c0f0f3ac8', '2023-06-09 15:10:42', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('50900fb1-89f3-49b8-9102-370422a5b1e1', '2023-06-09 17:01:17', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('51004e76-39f7-4531-b368-0e12edea3b9a', '2023-06-21 21:41:35', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('516ab6e3-3a87-4061-ad03-f4d13f9142d0', '2023-06-09 16:13:38', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('51cea99a-0dbb-4624-9967-0b5734785f53', '2023-06-09 23:05:43', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('51d1b4a3-7519-43fd-9b9a-2ea010c1937e', '2023-06-09 23:04:17', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('51f8b7ab-c658-4e78-8c4e-07d67c11ab2c', '2023-06-21 22:01:51', 'test', '0:0:0:0:0:0:0:1', '/employee/findAll', '0', 'com.qianfeng.controller.EmployeeController.findAll');
INSERT INTO `syslog` VALUES ('51f8e2d6-cf66-4938-bdc0-559fbc80c9f9', '2023-06-09 16:29:46', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('52dcec18-fe2e-468a-b3d9-5e1db4a7d360', '2023-06-09 16:20:58', 'test', '0:0:0:0:0:0:0:1', '/product/findById', '0', 'com.qianfeng.controller.ProductController.findById');
INSERT INTO `syslog` VALUES ('5313f292-66c8-41fe-853e-486e1cdf0aae', '2023-06-09 17:01:21', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('53858512-7904-4ddd-b8cc-15f857ed8994', '2023-06-09 16:26:43', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('53e1ae8b-3c63-4b19-ad73-5c54cd9e4a35', '2023-06-09 16:13:50', 'test', '0:0:0:0:0:0:0:1', '/partner/save', '0', 'com.qianfeng.controller.PartnersController.save');
INSERT INTO `syslog` VALUES ('543ac1cb-18d8-476a-a6b7-af2e957a58a1', '2023-06-09 09:57:49', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('5570259a-f58a-4809-ab34-2dea337612c6', '2023-06-09 23:10:26', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '2', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('5587c52c-4ae2-4d4e-832f-c7d86da0dee8', '2023-06-10 00:23:08', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '1', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('55890a73-a31b-4397-ac82-707b89f23a6e', '2023-06-10 11:35:59', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('5644b788-b921-4abf-abae-f9e25546d592', '2023-06-21 21:37:22', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('57ccf01f-d60a-4a5a-8a43-c0b9a6ccb1f0', '2023-06-09 09:43:21', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '1', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('57f61e3b-5a03-4bff-9486-96536d6f154c', '2023-06-09 15:49:19', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('580fe305-ad96-4319-8ab9-8da44ec9f64d', '2023-06-09 16:32:16', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('58c8b6ee-47d5-4227-b431-d5890e8484c8', '2023-06-09 09:57:15', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('5a3e6959-144c-4842-af4d-2a52d9a1c637', '2023-06-14 15:34:37', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('5b3a05d4-9d5e-4c9e-b10c-fa8a73f5881e', '2023-06-09 09:53:54', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('5c110f3e-8ed0-4f44-b24a-38d22567cde4', '2023-06-14 15:34:38', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('5d0b52b0-ce53-4fc2-87d5-3954e1885ade', '2023-06-08 19:38:33', 'test', '0:0:0:0:0:0:0:1', '/user/findUserByIdAndAllRole', '0', 'com.qianfeng.controller.UserController.findUserByIdAndAllRole');
INSERT INTO `syslog` VALUES ('5d10b080-eb9b-49ef-a115-ec02673abcb9', '2023-06-09 16:11:51', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('5d913727-589f-4aa5-a45e-42a5b2c94eac', '2023-06-09 16:30:38', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '1', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('5ea2d057-90d2-4dee-a94d-7d815a928da4', '2023-06-14 15:34:42', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('600c1c37-f52d-474d-87ab-516ebe2e6983', '2023-06-21 22:02:03', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('60257169-ffc2-4444-b145-38d5739eddfa', '2023-06-09 23:04:10', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '1', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('60434be8-068b-4e03-a706-0b238f510dda', '2023-06-10 11:26:18', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('6126e6fd-d045-458a-8f0f-9b983907e36a', '2023-06-10 00:26:46', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('61333b68-1ae1-46b7-9e37-7f6a9e7d331f', '2023-06-09 09:50:38', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('61ec2f39-5c5b-4144-8657-8ea2385c6dfe', '2023-06-09 16:34:37', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('6240b8c3-9ddd-44fb-856c-cca11a7a54cd', '2023-06-21 22:01:56', 'test', '0:0:0:0:0:0:0:1', '/employee/findAll', '0', 'com.qianfeng.controller.EmployeeController.findAll');
INSERT INTO `syslog` VALUES ('6243ae36-4ae9-4f82-b8d0-6fd0efdf54e2', '2023-06-09 22:59:48', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('62e2011a-baa6-4181-b94e-c57480ee75e2', '2023-06-10 11:56:19', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('63a41f67-493b-4654-a05f-fa95d88d2cd9', '2023-06-09 17:02:31', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('63d14ff4-b436-4fe9-936c-67689af7a28a', '2023-06-09 14:35:37', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '1', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('64441541-e503-4165-94d2-417df718dbb0', '2023-06-09 17:04:14', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('644bab4e-36ef-4615-bf0c-2d3d31f0b145', '2023-06-21 21:37:30', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('645a9559-fef0-47aa-afe1-c6a79de71db2', '2023-06-09 23:14:25', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('6617db9a-d083-4f59-aac1-f2864e99e65f', '2023-06-09 17:04:17', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('672d3042-79b9-434d-815e-fb45204acfe8', '2023-06-09 16:17:47', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('677f37f3-42a2-4663-88b8-d2039ad3fd45', '2023-06-09 14:36:01', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('67c7f05d-2400-4c3d-bd9f-23629ad25f64', '2023-06-09 15:10:02', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('684352d8-0e82-46a2-99f1-c64da001e9c2', '2023-06-09 16:30:41', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('68f19741-38eb-444c-bf0e-2108be1cdece', '2023-06-09 16:34:49', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('6988ffcf-3bbf-489b-9a9a-49c8deba8e00', '2023-06-10 11:28:19', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('698db2db-ecfd-493c-862c-76ac9bf258fe', '2023-06-10 12:29:36', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('6b3c064b-fcef-462a-ad05-84cd42eb633f', '2023-06-10 11:43:44', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('6b73bb9f-8f32-48fb-9f2a-eda0817b0422', '2023-06-08 19:33:55', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('6bb13f73-8fc9-49c3-8148-026e39df8e32', '2023-06-09 09:50:47', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('6d6b8eab-2d99-49ad-b9ad-174cff3ff383', '2023-06-09 14:35:25', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('6dee586a-02c2-477c-a358-e451c743db27', '2023-06-10 11:33:12', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('6e05aa6c-3126-401a-980e-50ae12f45793', '2023-06-09 16:21:11', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('71183caa-13ca-4f39-b201-7307104b4ed6', '2023-06-09 16:20:51', 'test', '0:0:0:0:0:0:0:1', '/product/findById', '0', 'com.qianfeng.controller.ProductController.findById');
INSERT INTO `syslog` VALUES ('71bac9ae-0411-46c1-812e-77ee54a96d51', '2023-06-09 22:58:31', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('726453d1-9316-44f3-9748-94bea4a433dc', '2023-06-09 09:50:33', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('72c957a1-8367-47ad-8b97-ec67c8b864dd', '2023-06-09 17:01:09', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('73bedeef-c070-4b27-b45e-9796b2c14b52', '2023-06-09 23:25:17', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('74abc61b-cb7c-46eb-8869-8b87a650f0d4', '2023-06-09 16:32:40', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('75464996-da35-48e6-b41e-4ebee3ed47e7', '2023-06-09 16:15:10', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('75fd0ea3-1462-4c4d-ae22-447bf5042837', '2023-06-10 00:26:39', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('7660c604-db6c-4858-9577-a7e551ce6a22', '2023-06-10 00:25:17', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('76b9c9f5-6b28-46b2-a54b-da2c38671f4f', '2023-06-09 16:32:44', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('77f60b15-a79d-4cd4-9b88-bed14391ce0d', '2023-06-09 10:11:19', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('78d679b3-4427-4306-bc23-fcaed5b8b552', '2023-06-10 11:21:40', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('79d58a91-96b1-4420-b904-a5e11a3f7649', '2023-06-09 23:05:44', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('7a1380f5-de75-4bea-8094-1b15f7049507', '2023-06-09 15:10:22', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('7a351e17-92fa-46a9-851d-366bd5712330', '2023-06-09 22:59:46', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('7ac526f8-c430-45bc-893a-b6e78f323217', '2023-06-09 16:34:52', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('7cc4d240-cd6e-4313-964a-be8c0bc408e0', '2023-06-09 16:32:42', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('7d31c837-223e-49bc-851e-d6faba42c791', '2023-06-09 16:34:38', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('7e8b470f-7a8b-46aa-a7c1-b755fe108f42', '2023-06-09 15:55:08', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('802054cb-553b-4c96-9efe-55ab0d496062', '2023-06-09 22:58:25', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '1', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('81f80e30-a915-4fc3-a110-09e37749ff4d', '2023-06-10 11:58:00', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('82a42ef5-0594-497a-8281-bf3e2ba71bda', '2023-06-10 00:23:16', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('82d1aa8e-6e4b-4634-b9f5-348df859645a', '2023-06-09 09:59:03', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('82f95d3d-fb26-45d8-9b51-77f7531e3b33', '2023-06-21 22:02:06', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('830bd69d-a8f4-4459-9e60-8cf9d2173739', '2023-06-08 19:32:42', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '1', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('837617a3-323a-4864-ba59-2cfd08f7461b', '2023-06-09 17:04:12', 'test', '0:0:0:0:0:0:0:1', '/activity/findById', '0', 'com.qianfeng.controller.ActivityController.findById');
INSERT INTO `syslog` VALUES ('854fe448-8aa3-4d99-98d7-0ad447f76df1', '2023-06-09 16:32:33', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('85795294-69e8-48e8-a52e-c9501cc7af3c', '2023-06-10 11:35:59', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('85db7b9f-b26d-4b7c-a80c-6e72a6739bff', '2023-06-09 16:21:38', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '1', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('8626d46f-a710-442a-8c21-4f1fe742f39d', '2023-06-10 11:28:00', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '2', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('86ae6ad9-eab7-4978-868c-535e104d517b', '2023-06-09 16:30:44', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('88177ea6-148a-498e-9883-d2e9b26c1589', '2023-06-09 14:19:26', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '3', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('88d855ee-39f9-4b82-8033-7553eaa93e1b', '2023-06-09 14:35:31', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('8ad7f547-ba96-4e3c-8bb8-ab12a9934ae6', '2023-06-09 16:11:23', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '1', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('8bed7b1c-2d82-4448-aca4-57eeb3e9d6f7', '2023-06-09 16:34:41', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('8d8651eb-6241-4098-b2a4-c4552fe7e905', '2023-06-09 16:20:43', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('8ff27fa0-2424-47f3-8f13-f3d753d071e1', '2023-06-09 14:35:29', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('90a209b1-8294-44b9-8b34-03eaa0ed79d9', '2023-06-09 15:25:47', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('90a6a18f-a780-4e74-bd08-5c35868a4dac', '2023-06-09 17:04:08', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('90b5398c-cac2-49f5-b442-70ba77dd4ba7', '2023-06-09 16:31:21', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('9187e6e2-03d4-4a5e-af5d-6ccbb3eeba93', '2023-06-21 22:01:49', 'test', '0:0:0:0:0:0:0:1', '/employee/findAll', '0', 'com.qianfeng.controller.EmployeeController.findAll');
INSERT INTO `syslog` VALUES ('91921d1b-135a-4000-9791-1c46db127ce7', '2023-06-10 12:29:40', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('929b1a12-b220-4482-afb1-7e1fa17431c1', '2023-06-21 21:41:40', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('92ad88d6-d846-43e3-a808-61e651141296', '2023-06-09 10:11:43', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('92f41488-3265-49f5-ae18-22581e90c548', '2023-06-10 00:23:21', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('9335c62a-11dd-4be6-a36f-72c8367687ae', '2023-06-10 12:31:54', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '1', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('938308c6-ce42-4a90-adcd-69816d47ce03', '2023-06-10 11:22:16', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('93a975d6-f08a-400f-a881-82a04649b033', '2023-06-10 11:58:33', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('93dbc83d-38bb-41ce-a32b-dad07d6bbde0', '2023-06-09 09:50:40', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('9470b0fe-8ac5-4e04-aaf8-1d74a800ad65', '2023-06-14 15:34:50', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('9572cb1d-8390-43b1-850a-0e0d4dff93e4', '2023-06-10 11:43:51', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('96ee60be-c1b5-4347-bfcf-3dc3c51cc188', '2023-06-09 16:32:45', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('97fbd71e-07c7-4bbf-a6f1-df18e93355e3', '2023-06-09 15:27:32', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('981ae874-7c84-4c16-8c77-464610539d3c', '2023-06-09 10:11:35', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('983903a1-644c-4bde-b357-ca732e3f723a', '2023-06-10 11:25:53', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '2', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('9856783e-6e9d-424b-8a01-4d7679873a8a', '2023-06-08 19:38:37', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '1', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('98fe9b21-5fc5-4558-9185-3456d4a86862', '2023-06-08 19:38:36', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('99c37718-a38a-4451-a18b-5de47a360c8c', '2023-06-08 19:38:32', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('9a59b4ac-72b2-449c-8f4b-d01b22f20f05', '2023-06-21 21:43:45', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('9b0d2921-c1cd-4a2b-96e8-8346e87dafde', '2023-06-10 11:30:29', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('9b9d3d71-25de-48ce-bc04-e608ec341917', '2023-06-09 23:13:55', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('9cf9a6d9-90de-409a-a342-a9fc83997f2d', '2023-06-09 16:30:21', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('9d5a42f8-5ffc-4cb7-8bae-0b2aa868b5bc', '2023-06-09 16:34:45', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('9da92550-60ff-401d-901e-f95691a2cf31', '2023-06-10 11:26:18', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('9dc6a66b-7f06-4f4b-8d54-69dd2c10b3ca', '2023-06-14 15:34:32', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('9e961d22-feb8-4634-8f33-9fcbea56591d', '2023-06-08 19:32:47', 'test', '0:0:0:0:0:0:0:1', '/role/findRoleByIdAndAllPermission', '0', 'com.qianfeng.controller.RoleController.findRoleByIdAndAllPermission');
INSERT INTO `syslog` VALUES ('9f4c29fb-81db-434b-8fd4-f3677cf97bd5', '2023-06-10 11:44:04', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('a06f1b65-aaf1-4f16-a6ad-f0f6c9f30a00', '2023-06-10 11:54:47', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '2', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('a0af55c5-f2ca-4dfe-9bf6-04a0207a44e6', '2023-06-10 11:43:51', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('a19f2001-a92d-4aa9-8fa4-13e9d2c43950', '2023-06-10 12:29:57', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('a1b9c72e-5d09-487f-a9db-3c24e822b995', '2023-06-09 23:30:31', 'test', '0:0:0:0:0:0:0:1', '/activity/findById', '0', 'com.qianfeng.controller.ActivityController.findById');
INSERT INTO `syslog` VALUES ('a2d6a13d-18ad-4ec0-9e2b-d091dd8bce64', '2023-06-10 11:21:35', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('a33aea5c-b47c-4aa0-89c5-0d44cb9923ae', '2023-06-09 16:26:40', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('a3aa9b53-114f-44f5-9f9c-7d5d4d635147', '2023-06-09 16:32:25', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('a43a0e8f-1b02-4359-bec6-3fe5f0864b1a', '2023-06-10 11:36:31', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('a4e1aeca-cb99-4769-84cc-240c6d8a9200', '2023-06-09 16:20:43', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('a4e6195e-f868-4987-a0e0-566a0b7a4af6', '2023-06-09 09:50:39', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('a4ec3a5c-9452-4dc0-a92f-c3c850ee5e16', '2023-06-09 17:02:25', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('a53038dc-a976-41d7-8505-ff877a974b84', '2023-06-09 10:11:19', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('a543c6f5-2f81-4aae-ab5e-a2667780aab9', '2023-06-09 09:50:45', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '1', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('a5d1ad4c-9157-4a64-9ba4-7b03714978e1', '2023-06-09 16:15:12', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('a7416f4c-56e8-4448-8818-a6d92568d564', '2023-06-09 16:18:24', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('a8a8a176-5318-4834-b849-27a83d74524a', '2023-06-10 00:25:10', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('a949e4e4-91e6-4b14-b4a5-5dcf62db410c', '2023-06-10 11:21:41', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('abc22883-3aae-46b8-b6dc-54e56e8b3010', '2023-06-09 16:32:06', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('abcf2b6d-9d9a-48e5-990a-307a1dd17de8', '2023-06-09 23:14:27', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('ac309c31-81bd-4cfa-aacf-852688cd6c49', '2023-06-09 09:50:46', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('aeb29fb2-e098-4c4b-9953-02ebdd70f6f2', '2023-06-09 22:34:41', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('af346901-036a-4efe-9372-17a75342e9d5', '2023-06-09 16:13:50', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('b0e61ba9-2053-4e74-a920-d13b7ec52daf', '2023-06-09 10:11:27', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('b15569bc-3183-4f1b-8f66-e8d0565ab963', '2023-06-09 16:32:39', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('b18a6857-bd52-4a3f-bcc3-063fbf857b58', '2023-06-10 11:22:36', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '1', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('b209be79-ef92-4d68-9c88-b62bf344dd4e', '2023-06-10 00:25:10', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('b2f4acb6-0533-4896-852d-a775ca4955b5', '2023-06-09 16:32:37', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('b3dba6e0-80ad-48a6-aa72-f97555057d17', '2023-06-09 09:50:36', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('b4a3fb7b-52d9-48ab-9040-d4484586ec03', '2023-06-09 17:04:06', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('b542ddb6-d2ea-41aa-934d-52879cf17805', '2023-06-09 17:01:16', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('b58484d2-69ac-4386-8edd-2b9b081f3787', '2023-06-09 16:34:41', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('b6281c0b-4c20-41be-92a2-b4fd651e328b', '2023-06-21 21:43:49', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('b6532480-668f-48a0-a0ae-28f5e54aef83', '2023-06-09 16:21:04', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('b6a2009d-850c-4063-933b-1195aea4ba32', '2023-06-09 16:29:44', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '2', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('b722b94e-6bd3-4d88-bca0-fe78849d49f7', '2023-06-14 15:34:48', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('b763d13c-8e93-4c63-8979-65de0d2d516c', '2023-06-09 09:57:24', 'test', '0:0:0:0:0:0:0:1', '/permission/save', '0', 'com.qianfeng.controller.PermissionControlle.save');
INSERT INTO `syslog` VALUES ('b9b3b356-e0f1-4d92-8a37-68393b8985d3', '2023-06-09 23:30:30', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('b9cb087b-211e-4e01-ab4d-2ac2c59fd7e8', '2023-06-10 11:30:10', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('bafc7725-8399-4fb4-963f-5c18929d1c8a', '2023-06-09 15:55:24', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('bcfc8795-43a5-4c71-9148-b0f4cfd5e5db', '2023-06-10 11:35:49', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('bd64c474-7448-4bd4-82ea-1f7b522fe220', '2023-06-09 10:11:12', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('bdcf3d8b-1e13-4bbe-b07e-4d52925dbe24', '2023-06-09 16:32:17', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('be02360b-c3ab-41b7-a297-0f8f38b8dc52', '2023-06-10 11:30:15', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('bf18083e-24de-4062-a87a-182088c6b1c7', '2023-06-10 11:34:15', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('bfaf1e69-d81a-4300-8d15-3c09f2cd2f15', '2023-06-09 10:11:31', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('c0cbd928-5060-49a0-a29a-c87e4e5d1744', '2023-06-09 16:32:15', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('c1b005c7-50f0-4a6d-b541-f1da2765b4b5', '2023-06-09 14:35:20', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('c1b9d28b-1488-4adf-aa0e-ec0c39d0b620', '2023-06-09 23:21:26', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('c1e7b917-0cfa-4337-ab84-40afae85689a', '2023-06-10 11:34:22', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('c32df35a-9d22-41e1-abab-87aa61bc3421', '2023-06-09 10:10:50', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('c3d6287a-0309-4205-9797-8389b8a33fe6', '2023-06-08 19:33:56', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('c440fa8b-6d40-40a4-af58-590c9266be4f', '2023-06-21 21:39:45', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('c4f90fc4-a8cb-4494-8abf-12faf5b05126', '2023-06-09 16:21:30', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('c5782a38-8b6c-4d0f-b7cb-98bfe5de79a9', '2023-06-09 16:34:50', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('c6916529-4ae1-4858-8007-844f5bc15c39', '2023-06-09 10:10:14', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('c6c7ca11-5305-4b53-91b1-8fad71a508ad', '2023-06-09 17:04:04', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('c7e42802-c9f2-4a3a-a109-7aad230fb312', '2023-06-10 11:43:44', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '1', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('c8152e78-4577-440d-a0ca-f5231730834d', '2023-06-09 23:25:24', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('c8851a95-fa33-4967-920c-acecd4e66fa7', '2023-06-09 23:21:11', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('c885ee60-7778-46c9-8d22-724a1b79a964', '2023-06-09 23:04:18', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('c9036bd5-37f7-4bf8-a3cc-c5dc7df8b1bf', '2023-06-09 16:30:43', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('cb334db1-fd78-4f96-a4f1-1c3b36a59930', '2023-06-09 23:14:57', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('cd44cec4-6b48-4384-9f7f-efacf3803b5a', '2023-06-08 19:34:48', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('cf15a058-9159-4a7a-9c4a-3c53ddf0c7e8', '2023-06-10 11:34:29', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('cf5c2af7-cee6-479c-8ead-c79083970ea4', '2023-06-09 09:50:48', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('d059b96b-4be1-4d66-99be-2bdd91788e88', '2023-06-09 14:35:07', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('d0684acd-b5e5-4c86-84b3-27ffb690503e', '2023-06-09 10:11:07', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '0', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('d0786cea-11c6-4374-9e9b-6d45bc857ff5', '2023-06-09 15:48:02', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('d11c3040-675a-4d44-a7a6-492463959938', '2023-06-09 16:17:45', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('d1649ca9-33c7-4c9c-b207-d7ae624b25a9', '2023-06-09 16:11:51', 'test', '0:0:0:0:0:0:0:1', '/product/add', '0', 'com.qianfeng.controller.ProductController.Add');
INSERT INTO `syslog` VALUES ('d175ca37-7a73-4c1c-8918-03bfdab9ff28', '2023-06-10 00:26:41', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '1', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('d3a521c0-7d9b-43ae-a0d5-04dcc659576f', '2023-06-10 11:33:16', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('d42251f6-bc1e-484c-ac7a-15bf51b8522a', '2023-06-09 16:13:34', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('d43a93b7-d9ff-47bb-872f-11d51c20615d', '2023-06-10 12:31:50', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('d55650c5-0074-4e04-b7ba-5d7879b59dae', '2023-06-09 23:21:08', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '0', 'com.qianfeng.controller.UserController.findById');
INSERT INTO `syslog` VALUES ('d5baf34f-098f-4d4e-88f7-7517820122c9', '2023-06-09 11:28:57', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('d5c5eb46-f785-43cb-8fdf-94dbce0c4b31', '2023-06-10 11:21:40', 'test', '0:0:0:0:0:0:0:1', '/traveller/save', '0', 'com.qianfeng.controller.TravellerController.save');
INSERT INTO `syslog` VALUES ('d72b409c-e435-445f-b4d8-611565746c75', '2023-06-09 15:10:27', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('d74cab2c-f8d0-47e2-b9fd-139f6151a6fc', '2023-06-10 11:26:03', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('da374cda-0c76-4d98-bb1a-3142f5cdedb1', '2023-06-09 16:32:14', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('dc2f2b0d-b88e-4e37-91d5-8bacecf04db7', '2023-06-09 15:58:08', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('ddcc8aec-b652-40f3-807a-25b39c8b6122', '2023-06-09 16:20:56', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('e08fa565-efc3-4983-aefc-2f6ab7c77bce', '2023-06-09 16:32:12', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('e0e0d85d-aa68-4fa3-a310-16a3c2364883', '2023-06-14 15:34:36', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('e11945ab-92e7-48d6-83c2-828d2e6ec3bc', '2023-06-10 11:33:31', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('e3984461-9c46-4fe8-bd58-b6c9db72a675', '2023-06-09 09:50:31', 'test', '0:0:0:0:0:0:0:1', '/role/findAll', '1', 'com.qianfeng.controller.RoleController.findAll');
INSERT INTO `syslog` VALUES ('e3bf27b9-8797-4d37-8b68-5938f4f6610e', '2023-06-09 17:01:13', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('e3e653f4-aa83-43a3-afe6-30df6b6dc2e7', '2023-06-10 11:58:37', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '1', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('e50bc0e8-01fd-4ddb-999e-e071c186a8df', '2023-06-09 15:55:03', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('e50e0e27-ab43-45e3-af48-9031b062fdb2', '2023-06-09 16:30:22', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('e5721232-2350-49d5-a4ee-f7eb8c7272ab', '2023-06-09 15:43:58', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('e59f10d1-3c0d-4965-a263-e3e362738c61', '2023-06-10 00:23:23', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('e644dffa-c4d2-413f-84bc-f97c25f32b6f', '2023-06-09 17:02:31', 'test', '0:0:0:0:0:0:0:1', '/activity/add', '0', 'com.qianfeng.controller.ActivityController.add');
INSERT INTO `syslog` VALUES ('e691f334-5496-4e1a-9f1e-38083e0d03e6', '2023-06-10 12:29:38', 'test', '0:0:0:0:0:0:0:1', '/present/findAll', '0', 'com.qianfeng.controller.PresentController.findAll');
INSERT INTO `syslog` VALUES ('e6f34289-5f7e-4ab5-871a-fba13e8d64cb', '2023-06-10 00:25:09', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('e81e94f7-12b0-409e-8b01-e0ea6f0d93c0', '2023-06-09 15:54:48', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('e988b249-7148-4c17-b244-3d9c5840678c', '2023-06-09 09:57:41', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('e98c0483-9186-4a8c-95b2-89baeeb4a541', '2023-06-10 11:34:58', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('ea6d1953-630c-4bea-a784-aea654a49c51', '2023-06-09 16:17:43', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('ea8cc9b9-61fe-49bf-8d2c-2f270cfe6b9d', '2023-06-09 15:48:26', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('ebf1f496-0e62-4ace-a75f-a25d010c7a57', '2023-06-10 12:29:59', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('ecc3ecf7-3bd8-40de-ab82-3a458fe9eb1e', '2023-06-10 00:25:17', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('ed5f6917-81ee-48df-b8c4-39a01cd220d5', '2023-06-09 09:50:48', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('edfc0f25-3680-4f05-a2da-51c1ca5347d8', '2023-06-09 17:04:04', 'test', '0:0:0:0:0:0:0:1', '/activity/add', '0', 'com.qianfeng.controller.ActivityController.add');
INSERT INTO `syslog` VALUES ('ef2837d9-193d-4575-b107-88e898f607a0', '2023-06-10 11:40:32', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '1', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('ef99a2c6-ed45-42da-9066-b61adf298d91', '2023-06-09 10:11:01', 'test', '0:0:0:0:0:0:0:1', '/orders/findAll', '0', 'com.qianfeng.controller.OrderController.findAll');
INSERT INTO `syslog` VALUES ('f0dc27a6-b3ab-4efb-bc53-2b8156891861', '2023-06-09 14:22:26', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('f15641d9-8b2d-40e1-8ae9-223fbefedc46', '2023-06-09 23:30:42', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('f1654915-ffe0-4907-b134-b35cc4e20200', '2023-06-09 22:58:28', 'test', '0:0:0:0:0:0:0:1', '/orders/findById', '0', 'com.qianfeng.controller.OrderController.findById');
INSERT INTO `syslog` VALUES ('f2f04016-b189-4ad7-b82d-776cb08c1d56', '2023-06-09 15:13:10', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '0', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('f39b47b5-61b1-443f-8491-44d7ddeaab99', '2023-06-09 10:09:58', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('f4437b74-114f-4346-b97a-59096b776777', '2023-06-09 09:50:44', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('f59c5c7c-8aa9-4dcf-84e2-49482fca20d6', '2023-06-10 11:36:47', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('f5a29385-ce7e-423f-82ff-5a0ecc54060b', '2023-06-09 22:59:23', 'test', '0:0:0:0:0:0:0:1', '/activity/findAll', '0', 'com.qianfeng.controller.ActivityController.findAll');
INSERT INTO `syslog` VALUES ('f5b7515a-d982-4e63-ace8-d9cd11e50490', '2023-06-09 16:32:15', 'test', '0:0:0:0:0:0:0:1', '/partner/findAll', '1', 'com.qianfeng.controller.PartnersController.findAll');
INSERT INTO `syslog` VALUES ('f699d36a-8fd8-4318-b362-8a633d87e7af', '2023-06-10 11:28:03', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '1', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('f6d6ce4c-8a5d-4d66-94ae-7a61f77e04b2', '2023-06-10 11:28:19', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('f7758dda-f2ef-47ec-81d9-8073b3ef3a8f', '2023-06-09 10:11:40', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('f8fc9eb2-3069-4204-9951-64ca7995cba1', '2023-06-10 11:23:50', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('fa702ad7-ff0b-47b1-aa70-f5720af8a5d7', '2023-06-09 11:28:58', 'test', '0:0:0:0:0:0:0:1', '/product/findAll', '0', 'com.qianfeng.controller.ProductController.findAll');
INSERT INTO `syslog` VALUES ('faedcfb0-4474-4990-8429-88b2c74d8c11', '2023-06-09 10:11:14', 'test', '0:0:0:0:0:0:0:1', '/permission/findAll', '0', 'com.qianfeng.controller.PermissionControlle.findAll');
INSERT INTO `syslog` VALUES ('fb452052-9de2-4244-a859-16abc95c7ec3', '2023-06-10 11:24:12', 'test', '0:0:0:0:0:0:0:1', '/traveller/findById', '0', 'com.qianfeng.controller.TravellerController.findById');
INSERT INTO `syslog` VALUES ('fc384da2-0d53-466a-8f63-bc79ea899d87', '2023-06-10 00:23:16', 'test', '0:0:0:0:0:0:0:1', '/traveller/findAllPoints', '0', 'com.qianfeng.controller.TravellerController.findAllPoints');
INSERT INTO `syslog` VALUES ('fc3d7361-ef1f-461d-a7d2-42ca3d80e4cb', '2023-06-09 16:13:54', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '0', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('fe76d5a0-f988-4772-856d-ab612d2bd5aa', '2023-06-09 10:11:02', 'test', '0:0:0:0:0:0:0:1', '/user/findAll', '1', 'com.qianfeng.controller.UserController.findAll');
INSERT INTO `syslog` VALUES ('fe97a53e-ced4-4050-b438-a8c6beaf0c48', '2023-06-09 16:34:43', 'test', '0:0:0:0:0:0:0:1', '/partner/findById', '0', 'com.qianfeng.controller.PartnersController.findById');
INSERT INTO `syslog` VALUES ('ff7148a0-42ab-4d4f-b8b3-06461ebe6414', '2023-06-09 09:57:34', 'test', '0:0:0:0:0:0:0:1', '/user/findById', '1', 'com.qianfeng.controller.UserController.findById');

-- ----------------------------
-- Table structure for traveller
-- ----------------------------
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

-- ----------------------------
-- Records of traveller
-- ----------------------------
INSERT INTO `traveller` VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', null, '123456789009876543', null);
INSERT INTO `traveller` VALUES ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', '0', '987654321123456789', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
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

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1111@qq.com', 'zhishikeng', '$2a$2a$10$HZbzryGEhtFhfAhmnCDQe.irQpsnI9L15UVcf6yXDUqOV6gwF4C.K', '1425785', '1');
INSERT INTO `users` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', '12345996@qq.com', 'test', '$2a$10$IOSW6jkqv9lltC86LbZ17.UnZKY89MDiWEmUAhOmRlEFfZa5tL1QW', '123456', '1');
INSERT INTO `users` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e190', '3302880461@qq.com', 'wanglaohu', '$2a$10$MKRVleC5jfPeYJ3ZbyRd6.9MNzZEKa12/VdAc2FVbqd9pcwWB.sJy', '15454588444', '1');
INSERT INTO `users` VALUES ('7732a1e7-17d8-4fdb-98a7-16dad68311c7', '1234596@qq.com', 'wanglaohu1', '$2a$10$cvX4ebLhAdc8JjP1vM7Afe3i05BoVK/qYgk6ih69ZLSsC.i737xhu', '123456', '1');
INSERT INTO `users` VALUES ('83071f3b-82f3-4312-b2ee-d1e432aa6846', '12345688@qq.com', 'liyunlong2', '12345', '123456', '1');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
                              `userId` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
                              `roleId` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
                              PRIMARY KEY (`userId`,`roleId`),
                              KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('1', '1');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', '1');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e190', '1');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e191', '1');
INSERT INTO `users_role` VALUES ('1', '2');
INSERT INTO `users_role` VALUES ('2', '2');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', '2');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e190', '2');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e191', '2');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', '366b2d15-d9bd-4259-a3c7-f745d338ba6f');
INSERT INTO `users_role` VALUES ('1', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', '50111b3e-bc52-4b32-8e2c-2fbee17fccb2');
INSERT INTO `users_role` VALUES ('1', 'b2708cd9-b0cb-4157-951f-82aa384c310f');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', 'b2708cd9-b0cb-4157-951f-82aa384c310f');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e191', 'b2708cd9-b0cb-4157-951f-82aa384c310f');
INSERT INTO `users_role` VALUES ('1', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `users_role` VALUES ('47a28ffd-3ec9-45cf-830b-8617cb38d9f0', 'e222265f-71e3-4e25-9c84-8af7f39c4981');
INSERT INTO `users_role` VALUES ('636604a8-e679-4456-b4dd-64ea2c78e191', 'e222265f-71e3-4e25-9c84-8af7f39c4981');

CREATE TABLE `employee_comments` (
                                     `comment_id` int NOT NULL AUTO_INCREMENT,
                                     `employee_id` int DEFAULT NULL,
                                     `comment` text,
                                     `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                     PRIMARY KEY (`comment_id`),
                                     KEY `employee_id` (`employee_id`),
                                     CONSTRAINT `employee_comments_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
)
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
