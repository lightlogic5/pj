/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 100125
Source Host           : localhost:3306
Source Database       : pj

Target Server Type    : MYSQL
Target Server Version : 100125
File Encoding         : 65001

Date: 2017-10-16 23:35:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can add 员工信息设备', '7', 'add_userguid');
INSERT INTO `auth_permission` VALUES ('25', 'Can change 员工信息设备', '7', 'change_userguid');
INSERT INTO `auth_permission` VALUES ('26', 'Can delete 员工信息设备', '7', 'delete_userguid');
INSERT INTO `auth_permission` VALUES ('27', 'Can view 员工信息设备', '7', 'view_userguid');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 常见故障', '8', 'add_solution');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 常见故障', '8', 'change_solution');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 常见故障', '8', 'delete_solution');
INSERT INTO `auth_permission` VALUES ('32', 'Can add 课程资源', '9', 'add_solutionresource');
INSERT INTO `auth_permission` VALUES ('33', 'Can change 课程资源', '9', 'change_solutionresource');
INSERT INTO `auth_permission` VALUES ('34', 'Can delete 课程资源', '9', 'delete_solutionresource');
INSERT INTO `auth_permission` VALUES ('35', 'Can view 常见故障', '8', 'view_solution');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 课程资源', '9', 'view_solutionresource');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 故障工单', '10', 'add_workord');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 故障工单', '10', 'change_workord');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 故障工单', '10', 'delete_workord');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 故障工单', '10', 'view_workord');
INSERT INTO `auth_permission` VALUES ('41', 'Can add Bookmark', '11', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('42', 'Can change Bookmark', '11', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete Bookmark', '11', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('44', 'Can add User Setting', '12', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('45', 'Can change User Setting', '12', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('46', 'Can delete User Setting', '12', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('47', 'Can add User Widget', '13', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('48', 'Can change User Widget', '13', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('49', 'Can delete User Widget', '13', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('50', 'Can add log entry', '14', 'add_log');
INSERT INTO `auth_permission` VALUES ('51', 'Can change log entry', '14', 'change_log');
INSERT INTO `auth_permission` VALUES ('52', 'Can delete log entry', '14', 'delete_log');
INSERT INTO `auth_permission` VALUES ('53', 'Can view Bookmark', '11', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('54', 'Can view log entry', '14', 'view_log');
INSERT INTO `auth_permission` VALUES ('55', 'Can view User Setting', '12', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('56', 'Can view User Widget', '13', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 员工信息设备', '15', 'add_userguid');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 员工信息设备', '15', 'change_userguid');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 员工信息设备', '15', 'delete_userguid');
INSERT INTO `auth_permission` VALUES ('60', 'Can add 属地分配', '16', 'add_possession');
INSERT INTO `auth_permission` VALUES ('61', 'Can change 属地分配', '16', 'change_possession');
INSERT INTO `auth_permission` VALUES ('62', 'Can delete 属地分配', '16', 'delete_possession');
INSERT INTO `auth_permission` VALUES ('63', 'Can view 属地分配', '16', 'view_possession');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 员工信息设备', '15', 'view_userguid');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 员工设备', '17', 'add_employs');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 员工设备', '17', 'change_employs');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 员工设备', '17', 'delete_employs');
INSERT INTO `auth_permission` VALUES ('68', 'Can add 工单讨论', '18', 'add_ordcomments');
INSERT INTO `auth_permission` VALUES ('69', 'Can change 工单讨论', '18', 'change_ordcomments');
INSERT INTO `auth_permission` VALUES ('70', 'Can delete 工单讨论', '18', 'delete_ordcomments');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 员工设备', '17', 'view_employs');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 工单讨论', '18', 'view_ordcomments');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('17', 'operations', 'employs');
INSERT INTO `django_content_type` VALUES ('18', 'operations', 'ordcomments');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'solutions', 'solution');
INSERT INTO `django_content_type` VALUES ('9', 'solutions', 'solutionresource');
INSERT INTO `django_content_type` VALUES ('16', 'userguid', 'possession');
INSERT INTO `django_content_type` VALUES ('15', 'userguid', 'userguid');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userguid');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('10', 'workorders', 'workord');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('14', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('12', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('13', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-10-16 21:45:27.104509');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-10-16 21:45:28.898011');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-10-16 21:45:39.040856');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-10-16 21:45:41.617640');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-10-16 21:45:41.816670');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-10-16 21:45:42.072737');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-10-16 21:45:42.154761');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-10-16 21:45:42.226776');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-10-16 21:45:42.476844');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2017-10-16 21:45:42.635885');
INSERT INTO `django_migrations` VALUES ('11', 'users', '0001_initial', '2017-10-16 21:45:55.808656');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2017-10-16 21:45:59.962880');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2017-10-16 21:46:00.046906');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-10-16 21:46:00.602046');
INSERT INTO `django_migrations` VALUES ('15', 'solutions', '0001_initial', '2017-10-16 21:46:01.934386');
INSERT INTO `django_migrations` VALUES ('16', 'workorders', '0001_initial', '2017-10-16 21:46:02.952648');
INSERT INTO `django_migrations` VALUES ('17', 'xadmin', '0001_initial', '2017-10-16 21:46:06.852684');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0002_log', '2017-10-16 21:46:08.924261');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0003_auto_20160715_0100', '2017-10-16 21:46:09.854499');
INSERT INTO `django_migrations` VALUES ('20', 'users', '0002_auto_20171016_2229', '2017-10-16 22:29:58.810911');
INSERT INTO `django_migrations` VALUES ('21', 'userguid', '0001_initial', '2017-10-16 22:37:05.725772');
INSERT INTO `django_migrations` VALUES ('22', 'userguid', '0002_auto_20171016_2318', '2017-10-16 23:18:13.872025');
INSERT INTO `django_migrations` VALUES ('23', 'operations', '0001_initial', '2017-10-16 23:18:25.069406');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0003_remove_userprofile_unit', '2017-10-16 23:18:26.138714');
INSERT INTO `django_migrations` VALUES ('25', 'userguid', '0003_auto_20171016_2333', '2017-10-16 23:33:15.610917');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1a0ctanqr005zxnvfxq1gntmncueskal', 'ZTg0ZmRhZTg2OGU0N2YwNmJhOWQwNDEwYmRhMWIyMDU5NTU5YzZjMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjVmOTkwNmM4YzVkZmEwYTFhODVmNTI0ZGQ3M2MyYjIzZDk0YjFmIiwiTElTVF9RVUVSWSI6W1sidXNlcmd1aWQiLCJwb3NzZXNzaW9uIl0sIiJdfQ==', '2017-10-30 23:33:49.143851');
INSERT INTO `django_session` VALUES ('fhp1ovsa1poy1m47dfg2tdjypbi76gvy', 'ODkwODM3M2JhNGEyNThjOTZjODNlYzI2MjQzOTBlZDQ1Nzk0MzI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjVmOTkwNmM4YzVkZmEwYTFhODVmNTI0ZGQ3M2MyYjIzZDk0YjFmIn0=', '2017-10-30 22:23:30.371484');

