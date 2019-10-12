/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90608
Source Host           : localhost:5432
Source Database       : sc
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90608
File Encoding         : 65001

Date: 2019-06-29 08:30:26
*/


-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 67
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_MENU_CLIENT_MENU_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_SITE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_SITE_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_SITE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_USER_CLIENT_USER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_USER_CLIENT_USER_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_USER_CLIENT_USER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_FUNCTION_ACCESS_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_FUNCTION_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_FUNCTION_ACCESS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1603
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq";
CREATE SEQUENCE "public"."APP_LOG_CLIENT_LOG_CLIENT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5085
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_LOG_LOG_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_LOG_LOG_ID_seq";
CREATE SEQUENCE "public"."APP_LOG_LOG_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27295
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_MENU_MENU_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_MENU_MENU_ID_seq";
CREATE SEQUENCE "public"."APP_MENU_MENU_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 162
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_ROUTE_ROUTE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_ROUTE_ROUTE_ID_seq";
CREATE SEQUENCE "public"."APP_ROUTE_ROUTE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_SETTING_SETTING_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_SETTING_SETTING_ID_seq";
CREATE SEQUENCE "public"."APP_SETTING_SETTING_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_USER_GROUP_GROUP_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_USER_GROUP_GROUP_ID_seq";
CREATE SEQUENCE "public"."APP_USER_GROUP_GROUP_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_USER_USER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_USER_USER_ID_seq";
CREATE SEQUENCE "public"."APP_USER_USER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."FILE_MANAGER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."FILE_MANAGER_ID_seq";
CREATE SEQUENCE "public"."FILE_MANAGER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."inbox_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."inbox_ID_seq";
CREATE SEQUENCE "public"."inbox_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MAP_POINT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MAP_POINT_ID_seq";
CREATE SEQUENCE "public"."MAP_POINT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CABANG_CABANG_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CABANG_CABANG_ID_seq";
CREATE SEQUENCE "public"."MASTER_CABANG_CABANG_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_ICON_MARKER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_ICON_MARKER_ID_seq";
CREATE SEQUENCE "public"."MASTER_ICON_MARKER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_LOCATION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_LOCATION_ID_seq";
CREATE SEQUENCE "public"."MASTER_LOCATION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_PORT_PORT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_PORT_PORT_ID_seq";
CREATE SEQUENCE "public"."MASTER_PORT_PORT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_VESSEL_VESSEL_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_VESSEL_VESSEL_ID_seq";
CREATE SEQUENCE "public"."MASTER_VESSEL_VESSEL_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MQTT_DEVICE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MQTT_DEVICE_ID_seq";
CREATE SEQUENCE "public"."MQTT_DEVICE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MQTT_DEVICE_TYPE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MQTT_DEVICE_TYPE_ID_seq";
CREATE SEQUENCE "public"."MQTT_DEVICE_TYPE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."outbox_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."outbox_ID_seq";
CREATE SEQUENCE "public"."outbox_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."outbox_multipart_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."outbox_multipart_ID_seq";
CREATE SEQUENCE "public"."outbox_multipart_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."pbk_groups_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."pbk_groups_ID_seq";
CREATE SEQUENCE "public"."pbk_groups_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."pbk_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."pbk_ID_seq";
CREATE SEQUENCE "public"."pbk_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."pelni_info_id_info_seq"
-- ----------------------------
DROP SEQUENCE "public"."pelni_info_id_info_seq";
CREATE SEQUENCE "public"."pelni_info_id_info_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq";
CREATE SEQUENCE "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 87
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."sentitems_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."sentitems_ID_seq";
CREATE SEQUENCE "public"."sentitems_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_ARTICLE_CATEGORY_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_ARTICLE_CATEGORY_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_ARTICLE_CATEGORY_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_ARTICLE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_ARTICLE_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_ARTICLE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_MENU_MENU_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_MENU_MENU_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_MENU_MENU_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_PAGE_STATIC_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_PAGE_STATIC_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_PAGE_STATIC_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 17
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_SLIDER_DETAIL_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_SLIDER_DETAIL_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_SLIDER_DETAIL_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_SLIDER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_SLIDER_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_SLIDER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_TAG_ARTICLE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_TAG_ARTICLE_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_TAG_ARTICLE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."WEBSITE_TAG_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WEBSITE_TAG_ID_seq";
CREATE SEQUENCE "public"."WEBSITE_TAG_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_ACCESS"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_ACCESS";
CREATE TABLE "public"."APP_CLIENT_ACCESS" (
"ID" int4 DEFAULT nextval('"APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"READ_PRIV" int4 DEFAULT 0,
"EDIT_PRIV" int4 DEFAULT 0,
"DELETE_PRIV" int4 DEFAULT 0,
"ADD_PRIV" int4 DEFAULT 0,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"MENU_ID" int4,
"IS_DELETE" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('1', 'Global Client', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('2', 'Global Client', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('3', 'Global Client', '1', '1', '1', '1', null, '', null, null, null, null, '3', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('10', 'Client Full Control', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('11', 'Client Full Control', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('12', 'Client Full Control', '1', '1', '1', '1', null, '', null, null, null, null, '3', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('13', 'Client Full Control', '1', '1', '1', '1', null, '', null, null, null, null, '4', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('18', 'Global Client Menu', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('19', 'Global Client Menu', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('20', 'Global Client Menu', '1', '1', '1', '1', null, '', null, null, null, null, '3', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('50', 'Coloco', '1', '0', '0', '0', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('51', 'Coloco', '1', '0', '0', '0', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('52', 'Coloco', '1', '0', '0', '0', null, '', null, null, null, null, '3', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('53', 'Coloco', '1', '0', '0', '0', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('54', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('55', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('58', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('59', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('64', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('65', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('66', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('67', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '9', '0');

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_MENU"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_MENU";
CREATE TABLE "public"."APP_CLIENT_MENU" (
"MENU_ID" int4 DEFAULT nextval('"APP_CLIENT_MENU_CLIENT_MENU_ID_seq"'::regclass) NOT NULL,
"MENU_LEVEL" int4,
"REFERENCE" int4,
"TITLE" text,
"URL" text,
"REMARK" text,
"TARGET" text,
"IMAGE" text,
"WEIGHT" int4,
"SHOW" int4,
"HIERARCHY" int4,
"BASICHIERARCHY" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_MENU
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('1', '1', '0', 'Dashboard', '/client_dashboard', 'Dashboard', '_self', '<i class="fa fa-dashboard"></i>', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('2', '1', '0', 'Report', '/client_report', 'Client Report', '_self', '<i class="fa fa-bar-chart"></i>', '1', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('3', '1', '0', 'Form', '/client_form', 'Client Form', '_self', '<i class="fa fa-pencil"></i>', '2', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('7', '1', '0', 'Peta Indonesia', 'client_peta_indonesia', 'Peta Indonesia', '_self', '<i class="fa fa-globe"></i>', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('9', '1', '0', 'Service Ticket', 'client_ticket', 'Client Ticket', '_self', '<i class="fa fa-user"></i>', '8', '1', null, null, '0', null, '', null, '', null, null);

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_SITE"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_SITE";
CREATE TABLE "public"."APP_CLIENT_SITE" (
"CLIENT_SITE_ID" int4 DEFAULT nextval('"APP_CLIENT_SITE_ID_seq"'::regclass) NOT NULL,
"CLIENT_SITE_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"CLIENT_LOGO" text,
"CLIENT_LOGO_WIDTH" int4,
"CLIENT_LOGO_HEIGHT" int4,
"CLIENT_WALLPAPER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_SITE
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('1', 'Pertamina', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://localhost/uploads/file_manager/pertamina-logo.png', '190', '40', 'http://mediatataruang.com/wp-content/uploads/2017/08/pertamina1.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('2', 'PLN', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://localhost/uploads/file_manager/pln-logo.png', '170', '40', 'https://redkal.com/wp-content/uploads/2017/09/IMG-20170906-WA0030.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('3', 'Pelni', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://localhost/uploads/file_manager/pelni-logo.png', '180', '40', 'http://1.bp.blogspot.com/-k3DU7DtJNus/UxpjhBX7D2I/AAAAAAAAAW8/joo_nXra-yE/s1600/Cermai.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('6', 'CUSTOMER7', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('7', 'PELNI', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('8', 'PERTAMINA', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_USER"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_USER";
CREATE TABLE "public"."APP_CLIENT_USER" (
"USER_ID" int4 DEFAULT nextval('"APP_CLIENT_USER_CLIENT_USER_ID_seq"'::regclass) NOT NULL,
"USERNAME" text,
"EMAIL" text,
"FIRST_NAME" text,
"LAST_NAME" text,
"PASSWORD" text,
"COUNTER" int4,
"STATUS" text,
"REMARK" text,
"CHANGE_PASSWORD" text,
"FUNCTION_ACCESS" text,
"INQUIRY_ACCESS" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"PHONE" text,
"PHOTO" text,
"CLIENT_SITE_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_USER
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('1', 'PLN-12345', 'admin@gmail.com', 'Eko', 'Setiawan', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', 'Client Test', null, 'PLN', null, '0', null, '', null, null, null, null, '08121076201', 'employee2.jpg', '2');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('2', 'PTM-12345', 'pelni@gmail.com', 'Wira', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', '', null, 'Pertamina', null, '0', null, '', null, null, null, null, '090980450455', 'employee1.jpg', '1');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('3', 'PNI-12345', 'indra@pln.co.id', 'indra', 'Setiawan', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', '', null, 'Pelni', null, '0', null, '', null, null, null, null, '08795567454', 'employee1.jpg', '3');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('4', 'PLN-12346', 'admin@gmail.com', 'Teguh', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', 'Client Test', null, 'PLN', null, '0', null, '', null, null, null, null, '08568163177', 'employee2.jpg', '2');

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_USER_GROUP"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_USER_GROUP";
CREATE TABLE "public"."APP_CLIENT_USER_GROUP" (
"GROUP_ID" int4 DEFAULT nextval('"APP_CLIENT_USER_GROUP_CLIENT_USER_GROUP_ID_seq"'::regclass) NOT NULL,
"GROUP_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_USER_GROUP
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES ('1', 'Pelni', '0', null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES ('2', 'Pertamina', '0', null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES ('3', 'PLN', '0', null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES ('4', 'Coloco', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."APP_FILE_MANAGER"
-- ----------------------------
DROP TABLE "public"."APP_FILE_MANAGER";
CREATE TABLE "public"."APP_FILE_MANAGER" (
"FILE_MANAGER_ID" int4 DEFAULT nextval('"FILE_MANAGER_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"SIZE" int4,
"EXTENSION" text,
"PATH" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"TITLE" text,
"TYPE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_FILE_MANAGER
-- ----------------------------
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('9', 'logo.jpg', '16', '.jpg', 'uploads/file_manager/logo.jpg', '0', null, null, null, null, null, null, 'Application Logo', 'image/jpeg');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('10', 'bg-login.jpg', '607', '.jpg', 'uploads/file_manager/bg-login.jpg', '0', null, null, null, null, null, null, 'Background Login', 'image/jpeg');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('11', 'pelni-logo.png', '40', '.png', 'uploads/file_manager/pelni-logo.png', '0', null, null, null, null, null, null, 'Pelni Logo', 'image/png');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('12', 'KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', '2288', '.pdf', 'uploads/file_manager/KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', '0', null, null, null, null, null, null, 'Portfolio', 'application/pdf');
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('14', 'logo_suco_SS4.png', '99', '.png', 'uploads/file_manager/logo_suco_SS4.png', '0', null, null, null, null, null, null, 'ScreenSaver', 'image/png');

-- ----------------------------
-- Table structure for "public"."APP_FUNCTION_ACCESS"
-- ----------------------------
DROP TABLE "public"."APP_FUNCTION_ACCESS";
CREATE TABLE "public"."APP_FUNCTION_ACCESS" (
"ID" int4 DEFAULT nextval('"APP_FUNCTION_ACCESS_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"READ_PRIV" int4 DEFAULT 0,
"EDIT_PRIV" int4 DEFAULT 0,
"DELETE_PRIV" int4 DEFAULT 0,
"ADD_PRIV" int4 DEFAULT 0,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"MENU_ID" int4,
"IS_DELETE" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_FUNCTION_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('446', 'pusat', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('447', 'pusat', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('448', 'pusat', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('449', 'pusat', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('450', 'pusat', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('451', 'pusat', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('452', 'pusat', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('474', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('475', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('476', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('477', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('478', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '39', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('479', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '40', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('480', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '41', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('481', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('482', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('483', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('484', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '8', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('485', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '10', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('486', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '3', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('487', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '11', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('488', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '12', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('489', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '52', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('490', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '4', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('491', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '13', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('492', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '20', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('493', 'administrator', '1', '1', '1', '1', null, '', null, null, null, null, '21', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('514', 'admin_336722', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('515', 'admin_336722', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('516', 'admin_336722', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('517', 'admin_336722', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('518', 'admin_336722', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('519', 'admin_336722', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('520', 'admin_336722', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('521', 'adminx', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('522', 'adminx', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('523', 'adminx', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('524', 'adminx', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('525', 'adminx', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('526', 'adminx', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('527', 'adminx', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('528', 'admin_5041507472787', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('529', 'admin_5041507472787', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('530', 'admin_5041507472787', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('531', 'admin_5041507472787', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('532', 'admin_5041507472787', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('533', 'admin_5041507472787', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('534', 'admin_5041507472787', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('535', 'admin_2211507472870', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('536', 'admin_2211507472870', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('537', 'admin_2211507472870', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('538', 'admin_2211507472870', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('539', 'admin_2211507472870', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('540', 'admin_2211507472870', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('541', 'admin_2211507472870', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('542', 'admin_1121507472885', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('543', 'admin_1121507472885', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('544', 'admin_1121507472885', '0', '0', '0', '1', null, '', null, null, null, null, '6', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('545', 'admin_1121507472885', '0', '0', '0', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('546', 'admin_1121507472885', '0', '1', '0', '0', null, '', null, null, null, null, '38', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('547', 'admin_1121507472885', '0', '0', '1', '0', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('548', 'admin_1121507472885', '0', '0', '1', '0', null, '', null, null, null, null, '37', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1550', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '103', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1551', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '105', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1552', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '107', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1553', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '108', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1554', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '109', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1555', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '127', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1556', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '110', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1557', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '111', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1558', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '112', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1559', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '113', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1560', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '114', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1561', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '125', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1562', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '126', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1563', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '119', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1564', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '122', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1565', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '123', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1566', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '124', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1567', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '128', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1568', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '131', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1569', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '132', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1570', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '133', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1571', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '134', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1572', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '135', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1573', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '136', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1574', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '150', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1575', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '158', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1576', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '160', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1577', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '159', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1578', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '115', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1579', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '116', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1580', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '117', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1581', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '118', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1582', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '130', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1583', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '143', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1584', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '144', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1585', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '145', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1586', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '146', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1587', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '147', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1588', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '148', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1589', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '149', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1590', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '152', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1591', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '154', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1592', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '155', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1593', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '156', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1594', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '157', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1595', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '161', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1596', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '129', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1597', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '139', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1598', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '140', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1599', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '141', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1600', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '142', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1601', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '151', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1602', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '153', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1603', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '162', '0');

-- ----------------------------
-- Table structure for "public"."APP_LOG"
-- ----------------------------
DROP TABLE "public"."APP_LOG";
CREATE TABLE "public"."APP_LOG" (
"LOG_ID" int4 DEFAULT nextval('"APP_LOG_LOG_ID_seq"'::regclass) NOT NULL,
"CREATE_TIME" timestamp(6),
"ACTIVITY" text,
"IP" text,
"DETAIL" text,
"USERNAME" text,
"METHOD" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."APP_LOG_CLIENT"
-- ----------------------------
DROP TABLE "public"."APP_LOG_CLIENT";
CREATE TABLE "public"."APP_LOG_CLIENT" (
"LOG_ID" int4 DEFAULT nextval('"APP_LOG_CLIENT_LOG_CLIENT_ID_seq"'::regclass) NOT NULL,
"CREATE_TIME" timestamp(6),
"ACTIVITY" text,
"IP" text,
"DETAIL" text,
"USERNAME" text,
"CLIENT_SITE_NAME" text,
"METHOD" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_LOG_CLIENT
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."APP_MENU"
-- ----------------------------
DROP TABLE "public"."APP_MENU";
CREATE TABLE "public"."APP_MENU" (
"MENU_ID" int4 DEFAULT nextval('"APP_MENU_MENU_ID_seq"'::regclass) NOT NULL,
"MENU_LEVEL" int4,
"REFERENCE" int4,
"TITLE" text,
"URL" text,
"REMARK" text,
"TARGET" text,
"IMAGE" text,
"WEIGHT" int4,
"SHOW" int4,
"HIERARCHY" int4,
"BASICHIERARCHY" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_MENU
-- ----------------------------
INSERT INTO "public"."APP_MENU" VALUES ('103', '1', '0', 'Setting', '', 'Setting Management', '_self', '<i class="fa fa-cogs"></i> ', '10', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('105', '2', '103', 'Security', null, 'Security', '_self', null, '70', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('107', '3', '105', 'User Management', '/user/', 'User Management', '_self', '', '10', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('108', '3', '105', 'Function Access', '/function_access/', 'Funcion Access', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('109', '3', '105', 'Menu Management', '/menu/', 'Menu Management', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('110', '2', '103', 'Website Setting', '', 'Website', '_self', '', '30', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('111', '3', '110', 'Website Menu', '/website_menu/', 'Website Menu', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('112', '3', '110', 'Page Static', '/page_static/', 'Page Static', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('113', '3', '110', 'Slider', '/slider/', 'Slider', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('114', '3', '110', 'Tag', '/tag', 'Tag', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('117', '2', '115', 'Barge', '/barge/', 'Barge', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('118', '2', '115', 'Port', '/port/', 'Port', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('119', '2', '103', 'Preference', '', 'Preference', '_self', '', '50', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('122', '3', '119', 'Alert Subscriber', '/alert_subscriber', 'SMS Alert', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('123', '3', '119', 'File Manager', '/file_manager', 'File Manager', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('124', '3', '119', 'SMS Gateway', '/sms_gateway', 'SMS Gateway', '_self', '', '30', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('125', '3', '110', 'Article', '/article', 'Article', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('126', '3', '110', 'Article Category', '/article_category', 'Article Category', '_self', '', '30', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('127', '3', '105', 'Log Monitoring', '/log_monitoring', 'Log Monitoring', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('128', '3', '119', 'Running Text Alert', '/running_text', 'Running Text Alert', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('129', '1', '0', 'Dashboard', '/dashboard', 'Dashboard', '_self', '<i class="fa fa-bar-chart"></i> ', '1', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('130', '2', '115', 'BBM ', '/bbm', 'BBM', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('131', '2', '103', 'Client Setting', '', 'Client', '', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('132', '3', '131', 'Client Site', '/client_site', 'Create Site', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('133', '3', '131', 'Client Menu ', '/client_menu', 'Client Menu', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('134', '3', '131', 'Client Access', '/client_access', 'Client Access', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('135', '3', '131', 'Client User', '/client_user', 'Client User', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('136', '3', '131', 'Client Log', '/log_monitoring_client', 'Log Monitoring Client', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('140', '2', '139', 'Form Entry', '/form_entry', 'Form Standar Untuk Input Dari Lokasi', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('141', '1', '0', 'Report', '', 'Report Dari Data Laporan Yang Masuk', '_self', '<i class="fa fa-newspaper-o" aria-hidden="true"></i>', '3', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('142', '2', '141', 'Report', 'report', 'Standard Report', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('143', '2', '115', 'CV', 'cv', 'Master CV', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('144', '2', '115', 'Tools', 'tool', 'Master Tool', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('145', '2', '115', 'Standard & Reference', 'std_ref', 'Standard & Reference', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('146', '2', '115', 'Contract', 'contract', 'Contract', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('147', '2', '115', 'Intervention', 'intervention', 'Intervention', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('148', '2', '115', 'Product', 'product', 'Product Management', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('149', '2', '115', 'Location', 'location', 'Master Location', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('150', '2', '103', 'Application Setting', 'setting', 'Application Setting', '_self', '', '71', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('151', '1', '0', 'Device Location', 'map_point', 'Map Point ', '_self', '<i class="fa fa-globe"></i>', '4', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('152', '2', '115', 'Icon', 'icon', 'Master Icon', '_self', '', '11', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('154', '2', '115', 'Branch', 'cabang', 'branch', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('155', '2', '115', 'Personil', 'personil', 'Personil', '_self', '', '3', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('156', '2', '115', 'Skill', 'skill', 'Information Skill Personal', '_self', '', '3', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('157', '2', '115', 'Position', 'position', 'Position Personal', '_self', '', '4', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('159', '3', '158', 'Setup', 'element_connection', 'Element Connection', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('160', '3', '158', 'Element', 'element_html', 'Create Element', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('161', '2', '115', 'Strategi Business Unit', 'strategi_business_unit', 'Strategi Business Unit', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('162', '1', '0', 'Ticket Manager', 'admin_ticket', 'Ticket Manager', '_self', '<i class="fa fa-user"></i>', '9', '1', null, null, '0', null, '', null, '', null, null);

-- ----------------------------
-- Table structure for "public"."APP_ROUTE"
-- ----------------------------
DROP TABLE "public"."APP_ROUTE";
CREATE TABLE "public"."APP_ROUTE" (
"ROUTE_ID" int4 DEFAULT nextval('"APP_ROUTE_ROUTE_ID_seq"'::regclass) NOT NULL,
"SLUG" text,
"CONTROLLER" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_ROUTE
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."APP_SETTING"
-- ----------------------------
DROP TABLE "public"."APP_SETTING";
CREATE TABLE "public"."APP_SETTING" (
"SETTING_ID" int4 DEFAULT nextval('"APP_SETTING_SETTING_ID_seq"'::regclass) NOT NULL,
"SETTING_NAME" text,
"SETTING_VALUE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_SETTING
-- ----------------------------
INSERT INTO "public"."APP_SETTING" VALUES ('1', 'APP_NAME', 'Sucofindo');
INSERT INTO "public"."APP_SETTING" VALUES ('2', 'APP_WALLPAPER', 'http://localhost/uploads/file_manager/bg-login.jpg');
INSERT INTO "public"."APP_SETTING" VALUES ('4', 'APP_BRAND_HEIGHT', '50px');
INSERT INTO "public"."APP_SETTING" VALUES ('5', 'APP_BRAND_WIDTH', '170px');
INSERT INTO "public"."APP_SETTING" VALUES ('6', 'APP_BRAND_LOGO', 'http://localhost/uploads/file_manager/logo.jpg');
INSERT INTO "public"."APP_SETTING" VALUES ('9', 'APP_SCREEN_SAVER_TIMEOUT', '5');
INSERT INTO "public"."APP_SETTING" VALUES ('10', 'APP_SCREEN_SAVER_IMAGE', 'http://localhost/uploads/file_manager/logo_suco_SS4.png');

-- ----------------------------
-- Table structure for "public"."APP_USER"
-- ----------------------------
DROP TABLE "public"."APP_USER";
CREATE TABLE "public"."APP_USER" (
"USER_ID" int4 DEFAULT nextval('"APP_USER_USER_ID_seq"'::regclass) NOT NULL,
"USERNAME" text,
"EMAIL" text,
"FIRST_NAME" text,
"LAST_NAME" text,
"PASSWORD" text,
"COUNTER" int4,
"STATUS" text,
"REMARK" text,
"CHANGE_PASSWORD" text,
"FUNCTION_ACCESS" text,
"INQUIRY_ACCESS" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"PHONE" text,
"PHOTO" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_USER
-- ----------------------------
INSERT INTO "public"."APP_USER" VALUES ('1', 'admin', 'admin@secureiot.com', 'Admin', 'SecureIOT', '21232f297a57a5a743894a0e4a801fc3', '0', 'Y', '-', null, 'admin', null, '0', null, '', null, null, null, null, '08121076201', 'profile12.jpg');

-- ----------------------------
-- Table structure for "public"."APP_USER_GROUP"
-- ----------------------------
DROP TABLE "public"."APP_USER_GROUP";
CREATE TABLE "public"."APP_USER_GROUP" (
"GROUP_ID" int4 DEFAULT nextval('"APP_USER_GROUP_GROUP_ID_seq"'::regclass) NOT NULL,
"GROUP_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"PHONE" text,
"PHOTO" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_USER_GROUP
-- ----------------------------
INSERT INTO "public"."APP_USER_GROUP" VALUES ('2', 'admin', '0', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."CLIENT_MESSAGE_TICKET"
-- ----------------------------
DROP TABLE "public"."CLIENT_MESSAGE_TICKET";
CREATE TABLE "public"."CLIENT_MESSAGE_TICKET" (
"CLIENT_MESSAGE_ID" text DEFAULT gen_random_uuid() NOT NULL,
"CLIENT_TICKET_ID" text,
"CLIENT_TICKET_MESSAGE" text,
"IS_DELETE" int4,
"USER_ID" int4 DEFAULT 0,
"ADMIN_ID" int4 DEFAULT 0,
"IS_TICKET_READ" int4 DEFAULT 0,
"CREATE_TIME" timestamp(6) DEFAULT now(),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of CLIENT_MESSAGE_TICKET
-- ----------------------------
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('21a9d152-ef8e-49a5-9e95-b5a7ac392551', 'c5ad5da0-c748-4acf-a7e4-7922f47becf5', '<p>ok</p>
<div id="selenium-highlight">&nbsp;</div>', null, '0', '1', '0', '2018-05-21 09:38:00.125948', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('31e8025f-7518-4f6c-9f9a-8ff4a1e9f37b', '4094c6ee-2eed-4589-9f9c-27e820e4f00c', '<p>Tolong tambahkan informasi pada titik peta sebagaimana yang telah dibrief</p>
<p>Terima kasih</p>', null, '1', '0', '0', '2018-06-12 09:00:27.105597', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('413e6a3d-75a2-4ef9-b5dc-52f97679fee8', '58ac4404-fa2e-49a2-b09a-ec5c8330da59', '<p>Mohon untuk ditambahkan user atas nama Irwan Ardiansyah NIK 123000000123123124. Terimakasih</p>', null, '2', '0', '0', '2018-05-22 06:21:15.745984', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('4e2ac8e7-5e9a-46c6-beb3-9d7bf88fdc6a', '58ac4404-fa2e-49a2-b09a-ec5c8330da59', '<p>Permintaan tambah user dengan di proses tunggu 1x24 jam.</p>', null, '0', '1', '0', '2018-05-22 06:22:42.265813', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('5250b31b-7444-419b-82a8-a3cca631bb2c', 'b53cedc5-e60d-46b2-9de4-a2a1c0d11fc0', '<p>Mohon untuk dibuat user atas nama Siswanto dengan NIK 1200000023423423. Terimakasih</p>', null, '1', '0', '0', '2018-05-20 18:35:02.172292', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('53c1f84c-d433-4448-a1ea-a11fa2bdbcb2', 'ec1286a2-03eb-41fb-9f46-add3e5c6d6ad', '', null, '1', '0', '0', '2018-05-31 12:54:13.005689', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('895bb406-8cac-4fbb-9cd1-3324c9e0e6e3', '984ca7df-3f56-46e3-bdc5-2e21f7474e39', '<p>Mohon untuk penggantian password atas nama Iwan Gunawan ID.1234323</p>', null, '1', '0', '0', '2018-05-20 20:01:36.731836', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('93d2a45c-5666-4a86-ad98-f9635d169ef7', 'b53cedc5-e60d-46b2-9de4-a2a1c0d11fc0', '<p>Terimakasih Bp. Tugiman. Request anda segera kami proses. Tunggu 2x24 jam.</p>', null, '0', '1', '0', '2018-05-20 18:39:58.711301', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('a3f5e694-edda-4b95-9581-d7d23f67c2eb', 'b53cedc5-e60d-46b2-9de4-a2a1c0d11fc0', '<p>Terimakasih, akun sudah bisa digunakan.</p>', null, '1', '0', '0', '2018-05-20 18:55:09.171005', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('abacd180-940c-4762-b69f-4128ff8b10e3', 'c5ad5da0-c748-4acf-a7e4-7922f47becf5', '<p>asdfghh</p>
<div id="selenium-highlight">&nbsp;</div>', null, '1', '0', '0', '2018-05-21 09:34:35.122465', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('dbff6038-6bde-48b3-be84-59ceef49a768', '4094c6ee-2eed-4589-9f9c-27e820e4f00c', '<p>Permintaan sedang diproses</p>
<p>Terima kasih</p>', null, '0', '1', '0', '2018-06-12 09:01:59.933858', null, null, null, null);
INSERT INTO "public"."CLIENT_MESSAGE_TICKET" VALUES ('f0014678-c990-4826-bb2d-be6c52dbfa2b', '984ca7df-3f56-46e3-bdc5-2e21f7474e39', '<p>Baik, request akan diproses 1 x 24 jam. Terimakasih.</p>', null, '0', '1', '0', '2018-05-20 20:13:08.860302', null, null, null, null);

-- ----------------------------
-- Table structure for "public"."CLIENT_TICKET"
-- ----------------------------
DROP TABLE "public"."CLIENT_TICKET";
CREATE TABLE "public"."CLIENT_TICKET" (
"CLIENT_TICKET_ID" text DEFAULT gen_random_uuid() NOT NULL,
"CLIENT_TICKET_NAME" text,
"CLIENT_TICKET_DESCRIPTION" text,
"IS_DELETE" int4,
"USER_ID" int4 DEFAULT 0,
"ADMIN_READ_ID" int4 DEFAULT 0,
"IS_TICKET_OPEN" int4 DEFAULT 0,
"IS_TICKET_READ" int4 DEFAULT 0,
"CREATE_TIME" timestamp(6) DEFAULT now(),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of CLIENT_TICKET
-- ----------------------------
INSERT INTO "public"."CLIENT_TICKET" VALUES ('4094c6ee-2eed-4589-9f9c-27e820e4f00c', 'Detail Infromasi pada titik peta', '<p>Tolong tambahkan informasi pada titik peta sebagaimana yang telah dibrief</p>
<p>Terima kasih</p>', '0', '1', '1', '1', '1', '2018-06-12 09:00:27.099019', null, null, null, null);
INSERT INTO "public"."CLIENT_TICKET" VALUES ('58ac4404-fa2e-49a2-b09a-ec5c8330da59', 'Permintaan tambah user', '<p>Mohon untuk ditambahkan user atas nama Irwan Ardiansyah NIK 123000000123123124. Terimakasih</p>', '0', '2', '1', '0', '1', '2018-05-22 06:21:15.742246', null, null, null, null);
INSERT INTO "public"."CLIENT_TICKET" VALUES ('984ca7df-3f56-46e3-bdc5-2e21f7474e39', 'Permintaan ganti password', '<p>Mohon untuk penggantian password atas nama Iwan Gunawan ID.1234323</p>', '0', '1', '1', '0', '1', '2018-05-20 20:01:36.72941', null, null, null, null);
INSERT INTO "public"."CLIENT_TICKET" VALUES ('b53cedc5-e60d-46b2-9de4-a2a1c0d11fc0', 'PERMINTAAN TAMBAH USER', '<p>Mohon untuk dibuat user atas nama Siswanto dengan NIK 1200000023423423. Terimakasih</p>', '0', '1', '1', '1', '1', '2018-05-20 18:35:02.168868', null, null, null, null);
INSERT INTO "public"."CLIENT_TICKET" VALUES ('c5ad5da0-c748-4acf-a7e4-7922f47becf5', 'coba untuk ticketing', '<p>asdfghh</p>
<div id="selenium-highlight">&nbsp;</div>', '0', '1', '1', '0', '1', '2018-05-21 09:34:35.119049', null, null, null, null);
INSERT INTO "public"."CLIENT_TICKET" VALUES ('ec1286a2-03eb-41fb-9f46-add3e5c6d6ad', 'Not Clear', '', '0', '1', '0', '0', '0', '2018-05-31 12:54:13.002365', null, null, null, null);

-- ----------------------------
-- Table structure for "public"."daemons"
-- ----------------------------
DROP TABLE "public"."daemons";
CREATE TABLE "public"."daemons" (
"Start" text NOT NULL,
"Info" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of daemons
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."gammu"
-- ----------------------------
DROP TABLE "public"."gammu";
CREATE TABLE "public"."gammu" (
"Version" int2 DEFAULT '0'::smallint NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of gammu
-- ----------------------------
INSERT INTO "public"."gammu" VALUES ('17');

-- ----------------------------
-- Table structure for "public"."inbox"
-- ----------------------------
DROP TABLE "public"."inbox";
CREATE TABLE "public"."inbox" (
"UpdatedInDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"ReceivingDateTime" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"Text" text NOT NULL,
"SenderNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Coding" varchar(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
"UDH" text NOT NULL,
"SMSCNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Class" int4 DEFAULT '-1'::integer NOT NULL,
"TextDecoded" text DEFAULT ''::text NOT NULL,
"ID" int4 DEFAULT nextval('"inbox_ID_seq"'::regclass) NOT NULL,
"RecipientID" text NOT NULL,
"Processed" bool DEFAULT false NOT NULL,
"Status" int4 DEFAULT '-1'::integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of inbox
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."MAP_POINT"
-- ----------------------------
DROP TABLE "public"."MAP_POINT";
CREATE TABLE "public"."MAP_POINT" (
"ID" int4 DEFAULT nextval('"MAP_POINT_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"LATITUDE" float8,
"LONGITUDE" float8,
"TYPE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"ICON_ID" int4,
"SITE_ID" int4,
"CABANG_ID" int4,
"SESS_SITE_ID" int4 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MAP_POINT
-- ----------------------------
INSERT INTO "public"."MAP_POINT" VALUES ('8', 'Balikpapan', '-0.711716694992859', '116.8635733125', 'vessel', null, null, null, null, null, null, '1', '3', null, '0');
INSERT INTO "public"."MAP_POINT" VALUES ('10', 'Port Baru', '-7.89675935980107', '112.161424960616', 'port', null, null, null, null, null, null, '7', '1', null, '0');
INSERT INTO "public"."MAP_POINT" VALUES ('11', 'Test', '-0.65935255667668', '117.456834822381', 'port', null, null, null, null, null, null, '2', '1', null, '0');
INSERT INTO "public"."MAP_POINT" VALUES ('12', 'Vessel', '0.746861738138179', '107.129686384881', 'vessel', null, null, null, null, null, null, '1', '1', null, '0');
INSERT INTO "public"."MAP_POINT" VALUES ('15', 'Riau', '1.00208109758232', '101.90019440625', '0', null, null, null, null, null, null, '8', '1', '22', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('16', 'PLN', '0.95814221566873', '112.5569326875', 'port', null, null, null, null, null, null, '8', '2', '13', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('17', 'PLN Bunker', '0.474783004979002', '114.095018625', 'barge', null, null, null, null, null, null, '8', '2', '15', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('18', 'Tanjung Priok Barge', '-6.41120463047149', '106.887987375', 'port', null, null, null, null, null, null, '8', '2', '8', '2');
INSERT INTO "public"."MAP_POINT" VALUES ('20', 'Kalimantan Barat', '-1.10717389983593', '110.491503', 'port', null, null, null, null, null, null, '8', '2', '2', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('21', 'Kalimatan Barat 2', '-1.27694592961598', '109.931753221017', 'port', null, null, null, null, null, null, '8', '2', '13', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('23', 'PLN Cabang Medan', '3.59207337482438', '98.6750414243956', 'port', null, null, null, null, null, null, '8', '2', '29', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('24', 'Cabang Jakarta', '-6.30201680032827', '106.898973703125', 'cabang', null, null, null, null, null, null, '8', '2', '8', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('25', 'PLN Cabang Semarang', '-7.08984923048898', '111.058507719698', 'cabang', null, null, null, null, null, null, '8', '2', '11', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('26', 'PLN Cabang Balikpapan', '-0.865510673643769', '116.57792878125', 'cabang', null, null, null, null, null, null, '8', '2', '16', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('27', 'PLN Cabang Medan', '3.78989284775483', '98.4285147187501', 'cabang', null, null, null, null, null, null, '8', '2', '29', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('28', 'PLN Cabang Pontianak', '-0.0745279465447197', '109.403856515625', 'cabang', null, null, null, null, null, null, '8', '2', '13', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('29', 'PLN Cabang Banjarmasin', '-3.1710523814582', '114.677294015625', 'cabang', null, null, null, null, null, null, '8', '2', '15', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('30', 'PLN Cabang Sorong', '-0.9533902182758', '131.442430734375', 'cabang', null, null, null, null, null, null, '8', '2', '21', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('31', 'PT. Sucofindo Cab Sorong', '-1.26094960471268', '131.332567453125', 'cabang', null, null, null, null, null, null, '8', '2', '21', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('32', 'PT. Sucofindo Cab Semarang', '-6.86953369889765', '111.249559640625', 'cabang', null, null, null, null, null, null, '8', '2', '11', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('33', 'SCI Papua', '-4.21322594569253', '136.800074490152', '0', null, null, null, null, null, null, '8', '0', '21', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('34', 'Cabang Balikpapan', '0.0467697721309577', '116.508336645393', 'cabang', null, null, null, null, null, null, '8', '1', '0', '0');
INSERT INTO "public"."MAP_POINT" VALUES ('35', 'PLN Unit Makassar', '-4.54185383762977', '120.166773708902', 'cabang', null, null, null, null, null, null, '8', '2', '2', '0');

-- ----------------------------
-- Table structure for "public"."MASTER_CABANG"
-- ----------------------------
DROP TABLE "public"."MASTER_CABANG";
CREATE TABLE "public"."MASTER_CABANG" (
"CABANG_ID" int4 DEFAULT nextval('"MASTER_CABANG_CABANG_ID_seq"'::regclass) NOT NULL,
"BRANCH_NAME" text,
"BRANCH_DESCRIPTION" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"ADDRESS" varchar(255)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CABANG
-- ----------------------------
INSERT INTO "public"."MASTER_CABANG" VALUES ('2', 'Aceh', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, 'asdasda');
INSERT INTO "public"."MASTER_CABANG" VALUES ('3', 'Banten', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('4', 'Bali', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('4', 'Balikpapan', '<p>&nbsp;</p>
<div id="selenium-highlight">&nbsp;</div>', '0', null, null, null, null, null, 'jl. jendral A Yani No 1 Gunung Sari Ulu, Balikpapan 76122, Kalimantan Timur');
INSERT INTO "public"."MASTER_CABANG" VALUES ('6', 'Bengkulu', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('7', 'DI Yogyakarta', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('8', 'DKI Jakarta', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('9', 'Jambi', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('10', 'Jawa Barat', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('11', 'Jawa Tengah', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('12', 'Jawa Timur', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('13', 'Kalimantan Barat', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('14', 'Kalimantan Selatan', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('15', 'Kalimantan Tengah', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('16', 'Kalimantan Timur', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('17', 'Kep. Bangka Belitung', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('18', 'Kepulauan Riau', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('19', 'Lampung', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('20', 'Maluku', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('21', 'Papua', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('22', 'Riau', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('23', 'Sulawesi Selatan', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('24', 'Sulawesi Tengah', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('25', 'Sulawesi Tenggara', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('26', 'Sulawesi Utara', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('27', 'Sumatera Barat', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('28', 'Sumatera Selatan', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);
INSERT INTO "public"."MASTER_CABANG" VALUES ('29', 'Sumatera Utara', '<p>-</p>', '0', '2018-04-21 00:00:00', null, '2018-04-21 00:00:00', null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_CLIENT"
-- ----------------------------
DROP TABLE "public"."MASTER_CLIENT";
CREATE TABLE "public"."MASTER_CLIENT" (
"CLIENT_ID" text DEFAULT gen_random_uuid() NOT NULL,
"CLIENT_NAME" text,
"CLIENT_DESCRIPTION" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CLIENT
-- ----------------------------
INSERT INTO "public"."MASTER_CLIENT" VALUES ('1acb464c-c8e7-4607-91a8-1b5ac13ba650', 'Pertamina', '<p>asdfasdfasd</p>
<div id=\"selenium-highlight\">&nbsp;</div>', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('4ee0d758-85aa-4478-8443-63d2cff16c6e', 'CUSTOMER4', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('7e232559-dceb-4909-b1d5-15bbd379a12f', 'CUSTOMER6', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('a294c095-16b3-4bd2-a651-962f6d4a6312', 'CUSTOMER3', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('bf046f00-408f-4043-99b0-d5c1f857c486', 'Pertagas', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('ce634285-7e49-42b0-9151-b71a7467e267', 'Pelni', '<p><strong>sadfasdfasd</strong></p>
<div id=\"selenium-highlight\">&nbsp;</div>', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('eccebc82-4576-4698-a375-5f9065cf5afd', 'PELNI', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('edd8c517-0a45-4ee7-abbe-f691146d7da8', 'CUSTOMER7', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_CLIENT" VALUES ('fd203d0b-9ed4-48ac-b006-3a4f03dee729', 'asdfasdfad', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_ICON_MARKER"
-- ----------------------------
DROP TABLE "public"."MASTER_ICON_MARKER";
CREATE TABLE "public"."MASTER_ICON_MARKER" (
"ID" int4 DEFAULT nextval('"MASTER_ICON_MARKER_ID_seq"'::regclass) NOT NULL,
"NAMA" text,
"UPLOAD_FILE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_ICON_MARKER
-- ----------------------------
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('1', 'Icon Vessel', 'ship-front-view.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('2', 'Icon Plus', 'icon.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('3', 'Map Flag', 'map-flag-marker.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('4', 'Map Marker', 'map-marker.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('5', 'Woods Marker', 'woods-marker.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('6', 'Marker Tool', 'map-marker-tool.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('7', 'Port Marker', 'port-map-marker-point.png', '1', null, null, null, null, null);
INSERT INTO "public"."MASTER_ICON_MARKER" VALUES ('8', 'Cabang', 'cityscape.png', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_LOCATION"
-- ----------------------------
DROP TABLE "public"."MASTER_LOCATION";
CREATE TABLE "public"."MASTER_LOCATION" (
"ID" int4 DEFAULT nextval('"MASTER_LOCATION_ID_seq"'::regclass) NOT NULL,
"LOCATION_NAME" text,
"LOCATION_DESCRIPTION" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_LOCATION
-- ----------------------------
INSERT INTO "public"."MASTER_LOCATION" VALUES ('2', 'Port #01', '<p>-</p>', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_LOCATION" VALUES ('3', 'Port #02', '<p>-</p>', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_LOCATION" VALUES ('4', 'Transporter ', '<p>-</p>', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_LOCATION" VALUES ('5', 'Kapal', '<p>-</p>', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_PORT"
-- ----------------------------
DROP TABLE "public"."MASTER_PORT";
CREATE TABLE "public"."MASTER_PORT" (
"PORT_ID" int4 DEFAULT nextval('"MASTER_PORT_PORT_ID_seq"'::regclass) NOT NULL,
"PORT_NAME" name,
"PORT_TYPE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"CLIENT_SITE_ID" int4,
"CLIENT_SITE_NAME" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_PORT
-- ----------------------------
INSERT INTO "public"."MASTER_PORT" VALUES ('7', 'Bitung', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('8', 'Tg Priok', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('10', 'Tg Perak', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('12', 'Tg Emas', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('12', 'Tg Emas', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('13', 'Balikpapan', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('14', 'Soekarno Hatta', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('15', 'Surabaya', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('16', 'Semarang', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('17', 'RU II Dumai', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('18', 'Belawan', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('19', 'Ambon', 'Control', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('20', 'Makasar', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('21', 'Tanjung Priuk', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PORT" VALUES ('22', 'spm balikpapn', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_VESSEL"
-- ----------------------------
DROP TABLE "public"."MASTER_VESSEL";
CREATE TABLE "public"."MASTER_VESSEL" (
"VESSEL_ID" int4 DEFAULT nextval('"MASTER_VESSEL_VESSEL_ID_seq"'::regclass) NOT NULL,
"VESSEL_NAME" name,
"VESSEL_TYPE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"CLIENT_SITE_ID" int4,
"CLIENT_SITE_NAME" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_VESSEL
-- ----------------------------
INSERT INTO "public"."MASTER_VESSEL" VALUES ('3', 'KM Tatamailau', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('4', 'KM Dorolonda', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('5', 'KM Dobonsolo', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('6', 'KM Kelud', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('7', 'KM Lawit', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('8', 'KM Umsini', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('9', 'KM Gunung Dempo', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('10', 'KM Ciremai', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('11', 'KM Nggapulu', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('12', 'KM Lambelu', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('13', 'KM Bukit Siguntang', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('14', 'KM Binaiya', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('15', 'KM Tidar', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('16', 'KM Sirimau', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('17', 'KM Egon', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('18', 'KM Awu', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('19', 'KM Sinabung', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('20', 'KM Tidar', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('21', 'KM Labobar', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('22', 'KM Nggapulu', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('23', 'KM Kelimutu', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('24', 'KM Lawit', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('25', 'KM Tilongkabila', 'Loader', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('26', 'KM Pangrango', null, '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('27', 'KM Malimboto', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('27', 'KM Sangiang', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MQTT_DATA"
-- ----------------------------
DROP TABLE "public"."MQTT_DATA";
CREATE TABLE "public"."MQTT_DATA" (
"MQTT_DEVICE_ID" int4,
"MQTT_DEVICE_DATA" text,
"MQTT_RECEIVE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MQTT_DATA
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."MQTT_DEVICE"
-- ----------------------------
DROP TABLE "public"."MQTT_DEVICE";
CREATE TABLE "public"."MQTT_DEVICE" (
"MQTT_DEVICE_ID" int4 DEFAULT nextval('"MQTT_DEVICE_ID_seq"'::regclass) NOT NULL,
"MQTT_DEVICE_NAME" text,
"MQTT_DEVICE_TYPE" int4,
"MQTT_DEVICE_TOPIC" text,
"MQTT_DEVICE_DESC" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MQTT_DEVICE
-- ----------------------------
INSERT INTO "public"."MQTT_DEVICE" VALUES ('1', 'Water Sensor Temperature', '5', 'signal/device/abc01', '', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MQTT_DEVICE_TYPE"
-- ----------------------------
DROP TABLE "public"."MQTT_DEVICE_TYPE";
CREATE TABLE "public"."MQTT_DEVICE_TYPE" (
"MQTT_DEVICE_TYPE_ID" int4 DEFAULT nextval('"MQTT_DEVICE_TYPE_ID_seq"'::regclass) NOT NULL,
"MQTT_DEVICE_TYPE_NAME" text,
"MQTT_DEVICE_TYPE_DESC" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MQTT_DEVICE_TYPE
-- ----------------------------
INSERT INTO "public"."MQTT_DEVICE_TYPE" VALUES ('5', 'ESP', 'ESP General', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."outbox"
-- ----------------------------
DROP TABLE "public"."outbox";
CREATE TABLE "public"."outbox" (
"UpdatedInDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"SendingDateTime" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"SendBefore" time(6) DEFAULT '23:59:59'::time without time zone NOT NULL,
"SendAfter" time(6) DEFAULT '00:00:00'::time without time zone NOT NULL,
"Text" text,
"DestinationNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Coding" varchar(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
"UDH" text,
"Class" int4 DEFAULT '-1'::integer,
"TextDecoded" text DEFAULT ''::text NOT NULL,
"ID" int4 DEFAULT nextval('"outbox_ID_seq"'::regclass) NOT NULL,
"MultiPart" bool DEFAULT false NOT NULL,
"RelativeValidity" int4 DEFAULT '-1'::integer,
"SenderID" varchar(255),
"SendingTimeOut" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"DeliveryReport" varchar(10) DEFAULT 'default'::character varying,
"CreatorID" text NOT NULL,
"Retries" int4 DEFAULT 0,
"Priority" int4 DEFAULT 0,
"Status" varchar(255) DEFAULT 'Reserved'::character varying NOT NULL,
"StatusCode" int4 DEFAULT '-1'::integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of outbox
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."outbox_multipart"
-- ----------------------------
DROP TABLE "public"."outbox_multipart";
CREATE TABLE "public"."outbox_multipart" (
"Text" text,
"Coding" varchar(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
"UDH" text,
"Class" int4 DEFAULT '-1'::integer,
"TextDecoded" text,
"ID" int4 DEFAULT nextval('"outbox_multipart_ID_seq"'::regclass) NOT NULL,
"SequencePosition" int4 DEFAULT 1 NOT NULL,
"Status" varchar(255) DEFAULT 'Reserved'::character varying NOT NULL,
"StatusCode" int4 DEFAULT '-1'::integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of outbox_multipart
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."pbk"
-- ----------------------------
DROP TABLE "public"."pbk";
CREATE TABLE "public"."pbk" (
"ID" int4 DEFAULT nextval('"pbk_ID_seq"'::regclass) NOT NULL,
"GroupID" int4 DEFAULT '-1'::integer NOT NULL,
"Name" text NOT NULL,
"Number" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pbk
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."pbk_groups"
-- ----------------------------
DROP TABLE "public"."pbk_groups";
CREATE TABLE "public"."pbk_groups" (
"Name" text NOT NULL,
"ID" int4 DEFAULT nextval('"pbk_groups_ID_seq"'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pbk_groups
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."phones"
-- ----------------------------
DROP TABLE "public"."phones";
CREATE TABLE "public"."phones" (
"ID" text NOT NULL,
"UpdatedInDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"TimeOut" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"Send" bool DEFAULT false NOT NULL,
"Receive" bool DEFAULT false NOT NULL,
"IMEI" varchar(35) NOT NULL,
"IMSI" varchar(35) NOT NULL,
"NetCode" varchar(10) DEFAULT 'ERROR'::character varying,
"NetName" varchar(35) DEFAULT 'ERROR'::character varying,
"Client" text NOT NULL,
"Battery" int4 DEFAULT '-1'::integer NOT NULL,
"Signal" int4 DEFAULT '-1'::integer NOT NULL,
"Sent" int4 DEFAULT 0 NOT NULL,
"Received" int4 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of phones
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."RUNNING_TEXT"
-- ----------------------------
DROP TABLE "public"."RUNNING_TEXT";
CREATE TABLE "public"."RUNNING_TEXT" (
"RUNNING_TEXT_ID" int4 DEFAULT nextval('"RUNNING_TEXT_RUNNING_TEXT_ID_seq"'::regclass) NOT NULL,
"MESSAGE" text,
"DISPLAY_START_TIME" timestamp(6),
"DISPLAY_STOP_TIME" timestamp(6),
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"CLIENT_SITE_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of RUNNING_TEXT
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."sentitems"
-- ----------------------------
DROP TABLE "public"."sentitems";
CREATE TABLE "public"."sentitems" (
"UpdatedInDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"SendingDateTime" timestamp DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"DeliveryDateTime" timestamp,
"Text" text NOT NULL,
"DestinationNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Coding" varchar(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
"UDH" text NOT NULL,
"SMSCNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Class" int4 DEFAULT '-1'::integer NOT NULL,
"TextDecoded" text DEFAULT ''::text NOT NULL,
"ID" int4 DEFAULT nextval('"sentitems_ID_seq"'::regclass) NOT NULL,
"SenderID" varchar(255) NOT NULL,
"SequencePosition" int4 DEFAULT 1 NOT NULL,
"Status" varchar(255) DEFAULT 'SendingOK'::character varying NOT NULL,
"StatusError" int4 DEFAULT '-1'::integer NOT NULL,
"TPMR" int4 DEFAULT '-1'::integer NOT NULL,
"RelativeValidity" int4 DEFAULT '-1'::integer NOT NULL,
"CreatorID" text NOT NULL,
"StatusCode" int4 DEFAULT '-1'::integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sentitems
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."WEBSITE_ARTICLE"
-- ----------------------------
DROP TABLE "public"."WEBSITE_ARTICLE";
CREATE TABLE "public"."WEBSITE_ARTICLE" (
"ARTICLE_ID" int4 DEFAULT nextval('"WEBSITE_ARTICLE_ID_seq"'::regclass) NOT NULL,
"ARTICLE_CATEGORY_ID" int4 NOT NULL,
"TITLE" text,
"CONTENT" text,
"STATUS" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_ARTICLE
-- ----------------------------
INSERT INTO "public"."WEBSITE_ARTICLE" VALUES ('2', '1', 'Terjadi pencurian minyak 12000 KL di kepulauan riau.', '<p><em><strong>asdfasdfasd</strong></em></p>', 'Y', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."WEBSITE_ARTICLE_CATEGORY"
-- ----------------------------
DROP TABLE "public"."WEBSITE_ARTICLE_CATEGORY";
CREATE TABLE "public"."WEBSITE_ARTICLE_CATEGORY" (
"ARTICLE_CATEGORY_ID" int4 DEFAULT nextval('"WEBSITE_ARTICLE_CATEGORY_ID_seq"'::regclass) NOT NULL,
"CATEGORY_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_ARTICLE_CATEGORY
-- ----------------------------
INSERT INTO "public"."WEBSITE_ARTICLE_CATEGORY" VALUES ('1', 'Public', '0', null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_ARTICLE_CATEGORY" VALUES ('2', 'Non Public', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."WEBSITE_MENU"
-- ----------------------------
DROP TABLE "public"."WEBSITE_MENU";
CREATE TABLE "public"."WEBSITE_MENU" (
"MENU_ID" int4 DEFAULT nextval('"WEBSITE_MENU_MENU_ID_seq"'::regclass) NOT NULL,
"MENU_LEVEL" int4,
"REFERENCE" int4,
"TITLE" text,
"URL" text,
"REMARK" text,
"TARGET" text,
"IMAGE" text,
"WEIGHT" int4,
"SHOW" int4,
"HIERARCHY" int4,
"BASICHIERARCHY" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_MENU
-- ----------------------------
INSERT INTO "public"."WEBSITE_MENU" VALUES ('1', '1', '0', 'Home', '', 'Home', '', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('2', '1', '0', 'Tentang Kami', 'page/index/tentang-kami', 'Tentang Kami', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('5', '1', '0', 'Services', '/layanan_kami', 'Layanan Kami', '', '', '2', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('13', '1', '0', 'Log In', 'login', 'Log In', '', '', '4', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('17', '1', '0', 'Hotline', 'page/index/hotline-kontak-layanan', 'Hotline Layanan Kontak', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('18', '2', '5', 'SCI', 'http://www.sucofindo.co.id/', 'Web Resmi Sucofindo', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('21', '2', '5', 'HMPM & SBU', 'http://localhost/uploads/file_manager/KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', 'HMPM', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."WEBSITE_MENU" VALUES ('22', '2', '5', 'Standard & Reference', 'page/index/standard-reference', 'Standard & Reference', '__self', '', '3', '1', null, null, '0', null, '', null, null, null, null);

-- ----------------------------
-- Table structure for "public"."WEBSITE_PAGE_STATIC"
-- ----------------------------
DROP TABLE "public"."WEBSITE_PAGE_STATIC";
CREATE TABLE "public"."WEBSITE_PAGE_STATIC" (
"PAGE_STATIC_ID" int4 DEFAULT nextval('"WEBSITE_PAGE_STATIC_ID_seq"'::regclass) NOT NULL,
"TITLE" text,
"CONTENT" text,
"STATUS" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"URL" text,
"SEO_TITLE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_PAGE_STATIC
-- ----------------------------
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES ('14', 'Hotline Kontak Layanan', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"container\">
<div class=\"col-xs-6\"><br /><br /> <span style=\"font-size: 30px;\">CONTACT</span> <br /> <span style=\"font-weight: bold; font-size: 20px;\">TELP</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\"><u>(021)98876776</u></span> <br /><br /> <span style=\"font-weight: bold; font-size: 20px;\">EMAIL</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\">sucofindo.migas.co.id</span> <br /><br /> <span style=\"font-weight: bold; font-size: 20px;\">LOCATION</span> <br /> <span style=\"font-weight: bold; font-size: 15px;\">Graha Sucofindo Lt. 1, Jl. Raya Pasar Minggu, Kav. 34, RT.4/RW.1, Pancoran, RT.4/RW.1, RT.4/RW.1, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780</span></div>
<div class=\"col-xs-6\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.1674340275576!2d106.82345761424789!3d-6.241651962855403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f3dc699c3b95%3A0x2a63f3400dfa49ed!2sSucofindo+Duren+Tiga!5e0!3m2!1sid!2sid!4v1519122872585\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>
</div>
</section>', 'Y', '0', null, null, null, null, null, null, 'hotline-kontak-layanan', 'hotline-kontak-layanan');
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES ('15', 'Tentang Kami', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"container\">
<div class=\"col-xs-12\"><br /><br />
<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\">
<div class=\"shell\">
<div class=\"range\">
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>ERWIN S.P. SIBUEA</a></h5>
<p>KEPALA SBU HULU MIGAS &amp; PRODUK MIGAS<br />Phone : 0811551342<br />Email : erwins@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>AGUS MUFRIZON</a></h5>
<p>KABAG. PENGEMBANGAN JASA<br />Phone : 081318280808<br />Email : mufrizon@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>HARI NURBIANTO</a></h5>
<p>KABAG. PENJUALAN, DUKUNGAN OPERASI &amp; SUMBERDAYA<br />Phone : 08129787770<br />Email : hnurbianto@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>HENDY BARKAT</a></h5>
<p>KABAG. GEOSCIENCES &amp; OIL FIELD SERVICES<br />Phone : 08121076202<br />Email : hendy@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>TUBAGUS HARYAWAN</a></h5>
<p>KA.BAG. PRODUK MIGAS DAN PETROKIMIA<br />Phone : 08121076201<br />Email : tubagus@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>BUDI RACHMANTO</a></h5>
<p>KASUBAG. PENGELOLAAN SUMBERDAYA<br />Phone : 081385459495<br />Email : budir@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>MIRA PERMATASARI</a></h5>
<p>PJS. KASUBAG. PENJUALAN &amp; ADMINISTRASI OPERASI<br />Phone : 082114602139<br />Email : mira@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>IRSAL MUKHTAR</a></h5>
<p>JUNIOR SUPERINTENDENT<br />Phone : 08112331173<br />Email : irsal@sucofindo.co.id</p>
</div>
</div>
</div>
<div class=\"cell-xs-6 cell-sm-4 cell-md-3\">
<div class=\"thumbnail thumbnail-variant-1\">
<div class=\"thumbnail-image\"><img src=\"http://localhost/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
<div class=\"thumbnail-image-inner\">&nbsp;</div>
</div>
<div class=\"thumbnail-caption\">
<h5 class=\"header\"><a>DAUNG HADINATA</a></h5>
<p>PROJECT MANAGER <br />Phone : 081381735790<br />Email : hadinata@sucofindo.co.id</p>
</div>
</div>
</div>
</div>
</div>
</section>
<center><button id=\"btn-selengkapnya\" class=\"btn btn-sm btn-primary\" style=\"height: 30px; padding-top: 4px;\">Sedang memuat...</button></center>
<div id=\"div-selengkapnya\" style=\"display: none;\"><span style=\"font-size: 30px;\">Apa itu Sucofindo ?</span> <br /><br /> <span style=\"font-size: 17px;\">Sucofindo adalah perusahaan inspeksi pertama di Indonesia. Sebagian besar sahamnya, yaitu 95 persen, dikuasai negara dan lima persen milik Societe Generale de Surveillance Holding SA (&ldquo;SGS&rdquo;). Sucofindo berdiri pada 22 Oktober 1956. Bisnis ini bermula dari kegiatan perdagangan terutama komoditas pertanian, dan kelancaran arus barang dan pengamanan devisa negara dalam perdagangan ekspor-impor. Seiring dengan perkembangan kebutuhan dunia usaha, Sucofindo melakukan langkah kreatif dan menawarkan inovasi jasa-jasa baru berbasis kompetensinya.</span> <br /><br /> <span style=\"font-size: 17px;\"> Bisnis jasa pertama yang dimiliki Sucofindo adalah cargo superintendence dan inspeksi. Kemudian melalui studi analisis dan inovasi, Sucofindo melakukan diversifikasi jasa sehingga lahirlah jasa-jasa warehousing dan forwarding, analytical laboratories, industrial and marine engineering, dan fumigation and industrial hygiene. Keanekaragaman jasa-jasa Sucofindo dikemas secara terpadu, jaringan kerja Laboratorium, cabang dan titik layanan di berbagai Kota di Indonesia serta didukung oleh 2.646 Tenaga Profesional yang ahli di bidangnya. </span></div>
<br /><br /></div>
</div>
</section>
<script type=\"text/javascript\">// <![CDATA[
(function defer() {
				if (window.jQuery) {
$(\"#btn-selengkapnya\").html(\''Lihat Selengkapnya <i class=\"fas fa-angle-down\"></i>\'');
				  var flag = false;
				  $(\"#btn-selengkapnya\").on(\"click\",function(){
				    if(!flag) {
				      $(\"#div-selengkapnya\").slideDown();
				      $(\"#btn-selengkapnya\").html(\''Sembunyikan Selengkapnya <i class=\"fas fa-angle-up\"></i>\'');
				      flag = true;
				    } else {
				      $(\"#div-selengkapnya\").slideUp();
				      $(\"#btn-selengkapnya\").html(\''Lihat Selengkapnya <i class=\"fas fa-angle-down\"></i>\'');
				      flag = false;
				    }
				  });
			    } else {
			       setTimeout(function() { defer() }, 2000);
			    }
			 })();
// ]]></script>', 'Y', '0', null, null, null, null, null, null, 'tentang-kami', 'tentang-kami');
INSERT INTO "public"."WEBSITE_PAGE_STATIC" VALUES ('17', 'Standard Reference', '<section class=\"section-60 section-sm-90 bg-gray-lighter\" style=\"padding: 3px 1px 1px 1px;\"><br /><br />
<div class=\"container\">
<div class=\"col-xs-12\">
<table id=\"destination_table\" style=\"width: 100%;\">
<tbody>
<tr>
<td>
<table style=\"border-bottom: 1px dotted #666; margin-top: 5px; margin-bottom: 5px; width: 100%; border-spacing: 0px 25px 25px;\">
<tbody>
<tr>
<td>Sedang memuat data ...</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br /><br /></section>
<script type=\"text/javascript\">// <![CDATA[
	function create_table(title,content,file,icon) {
        return \''<table style=\"border-bottom: 1px dotted #666;margin-top:5px;margin-top:5px;margin-bottom:5px;width: 100%;border-spacing: 0px 25px 25px;\">\''+
						\''<tr>\''+
							\''<td style=\"padding-bottom:10px;width:100px;padding-left:5px;\" rowspan=\"2\">\''+
								\''<img src=\"http://localhost/assets/public/images/\''+icon+\''\" />\''+
							\''</td>\''+
							\''<td style=\"padding-left:5px;\"><a href=\"\''+file+\''\"><span style=\"font-size:17px;\">\''+title+\''</span></a></td>\''+
						\''</tr>\''+
						\''<tr>\''+
							\''<td style=\"padding-left:5px;\">\''+
								\''<small>ukuran file : 23kb, tipe file : pdf</small><br />\''+
								content+
							\''</td>\''+
						\''</tr>\''+
					\''</table>\'';		
	}
    (function defer() {
        if (window.jQuery) {
        	$(\"#destination_table\").empty();
        	$.get(\"http://localhost/index.php/SR_Rest/get_all_with_pagination\",function (json) {
        		if(json.length > 0) {
        			for(var i = 0; i < json.length; i++) {
        				$(\"#destination_table\").append(create_table(json[i].STD_REF,json[i].CONTENT_INFO,\"http://localhost/uploads/stdref_files/\"+json[i].UPLOAD_FILE,\"pdf.png\"));
        			}
        		}
        	});
			
        } else {
           setTimeout(function() { defer() }, 2000);
        }
    })();
// ]]></script>', 'Y', '0', null, null, null, null, null, null, 'standard-reference', 'standard-reference');

-- ----------------------------
-- Table structure for "public"."WEBSITE_SLIDER"
-- ----------------------------
DROP TABLE "public"."WEBSITE_SLIDER";
CREATE TABLE "public"."WEBSITE_SLIDER" (
"SLIDER_ID" int4 DEFAULT nextval('"WEBSITE_SLIDER_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"STATUS" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_SLIDER
-- ----------------------------
INSERT INTO "public"."WEBSITE_SLIDER" VALUES ('4', 'Profile Slider', '0', null, null, null, null, null, null, 'Y');

-- ----------------------------
-- Table structure for "public"."WEBSITE_SLIDER_DETAIL"
-- ----------------------------
DROP TABLE "public"."WEBSITE_SLIDER_DETAIL";
CREATE TABLE "public"."WEBSITE_SLIDER_DETAIL" (
"SLIDER_DETAIL_ID" int4 DEFAULT nextval('"WEBSITE_SLIDER_DETAIL_ID_seq"'::regclass) NOT NULL,
"SLIDER_ID" int4,
"TITLE" text,
"CONTENT" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"PATH" text,
"FILE_NAME" text,
"STATUS" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_SLIDER_DETAIL
-- ----------------------------
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('9', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br /><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '0', null, null, null, null, null, null, 'uploads/slider/internet_of_things_iot.jpg', 'internet_of_things_iot.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('10', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/internet_of_things-100720860-large1.jpg', 'internet_of_things-100720860-large1.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('11', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '- Kalibrasi Alat Ukur dan Alat Uji <br /> - Uji Tanpa Rusak <br /> - Inspeksi dan Audit atas Menara Pengeboran (Rig) <br /> - Inspeksi OCTG
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/internet_of_things-100720860-large.jpg', 'internet_of_things-100720860-large.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('12', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br /><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/Internet_of_Things_Landing_Page.jpg', 'Internet_of_Things_Landing_Page.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('13', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/turn-on-2923046_1920.jpg', 'turn-on-2923046_1920.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('14', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '- Kalibrasi Alat Ukur dan Alat Uji <br /> - Uji Tanpa Rusak <br /> - Inspeksi dan Audit atas Menara Pengeboran (Rig) <br /> - Inspeksi OCTG
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/iot-ready.jpg', 'iot-ready.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('16', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/Internet-of-Things-Testing-QA-A-connected-Approach-for-Applications.jpg', 'Internet-of-Things-Testing-QA-A-connected-Approach-for-Applications.jpg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('17', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/1_lVfJFrxmv5WYXnfm7Tbf3A.png', '1_lVfJFrxmv5WYXnfm7Tbf3A.png', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('18', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. Sucofindo (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap disain,</strong><br /><strong> pabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/Internet_of_Things_Landing_Page1.jpg', 'Internet_of_Things_Landing_Page1.jpg', 'Y');

-- ----------------------------
-- Table structure for "public"."WEBSITE_TAG"
-- ----------------------------
DROP TABLE "public"."WEBSITE_TAG";
CREATE TABLE "public"."WEBSITE_TAG" (
"TAG_ID" int4 DEFAULT nextval('"WEBSITE_TAG_ID_seq"'::regclass) NOT NULL,
"TAG_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_TAG
-- ----------------------------
INSERT INTO "public"."WEBSITE_TAG" VALUES ('2', 'Politik', '0', null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG" VALUES ('3', 'Info', '0', null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG" VALUES ('4', 'News', '0', null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG" VALUES ('5', 'Bencana', '0', null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG" VALUES ('6', 'Pemilu', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."WEBSITE_TAG_ARTICLE"
-- ----------------------------
DROP TABLE "public"."WEBSITE_TAG_ARTICLE";
CREATE TABLE "public"."WEBSITE_TAG_ARTICLE" (
"TAG_ARTICLE_ID" int4 DEFAULT nextval('"WEBSITE_TAG_ARTICLE_ID_seq"'::regclass) NOT NULL,
"ARTICLE_ID" int4,
"TAG_ID" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WEBSITE_TAG_ARTICLE
-- ----------------------------
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES ('4', null, '2', null, null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES ('5', null, '3', null, null, null, null, null, null, null);
INSERT INTO "public"."WEBSITE_TAG_ARTICLE" VALUES ('11', '2', '3', null, null, null, null, null, null, null);

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."APP_FUNCTION_ACCESS_ID_seq" OWNED BY "APP_FUNCTION_ACCESS"."ID";
ALTER SEQUENCE "public"."inbox_ID_seq" OWNED BY "inbox"."ID";
ALTER SEQUENCE "public"."outbox_ID_seq" OWNED BY "outbox"."ID";
ALTER SEQUENCE "public"."outbox_multipart_ID_seq" OWNED BY "outbox_multipart"."ID";
ALTER SEQUENCE "public"."pbk_groups_ID_seq" OWNED BY "pbk_groups"."ID";
ALTER SEQUENCE "public"."pbk_ID_seq" OWNED BY "pbk"."ID";
ALTER SEQUENCE "public"."sentitems_ID_seq" OWNED BY "sentitems"."ID";

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_ACCESS"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_ACCESS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_MENU"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_MENU" ADD PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_SITE"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_SITE" ADD PRIMARY KEY ("CLIENT_SITE_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_USER"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_USER" ADD PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_USER_GROUP"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_USER_GROUP" ADD PRIMARY KEY ("GROUP_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_FILE_MANAGER"
-- ----------------------------
ALTER TABLE "public"."APP_FILE_MANAGER" ADD PRIMARY KEY ("FILE_MANAGER_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_FUNCTION_ACCESS"
-- ----------------------------
ALTER TABLE "public"."APP_FUNCTION_ACCESS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_LOG"
-- ----------------------------
ALTER TABLE "public"."APP_LOG" ADD PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_LOG_CLIENT"
-- ----------------------------
ALTER TABLE "public"."APP_LOG_CLIENT" ADD PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_MENU"
-- ----------------------------
ALTER TABLE "public"."APP_MENU" ADD PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_ROUTE"
-- ----------------------------
ALTER TABLE "public"."APP_ROUTE" ADD PRIMARY KEY ("ROUTE_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_USER"
-- ----------------------------
ALTER TABLE "public"."APP_USER" ADD PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Primary Key structure for table "public"."gammu"
-- ----------------------------
ALTER TABLE "public"."gammu" ADD PRIMARY KEY ("Version");

-- ----------------------------
-- Triggers structure for table "public"."inbox"
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."inbox"
FOR EACH ROW
EXECUTE PROCEDURE "update_timestamp"();

-- ----------------------------
-- Checks structure for table "public"."inbox"
-- ----------------------------
ALTER TABLE "public"."inbox" ADD CHECK (("Coding")::text = ANY ((ARRAY['Default_No_Compression'::character varying, 'Unicode_No_Compression'::character varying, '8bit'::character varying, 'Default_Compression'::character varying, 'Unicode_Compression'::character varying])::text[]));

-- ----------------------------
-- Primary Key structure for table "public"."inbox"
-- ----------------------------
ALTER TABLE "public"."inbox" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."MAP_POINT"
-- ----------------------------
ALTER TABLE "public"."MAP_POINT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."MQTT_DEVICE"
-- ----------------------------
ALTER TABLE "public"."MQTT_DEVICE" ADD PRIMARY KEY ("MQTT_DEVICE_ID");

-- ----------------------------
-- Primary Key structure for table "public"."MQTT_DEVICE_TYPE"
-- ----------------------------
ALTER TABLE "public"."MQTT_DEVICE_TYPE" ADD PRIMARY KEY ("MQTT_DEVICE_TYPE_ID");

-- ----------------------------
-- Indexes structure for table outbox
-- ----------------------------
CREATE INDEX "outbox_date" ON "public"."outbox" USING btree ("SendingDateTime", "SendingTimeOut");
CREATE INDEX "outbox_sender" ON "public"."outbox" USING btree ("SenderID");

-- ----------------------------
-- Triggers structure for table "public"."outbox"
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."outbox"
FOR EACH ROW
EXECUTE PROCEDURE "update_timestamp"();

-- ----------------------------
-- Checks structure for table "public"."outbox"
-- ----------------------------
ALTER TABLE "public"."outbox" ADD CHECK (("DeliveryReport")::text = ANY ((ARRAY['default'::character varying, 'yes'::character varying, 'no'::character varying])::text[]));
ALTER TABLE "public"."outbox" ADD CHECK (("Coding")::text = ANY ((ARRAY['Default_No_Compression'::character varying, 'Unicode_No_Compression'::character varying, '8bit'::character varying, 'Default_Compression'::character varying, 'Unicode_Compression'::character varying])::text[]));
ALTER TABLE "public"."outbox" ADD CHECK (("Status")::text = ANY ((ARRAY['SendingOK'::character varying, 'SendingOKNoReport'::character varying, 'SendingError'::character varying, 'DeliveryOK'::character varying, 'DeliveryFailed'::character varying, 'DeliveryPending'::character varying, 'DeliveryUnknown'::character varying, 'Error'::character varying, 'Reserved'::character varying])::text[]));

-- ----------------------------
-- Primary Key structure for table "public"."outbox"
-- ----------------------------
ALTER TABLE "public"."outbox" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table "public"."outbox_multipart"
-- ----------------------------
ALTER TABLE "public"."outbox_multipart" ADD CHECK (("Coding")::text = ANY ((ARRAY['Default_No_Compression'::character varying, 'Unicode_No_Compression'::character varying, '8bit'::character varying, 'Default_Compression'::character varying, 'Unicode_Compression'::character varying])::text[]));
ALTER TABLE "public"."outbox_multipart" ADD CHECK (("Status")::text = ANY ((ARRAY['SendingOK'::character varying, 'SendingOKNoReport'::character varying, 'SendingError'::character varying, 'DeliveryOK'::character varying, 'DeliveryFailed'::character varying, 'DeliveryPending'::character varying, 'DeliveryUnknown'::character varying, 'Error'::character varying, 'Reserved'::character varying])::text[]));

-- ----------------------------
-- Primary Key structure for table "public"."outbox_multipart"
-- ----------------------------
ALTER TABLE "public"."outbox_multipart" ADD PRIMARY KEY ("ID", "SequencePosition");

-- ----------------------------
-- Triggers structure for table "public"."phones"
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."phones"
FOR EACH ROW
EXECUTE PROCEDURE "update_timestamp"();

-- ----------------------------
-- Primary Key structure for table "public"."phones"
-- ----------------------------
ALTER TABLE "public"."phones" ADD PRIMARY KEY ("IMEI");

-- ----------------------------
-- Indexes structure for table sentitems
-- ----------------------------
CREATE INDEX "sentitems_date" ON "public"."sentitems" USING btree ("DeliveryDateTime");
CREATE INDEX "sentitems_dest" ON "public"."sentitems" USING btree ("DestinationNumber");
CREATE INDEX "sentitems_sender" ON "public"."sentitems" USING btree ("SenderID");
CREATE INDEX "sentitems_tpmr" ON "public"."sentitems" USING btree ("TPMR");

-- ----------------------------
-- Triggers structure for table "public"."sentitems"
-- ----------------------------
CREATE TRIGGER "update_timestamp" BEFORE UPDATE ON "public"."sentitems"
FOR EACH ROW
EXECUTE PROCEDURE "update_timestamp"();

-- ----------------------------
-- Checks structure for table "public"."sentitems"
-- ----------------------------
ALTER TABLE "public"."sentitems" ADD CHECK (("Status")::text = ANY ((ARRAY['SendingOK'::character varying, 'SendingOKNoReport'::character varying, 'SendingError'::character varying, 'DeliveryOK'::character varying, 'DeliveryFailed'::character varying, 'DeliveryPending'::character varying, 'DeliveryUnknown'::character varying, 'Error'::character varying])::text[]));
ALTER TABLE "public"."sentitems" ADD CHECK (("Coding")::text = ANY ((ARRAY['Default_No_Compression'::character varying, 'Unicode_No_Compression'::character varying, '8bit'::character varying, 'Default_Compression'::character varying, 'Unicode_Compression'::character varying])::text[]));

-- ----------------------------
-- Primary Key structure for table "public"."sentitems"
-- ----------------------------
ALTER TABLE "public"."sentitems" ADD PRIMARY KEY ("ID", "SequencePosition");