-- ----------------------------
-- Table structure for operations_employs
-- ----------------------------
DROP TABLE IF EXISTS `operations_employs`;
CREATE TABLE `operations_employs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_employs_guid_id_db255d72_fk_userguid_userguid_id` (`guid_id`),
  KEY `operations_employs_unit_id_47c6a942_fk_userguid_possession_id` (`unit_id`),
  KEY `operations_employs_username_id_a0811d86_fk_users_userprofile_id` (`username_id`),
  CONSTRAINT `operations_employs_guid_id_db255d72_fk_userguid_userguid_id` FOREIGN KEY (`guid_id`) REFERENCES `userguid_userguid` (`id`),
  CONSTRAINT `operations_employs_unit_id_47c6a942_fk_userguid_possession_id` FOREIGN KEY (`unit_id`) REFERENCES `userguid_possession` (`id`),
  CONSTRAINT `operations_employs_username_id_a0811d86_fk_users_userprofile_id` FOREIGN KEY (`username_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_employs
-- ----------------------------
INSERT INTO `operations_employs` VALUES ('1', '2', '2', '3');

-- ----------------------------
-- Table structure for operations_ordcomments
-- ----------------------------
DROP TABLE IF EXISTS `operations_ordcomments`;
CREATE TABLE `operations_ordcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `ordernum_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_ordcommen_ordernum_id_b47f9e44_fk_workorder` (`ordernum_id`),
  CONSTRAINT `operations_ordcommen_ordernum_id_b47f9e44_fk_workorder` FOREIGN KEY (`ordernum_id`) REFERENCES `workorders_workord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_ordcomments
-- ----------------------------

-- ----------------------------
-- Table structure for solutions_solution
-- ----------------------------
DROP TABLE IF EXISTS `solutions_solution`;
CREATE TABLE `solutions_solution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `solu` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of solutions_solution
-- ----------------------------

-- ----------------------------
-- Table structure for solutions_solutionresource
-- ----------------------------
DROP TABLE IF EXISTS `solutions_solutionresource`;
CREATE TABLE `solutions_solutionresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `soname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solutions_solutionre_soname_id_c9fcc96a_fk_solutions` (`soname_id`),
  CONSTRAINT `solutions_solutionre_soname_id_c9fcc96a_fk_solutions` FOREIGN KEY (`soname_id`) REFERENCES `solutions_solution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of solutions_solutionresource
-- ----------------------------

-- ----------------------------
-- Table structure for userguid_possession
-- ----------------------------
DROP TABLE IF EXISTS `userguid_possession`;
CREATE TABLE `userguid_possession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posse` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userguid_possession
-- ----------------------------
INSERT INTO `userguid_possession` VALUES ('1', 'bq', '信息管理部');
INSERT INTO `userguid_possession` VALUES ('2', 'dq', '检维修部');
INSERT INTO `userguid_possession` VALUES ('3', 'dd', '油品储运部');

-- ----------------------------
-- Table structure for userguid_userguid
-- ----------------------------
DROP TABLE IF EXISTS `userguid_userguid`;
CREATE TABLE `userguid_userguid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devicetype` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Configinfo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userguid_userguid
-- ----------------------------
INSERT INTO `userguid_userguid` VALUES ('2', 'com', '的股份的股份的', '1111111', '111');
INSERT INTO `userguid_userguid` VALUES ('3', 'pr', '递四方速递发到审', '挨说发生发生', 'hp7110');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `employeeid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$Yf1U6fDXhIcx$hXLUy1Z4kJMHRWJRI2dVSgY8t5WxrDYfLXbRXNbpGAs=', '2017-10-16 22:23:30.165418', '1', 'admin', '', '', '1@qq.com', '1', '1', '2017-10-16 21:46:40.334681', '', null, 'female', '所在部门', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$36000$QnGjotyXJoOW$5ZPLpkLAvbNminQx74Ec+MPWW3qH1Dz5riyw7XAUuhY=', null, '0', '吴涛', '', '', '', '1', '1', '2017-10-16 23:20:00.000000', '111', null, 'female', '所在部门', null, 'image/2017/10/3_u0oL34q.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for workorders_workord
-- ----------------------------
DROP TABLE IF EXISTS `workorders_workord`;
CREATE TABLE `workorders_workord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workorders_workord_username_id_4b21107f_fk_users_userprofile_id` (`username_id`),
  CONSTRAINT `workorders_workord_username_id_4b21107f_fk_users_userprofile_id` FOREIGN KEY (`username_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of workorders_workord
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-10-16 22:23:05.413656', '127.0.0.1', '2', '吴涛', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-10-16 22:37:56.243164', '127.0.0.1', '2', '吴涛', 'change', '修改 is_staff，employeeid，gender 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-10-16 22:39:00.938435', '127.0.0.1', '1', 'userguid object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-10-16 22:57:03.648949', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-10-16 22:58:32.162675', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-10-16 23:19:05.312509', '127.0.0.1', '1', 'possession object', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-10-16 23:19:15.285855', '127.0.0.1', '2', 'possession object', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-10-16 23:19:24.645147', '127.0.0.1', '3', 'possession object', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-10-16 23:19:42.500085', '127.0.0.1', '2', 'userguid object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-10-16 23:19:57.285848', '127.0.0.1', '3', 'userguid object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-10-16 23:20:27.173469', '127.0.0.1', '3', '吴涛', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-10-16 23:20:44.448144', '127.0.0.1', '3', '吴涛', 'change', '修改 employeeid 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2017-10-16 23:20:57.375083', '127.0.0.1', '3', '吴涛', 'change', '修改 is_staff 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2017-10-16 23:23:10.801929', '127.0.0.1', '1', 'employs object', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2017-10-16 23:33:34.238705', '127.0.0.1', '3', '油品储运部', 'change', '修改 posse', '16', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2017-10-16 23:33:44.479190', '127.0.0.1', '2', '检维修部', 'change', '修改 posse', '16', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2017-10-16 23:33:48.920791', '127.0.0.1', '1', '信息管理部', 'change', '修改 posse', '16', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
