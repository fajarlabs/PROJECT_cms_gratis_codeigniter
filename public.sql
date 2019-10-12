/*
Navicat PGSQL Data Transfer

Source Server         : Custody Transfer
Source Server Version : 90512
Source Host           : 103.43.46.75:5432
Source Database       : db_custody
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90512
File Encoding         : 65001

Date: 2018-07-23 21:36:19
*/


-- ----------------------------
-- Sequence structure for "public"."ALERT_SUBSCRIBER_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."ALERT_SUBSCRIBER_ID_seq";
CREATE SEQUENCE "public"."ALERT_SUBSCRIBER_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_ACCESS_CLIENT_ACCESS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 90
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
 START 9
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_TEMPLATE_CLIENT_TEMPLATE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq";
CREATE SEQUENCE "public"."APP_CLIENT_TEMPLATE_COMPONENT_TEMPLATE_COMPONENT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 50
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
 START 1601
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
 START 163
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
-- Sequence structure for "public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq";
CREATE SEQUENCE "public"."APP_TEMPLATE_ACCESS_TEMPLATE_ACCESS_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 69
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
-- Sequence structure for "public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq";
CREATE SEQUENCE "public"."CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"
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
 START 16
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."FORM_ENTRY_FIELD_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."FORM_ENTRY_FIELD_ID_seq";
CREATE SEQUENCE "public"."FORM_ENTRY_FIELD_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 88
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."FORM_ENTRY_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."FORM_ENTRY_ID_seq";
CREATE SEQUENCE "public"."FORM_ENTRY_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."HEADER_INFO_CLIENT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."HEADER_INFO_CLIENT_ID_seq";
CREATE SEQUENCE "public"."HEADER_INFO_CLIENT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."inbox_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."inbox_ID_seq";
CREATE SEQUENCE "public"."inbox_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."KOMPONEN_HTML_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."KOMPONEN_HTML_ID_seq";
CREATE SEQUENCE "public"."KOMPONEN_HTML_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 39
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."KOMPONEN_JSON_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."KOMPONEN_JSON_ID_seq";
CREATE SEQUENCE "public"."KOMPONEN_JSON_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MAP_POINT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MAP_POINT_ID_seq";
CREATE SEQUENCE "public"."MAP_POINT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 40
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_BARGE_BARGE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_BARGE_BARGE_ID_seq";
CREATE SEQUENCE "public"."MASTER_BARGE_BARGE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 13
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_BBM_BBM_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_BBM_BBM_ID_seq";
CREATE SEQUENCE "public"."MASTER_BBM_BBM_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
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
-- Sequence structure for "public"."MASTER_CONTRACT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CONTRACT_ID_seq";
CREATE SEQUENCE "public"."MASTER_CONTRACT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_CERTIFICATE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_CERTIFICATE_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_CERTIFICATE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_EDUCATION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_EDUCATION_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_EDUCATION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 128
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_EXPERIENCE_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_EXPERIENCE_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_EXPERIENCE_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 105
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_HISTORY_OF_WORK_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_HISTORY_OF_WORK_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_HISTORY_OF_WORK_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 78
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_CV_REGION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_CV_REGION_ID_seq";
CREATE SEQUENCE "public"."MASTER_CV_REGION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 98
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
-- Sequence structure for "public"."MASTER_INTERVENTION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_INTERVENTION_ID_seq";
CREATE SEQUENCE "public"."MASTER_INTERVENTION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
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
-- Sequence structure for "public"."MASTER_PERSONIL_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_PERSONIL_ID_seq";
CREATE SEQUENCE "public"."MASTER_PERSONIL_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_PORT_PORT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_PORT_PORT_ID_seq";
CREATE SEQUENCE "public"."MASTER_PORT_PORT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_PRODUCT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_PRODUCT_ID_seq";
CREATE SEQUENCE "public"."MASTER_PRODUCT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_SBU_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_SBU_ID_seq";
CREATE SEQUENCE "public"."MASTER_SBU_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_STD_REF_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_STD_REF_ID_seq";
CREATE SEQUENCE "public"."MASTER_STD_REF_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_STDREF_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_STDREF_ID_seq";
CREATE SEQUENCE "public"."MASTER_STDREF_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_TOOL_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_TOOL_ID_seq";
CREATE SEQUENCE "public"."MASTER_TOOL_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."MASTER_VESSEL_VESSEL_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."MASTER_VESSEL_VESSEL_ID_seq";
CREATE SEQUENCE "public"."MASTER_VESSEL_VESSEL_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 34
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."outbox_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."outbox_ID_seq";
CREATE SEQUENCE "public"."outbox_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 106
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
-- Sequence structure for "public"."pelni_info_id_info_seq1"
-- ----------------------------
DROP SEQUENCE "public"."pelni_info_id_info_seq1";
CREATE SEQUENCE "public"."pelni_info_id_info_seq1"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 81
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."REF_EXP_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."REF_EXP_ID_seq";
CREATE SEQUENCE "public"."REF_EXP_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."REF_POSITION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."REF_POSITION_ID_seq";
CREATE SEQUENCE "public"."REF_POSITION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."REF_REGION_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."REF_REGION_ID_seq";
CREATE SEQUENCE "public"."REF_REGION_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 32
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq";
CREATE SEQUENCE "public"."RUNNING_TEXT_RUNNING_TEXT_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 92
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
-- Sequence structure for "public"."WA_ID_seq"
-- ----------------------------
DROP SEQUENCE "public"."WA_ID_seq";
CREATE SEQUENCE "public"."WA_ID_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
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
-- Table structure for "public"."ALERT_SUBSCRIBER"
-- ----------------------------
DROP TABLE "public"."ALERT_SUBSCRIBER";
CREATE TABLE "public"."ALERT_SUBSCRIBER" (
"ALERT_SUBSCRIBER_ID" int4 DEFAULT nextval('"ALERT_SUBSCRIBER_ID_seq"'::regclass) NOT NULL,
"USER_ID" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"SUBSCRIBE" text,
"LAST_SEND" timestamp(6),
"CLIENT_SITE_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ALERT_SUBSCRIBER
-- ----------------------------
INSERT INTO "public"."ALERT_SUBSCRIBER" VALUES ('7', '1', '0', '2018-01-02 16:55:31', null, null, null, null, null, 'Y', null, '2');
INSERT INTO "public"."ALERT_SUBSCRIBER" VALUES ('9', '4', '0', '2018-01-02 17:06:41', null, null, null, null, null, 'Y', null, '2');

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
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('76', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('77', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('78', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('79', 'PLN', '1', '1', '1', '1', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('80', 'Pelindo', '1', '0', '0', '0', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('81', 'Pelindo', '1', '0', '0', '0', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('82', 'Pelindo', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('83', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('84', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('85', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('86', 'Pelni', '1', '1', '1', '1', null, '', null, null, null, null, '9', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('87', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '1', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('88', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '2', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('89', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '7', '0');
INSERT INTO "public"."APP_CLIENT_ACCESS" VALUES ('90', 'Pertamina', '1', '1', '1', '1', null, '', null, null, null, null, '9', '0');

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_FORM_UPLOAD_DETAIL"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_FORM_UPLOAD_DETAIL";
CREATE TABLE "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" (
"FILE_UPLOAD_DETAIL_ID" int4 DEFAULT nextval('"CLIENT_UPLOAD_FILE_UPLOAD_FILE_ID_seq"'::regclass) NOT NULL,
"PATH" text,
"FILE_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"INFO_CLIENT_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of APP_CLIENT_FORM_UPLOAD_DETAIL
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('4', 'uploads/client_form_file/01_FSD-PA-Phase-1-HCMS-Project-03042017-DRAFT-v0_21.doc', '01_FSD-PA-Phase-1-HCMS-Project-03042017-DRAFT-v0_21.doc', '0', null, null, null, null, null, null, '73');
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('5', 'uploads/client_form_file/template_pdf1.pdf', 'template_pdf1.pdf', '0', null, null, null, null, null, null, '73');
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('6', 'uploads/client_form_file/room111.jpeg', 'room111.jpeg', '0', null, null, null, null, null, null, '73');
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('7', 'uploads/client_form_file/<', '<', '0', null, null, null, null, null, null, '73');
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('8', 'uploads/form_entry_file/profesional1.png', 'profesional1.png', '0', null, null, null, null, null, null, '78');
INSERT INTO "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" VALUES ('9', 'uploads/form_entry_file/Screenshot_from_2017-09-08_09-00-46.png', 'Screenshot_from_2017-09-08_09-00-46.png', '0', null, null, null, null, null, null, '78');

-- ----------------------------
-- Table structure for "public"."APP_CLIENT_HEADER_ACCESS"
-- ----------------------------
DROP TABLE "public"."APP_CLIENT_HEADER_ACCESS";
CREATE TABLE "public"."APP_CLIENT_HEADER_ACCESS" (
"HEADER_ACCESS_ID" int4 DEFAULT nextval('"APP_CLIENT_HEADER_ACCESS_HEADER_ACCESS_ID_seq"'::regclass) NOT NULL,
"CLIENT_SITE_ID" int4,
"MENU_ID" int4,
"CLIENT_TEMPLATE_ID" int4,
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
-- Records of APP_CLIENT_HEADER_ACCESS
-- ----------------------------
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES ('9', '2', '3', '7', null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES ('10', '3', '3', '7', null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES ('11', '1', '3', '7', null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_HEADER_ACCESS" VALUES ('12', '5', '3', '7', null, null, null, null, null, null, null);

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
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('7', '1', '0', 'Peta Indonesia', 'client_point', 'Peta Indonesia', '_self', '<i class="fa fa-globe"></i>', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_CLIENT_MENU" VALUES ('9', '1', '0', 'Service Ticket', 'client_ticket', 'Client Ticket', '_self', '<i class="fa fa-user"></i>', '7', '1', null, null, '0', null, '', null, null, null, null);

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
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('1', 'Pertamina', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://103.43.46.75/uploads/file_manager/pertamina-logo.png', '190', '40', 'http://mediatataruang.com/wp-content/uploads/2017/08/pertamina1.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('2', 'PLN', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://103.43.46.75/uploads/file_manager/pln-logo.png', '170', '40', 'https://redkal.com/wp-content/uploads/2017/09/IMG-20170906-WA0030.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('3', 'Pelni', '0', null, 'admin', '2017-10-16 07:31:00', null, null, null, 'http://103.43.46.75/uploads/file_manager/pelni-logo.png', '180', '40', 'http://1.bp.blogspot.com/-k3DU7DtJNus/UxpjhBX7D2I/AAAAAAAAAW8/joo_nXra-yE/s1600/Cermai.jpg');
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('7', 'CUSTOMER7', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('8', 'CUSTOMER6', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."APP_CLIENT_SITE" VALUES ('9', 'PLN Perero', null, null, null, null, null, null, null, null, null, null, null);

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
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('1', 'PLN-12345', 'admin@gmail.com', 'Tugiman', 'Jayanto', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', 'Client Test', null, 'PLN', null, '0', null, '', null, null, null, null, '08121076201', 'employee2.jpg', '2');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('2', 'PTM-12345', 'pertamina@gmail.com', 'Wira', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', '', null, 'Pertamina', null, '0', null, '', null, null, null, null, '090980450455', 'employee.jpg', '1');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('3', 'PNI-12345', 'indra@pln.co.id', 'Indra', 'Setiawan', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', '', null, 'Pelni', null, '0', null, '', null, null, null, null, '08795567454', 'employee1.jpg', '3');
INSERT INTO "public"."APP_CLIENT_USER" VALUES ('4', 'Pelindo', 'haripurno@yahoo.com', 'Harianto', 'Purnomo', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', '', null, 'Pelindo', null, '0', null, '', null, null, null, null, '081236098835', null, '5');

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
INSERT INTO "public"."APP_CLIENT_USER_GROUP" VALUES ('4', 'Pelindo', '0', null, null, null, null, null, null);

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
INSERT INTO "public"."APP_FILE_MANAGER" VALUES ('16', null, null, null, 'uploads/file_manager/', '0', null, null, null, null, null, null, 'Pelindo Logo', null);

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
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1548', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '103', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1549', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '105', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1550', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '107', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1551', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '108', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1552', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '109', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1553', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '127', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1554', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '110', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1555', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '111', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1556', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '112', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1557', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '113', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1558', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '114', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1559', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '125', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1560', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '126', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1561', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '119', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1562', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '122', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1563', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '123', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1564', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '124', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1565', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '128', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1566', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '131', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1567', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '132', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1568', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '133', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1569', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '134', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1570', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '135', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1571', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '136', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1572', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '150', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1573', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '158', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1574', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '159', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1575', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '160', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1576', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '115', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1577', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '116', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1578', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '117', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1579', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '118', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1580', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '130', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1581', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '143', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1582', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '144', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1583', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '145', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1584', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '146', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1585', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '147', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1586', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '148', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1587', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '149', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1588', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '152', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1589', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '154', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1590', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '155', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1591', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '156', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1592', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '157', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1593', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '161', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1594', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '129', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1595', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '139', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1596', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '140', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1597', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '141', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1598', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '142', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1599', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '151', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1600', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '153', '0');
INSERT INTO "public"."APP_FUNCTION_ACCESS" VALUES ('1601', 'admin', '1', '1', '1', '1', null, '', null, null, null, null, '162', '0');

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
INSERT INTO "public"."APP_MENU" VALUES ('110', '2', '103', 'Website', null, 'Website', '_self', null, '30', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('111', '3', '110', 'Website Menu', '/website_menu/', 'Website Menu', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('112', '3', '110', 'Page Static', '/page_static/', 'Page Static', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('113', '3', '110', 'Slider', '/slider/', 'Slider', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('114', '3', '110', 'Tag', '/tag', 'Tag', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('115', '1', '0', 'Data Master', '', 'Data Master', '_self', '<i class="fa fa-database"></i> ', '4', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('116', '2', '115', 'Vessel', '/vessel/', 'Vessel', '_self', null, '0', '1', null, null, '0', null, '', null, null, null, null);
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
INSERT INTO "public"."APP_MENU" VALUES ('131', '2', '103', 'Client', '', 'Client', '', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('132', '3', '131', 'Client Site', '/client_site', 'Create Site', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('133', '3', '131', 'Client Menu ', '/client_menu', 'Client Menu', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('134', '3', '131', 'Client Access', '/client_access', 'Client Access', '_self', '', '0', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('135', '3', '131', 'Client User', '/client_user', 'Client User', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('136', '3', '131', 'Client Log', '/log_monitoring_client', 'Log Monitoring Client', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('139', '1', '0', 'Form Entry', '', 'Form Entry Data Lapangan', '_self', '<i class="fa fa-pencil"></i>', '2', '1', null, null, '0', null, '', null, '', null, null);
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
INSERT INTO "public"."APP_MENU" VALUES ('151', '1', '0', 'Map Point', 'map_point', 'Map Point ', '_self', '<i class="fa fa-globe"></i>', '4', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('152', '2', '115', 'Icon', 'icon', 'Master Icon', '_self', '', '11', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('153', '1', '0', 'Alert Confirmation', 'alert_confirmation', '', '_self', '<i class="fa fa-envelope"></i>', '4', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('154', '2', '115', 'Branch', 'cabang', 'branch', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('155', '2', '115', 'Personil', 'personil', 'Personil', '_self', '', '3', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('156', '2', '115', 'Skill', 'skill', 'Information Skill Personal', '_self', '', '3', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('157', '2', '115', 'Position', 'position', 'Position Personal', '_self', '', '4', '1', null, null, '0', null, '', null, null, null, null);
INSERT INTO "public"."APP_MENU" VALUES ('158', '2', '103', 'Form', '', 'Form Setting', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('159', '3', '158', 'Setup', 'element_connection', 'Element Connection', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('160', '3', '158', 'Element', 'element_html', 'Create Element', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('161', '2', '115', 'Strategi Business Unit', 'strategi_business_unit', 'Strategi Business Unit', '_self', '', '0', '1', null, null, '0', null, '', null, '', null, null);
INSERT INTO "public"."APP_MENU" VALUES ('162', '1', '0', 'Ticket Manager', 'admin_ticket', 'Ticket Manager', '_self', '<i class="fa fa-users"></i>', '7', '1', null, null, '0', null, '', null, null, null, null);

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
INSERT INTO "public"."APP_SETTING" VALUES ('2', 'APP_WALLPAPER', 'http://103.43.46.75/uploads/file_manager/bg-login.jpg');
INSERT INTO "public"."APP_SETTING" VALUES ('4', 'APP_BRAND_HEIGHT', '50px');
INSERT INTO "public"."APP_SETTING" VALUES ('5', 'APP_BRAND_WIDTH', '170px');
INSERT INTO "public"."APP_SETTING" VALUES ('6', 'APP_BRAND_LOGO', 'http://103.43.46.75/uploads/file_manager/logo.jpg');
INSERT INTO "public"."APP_SETTING" VALUES ('9', 'APP_SCREEN_SAVER_TIMEOUT', '5');
INSERT INTO "public"."APP_SETTING" VALUES ('10', 'APP_SCREEN_SAVER_IMAGE', 'http://103.43.46.75/uploads/file_manager/logo_suco_SS4.png');

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
INSERT INTO "public"."APP_USER" VALUES ('1', 'admin', 'dwiardana@sucofindo.co.id', 'Dwi', 'Ardana', '21232f297a57a5a743894a0e4a801fc3', '0', 'Y', '-', null, 'admin', null, '0', null, '', null, null, null, null, '08121076201', 'profile12.jpg');
INSERT INTO "public"."APP_USER" VALUES ('5', 'wiblink', 'wibi@gmail.com', 'Wibisono', 'Flow', '21232f297a57a5a743894a0e4a801fc3', null, 'Y', 'remark', null, 'admin', null, '0', null, '', null, null, null, null, '081808656181', 'profileother.jpg');
INSERT INTO "public"."APP_USER" VALUES ('7', 'teguh', 'teguh@gmail.com', 'Teguh', 'Widodo', '21232f297a57a5a743894a0e4a801fc3', null, 'N', 'Asset Test', null, 'admin', null, '0', null, '', null, null, null, null, '08568163177', 'employee.jpg');
INSERT INTO "public"."APP_USER" VALUES ('8', 'tubagus', 'tubagus@gmail.com', 'Tubagus', '', 'e10adc3949ba59abbe56e057f20f883e', null, 'Y', '', null, 'admin', null, '0', null, '', null, null, null, null, '', 'user-icon-png-pnglogocom.png');

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
-- Table structure for "public"."ELEMENT_CONNECTION"
-- ----------------------------
DROP TABLE "public"."ELEMENT_CONNECTION";
CREATE TABLE "public"."ELEMENT_CONNECTION" (
"ID" text DEFAULT gen_random_uuid() NOT NULL,
"NAME" text,
"DATA" text,
"PRODUCT_ID" int4,
"INTERVENTION_ID" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"ELEMENT_TIMELOG_ID" text,
"ELEMENT_QUALITY_ID" text,
"ELEMENT_FIELDS" text,
"ELEMENT_JS" text,
"ELEMENT_R1" text,
"ELEMENT_R2" text,
"ELEMENT_R3" text,
"ELEMENT_R4" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ELEMENT_CONNECTION
-- ----------------------------
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('044736a3-df87-4b8f-9a24-a74ac39a29b6', 'Setup Crude Bunker Pipe', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '6', '21', '0', null, null, null, null, null, '36', '21', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","SUPPLIER","TRADER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","SELECT_CARGO","VESSEL","VESSEL_ID","AREA","AREA_ID","SELECT_PORT","PORT_TERMINAL","PORT_ID","SELECT_PRODUCT","PRODUCT","PRODUCT_ID","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_LOADING_BARGE_ARRIVED","DATE_LOADING_BARGE_ARRIVED","REMARKS_LOADING_BARGE_ARRIVED","TIME_LOADING_NOR_TENDERED","DATE_LOADING_NOR_TENDERED","REMARKS_LOADING_NOR_TENDERED","TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE","DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE","REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE","TIME_LOADING_KEY_MEETING","DATE_LOADING_KEY_MEETING","REMARKS_LOADING_KEY_MEETING","TIME_LOADING_NOR_ACCEPTED","DATE_LOADING_NOR_ACCEPTED","REMARKS_LOADING_NOR_ACCEPTED","TIME_LOADING_VALVE_SEEALED","DATE_LOADING_VALVE_SEEALED","REMARKS_LOADING_VALVE_SEEALED","TIME_LOADING_TANK_INSPECT_METER_VERIFICATION","DATE_LOADING_TANK_INSPECT_METER_VERIFICATION","REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION","TIME_HOSE_CONNECTED","DATE_HOSE_CONNECTED","REMARKS_HOSE_CONNECTED","TIME_LOADING_HOST_CONNECTED","DATE_LOADING_HOST_CONNECTED","REMARKS_LOADING_HOST_CONNECTED","TIME_LOADING_LOADING_COMMENCED","DATE_LOADING_LOADING_COMMENCED","REMARKS_LOADING_LOADING_COMMENCED","TIME_LOADING_LOADING_COMPLETED","DATE_LOADING_LOADING_COMPLETED","REMARKS_LOADING_LOADING_COMPLETED","TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT","DATE_LOADING_HOSE_ARMS_DISCONNECT","REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT","TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL","DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL","REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL","TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","TIME_DISCHARGE_BARGE_ARRIVED","DATE_DISCHARGE_BARGE_ARRIVED","REMARKS_DISCHARGE_BARGE_ARRIVED","TIME_DISCHARGE_NOR_TENDERED","DATE_DISCHARGE_NOR_TENDERED","REMARKS_DISCHARGE_NOR_TENDERED","TIME_DISCHARGE_KEY_MEETING","DATE_DISCHARGE_KEY_MEETING","REMARKS_DISCHARGE_KEY_MEETING","TIME_DISCHARGE_NOR_ACCEPTED","DATE_DISCHARGE_NOR_ACCEPTED","REMARKS_DISCHARGE_NOR_ACCEPTED","TIME_DISCHARGE_VALVE_SEEALED","DATE_DISCHARGE_VALVE_SEEALED","REMARKS_DISCHARGE_VALVE_SEEALED","TIME_DISCHARGE_TANK_INSPECT_MEASURE","DATE_DISCHARGE_TANK_INSPECT_MEASURE","REMARKS_DISCHARGE_TANK_INSPECT_MEASURE","TIME_VISUAL_INSPECTION_SAMPLING","DATE_VISUAL_INSPECTION_SAMPLING","REMARKS_VISUAL_INSPECTION_SAMPLING","TIME_DISCHARGE_HOST_CONNECTED","DATE_DISCHARGE_HOST_CONNECTED","REMARKS_DISCHARGE_HOST_CONNECTED","TIME_DISCHARGE_BUNKER_COMMENCED","DATE_DISCHARGE_BUNKER_COMMENCED","REMARKS_DISCHARGE_BUNKER_COMMENCED","TIME_DISCHARGE_BUNKER_COMPLETED","DATE_DISCHARGE_BUNKER_COMPLETED","REMARKS_DISCHARGE_BUNKER_COMPLETED","TIME_DATE_DISCHARGE_HOSE_DISCONNECT","DATE_DISCHARGE_HOSE_DISCONNECT","REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT","TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL","DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL","REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL","TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING","DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING","REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING","TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","TIME_DISCHARGE_BARGE_LEAVE_SHIP","DATE_DISCHARGE_BARGE_LEAVE_SHIP","REMARKS_DISCHARGE_BARGE_LEAVE_SHIP","ACTIVITIES_REMARKS","INITIAL_READOUT_KLOBS","INITIAL_READOUT_KL15","INITIAL_READOUT_METRIC_TONS","FINAL_READOUT_KLOBS","FINAL_READOUT_KL15","FINAL_READOUT_METRIC_TONS","DIFFERENCE_KLOBS","DIFFERENCE_KL15","DIFFERENCE_METRIC_TONS","METER_FACTOR_KLOBS","CORD_VOL_DELIVERED_KLOBS","CORD_VOL_DELIVERED_KL15","CORD_VOL_DELIVERED_METRIC_TONS","DENSITY15DEG_KLOBS","SUPPLY_LOSS_KLOBS","SUPPLY_LOSS_KL15","SUPPLY_LOSS_METRIC_TONS","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE"]', null, '[""]', '[""]', '[""]', '["SUPPLY_LOSS_KLOBS|KLOBS","SUPPLY_LOSS_KL15|KL15","SUPPLY_LOSS_METRIC_TONS|METRICTON"]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('1b11c5f9-7ca9-4463-8d3d-7d0bfb2eca53', 'Setup Product Bunker Pipe', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '7', '21', '0', null, null, null, null, null, '36', '21', '[""]', null, '[""]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('25b45faa-235f-461c-84da-2fe52255ee9c', 'Setup Petrokimia Loading', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '8', '14', '0', null, null, null, null, null, '28', '24', '[""]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON","SL_VEF_APPLIED_VS_BOL_KLOBS|KLOBS","SL_VEF_APPLIED_VS_BOL_KL15|KL15","SL_VEF_APPLIED_VS_BOL_BBLS|BBLS","SL_VEF_APPLIED_VS_BOL_LONGTON|LONGTON","SL_VEF_APPLIED_VS_BOL_METRICTON|METRICTON"]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('2aef8807-bb3c-4cb2-9a0b-ae1c53c8a33b', 'Setup Petrokimia Discharge', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '8', '15', '0', null, null, null, null, null, '29', '25', '[""]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON"]', '["SFAL_VS_SF_KLOBS|KLOBS","SFAL_VS_SF_KL15|KL15","SFAL_VS_SF_BBLS|BBLS","SFAL_VS_SF_LONGTON|LONGTON","SFAL_VS_SF_METRICTON|METRICTON"]', '["SFBD_VS_SR_KLOBS|KLOBS","SFBD_VS_SR_KL15|KL15","SFBD_VS_SR_BBLS|BBLS","SFBD_VS_SR_LONGTON|LONGTON","SFBD_VS_SR_METRICTON|METRICTON"]', '["SR_VS_BOL_KLOBS|KLOBS","SR_VS_BOL_KL15|KL15","SR_VS_BOL_BBLS|BBLS","SR_VS_BOL_LONGTON|LONGTON","SR_VS_BOL_METRICTON|METRICTON"]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('4d877458-bafc-4542-acf0-b93d5f620e26', 'Setup Crude Loading', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '6', '14', '0', null, null, null, null, null, '32', '17', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","CLIENTS","SUPPLIER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","SELECT_CARGO","VESSEL","VESSEL_ID","AREA","AREA_ID","SELECT_PORT","PORT_TERMINAL","PORT_ID","SELECT_PRODUCT","PRODUCT","PRODUCT_ID","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_VESSEL_ARRIVED","DATE_VESSEL_ARRIVED","REMARKS_VESSEL_ARRIVED","TIME_ANCHORAGED","DATE_ANCHORAGED","REMARKS_ANCHORAGED","TIME_NOR","DATE_NOR","REMARKS_NOR","TIME_ACCEPTED","DATE_ACCEPTED","REMARKS_ACCEPTED","TIME_BERTHED","DATE_BERTHED","REMARKS_BERTHED","TIME_SURVEYOR_ON_BOARD","DATE_SURVEYOR_ON_BOARD","REMARKS_SURVEYOR_ON_BOARD","TIME_KEY_MEETING","DATE_KEY_MEETING","REMARKS_KEY_MEETING","TIME_INPECTION_COMMENCED","DATE_INPECTION_COMMENCED","REMARKS_INPECTION_COMMENCED","TIME_INSPECTION_COMPLETED","DATE_INSPECTION_COMPLETED","REMARKS_INSPECTION_COMPLETED","TIME_HOSE_CONNECTED_COMMENCED","DATE_HOSE_CONNECTED_COMMENCED","REMARKS_HOSE_CONNECTED_COMMENCED","TIME_HOSE_CONNECTED_COMPLETED","DATE_HOSE_CONNECTED_COMPLETED","REMARKS_HOSE_CONNECTED_COMPLETED","TIME_LOADING_COMMENCED","DATE_LOADING_COMMENCED","REMARKS_LOADING_COMMENCED","TIME_LOADING_COMPLETED","DATE_LOADING_COMPLETED","REMARKS_LOADING_COMPLETED","TIME_HOSE_DISCONNECTED","DATE_HOSE_DISCONNECTED","REMARKS_HOSE_DISCONNECTED","TIME_SAMPLING_COMMENCED","DATE_SAMPLING_COMMENCED","REMARKS_SAMPLING_COMMENCED","TIME_SAMPLING_COMPLETED","DATE_SAMPLING_COMPLETED","REMARKS_SAMPLING_COMPLETED","TIME_CARGO_MEASUREMENT_COMMENCED","DATE_CARGO_MEASUREMENT_COMMENCED","REMARKS_CARGO_MEASUREMENT_COMMENCED","TIME_CARGO_MEASUREMENT_COMPLETED","DATE_CARGO_MEASUREMENT_COMPLETED","REMARKS_CARGO_MEASUREMENT_COMPLETED","TIME_DOCUMENTS_ONBOARD","DATE_DOCUMENTS_ONBOARD","REMARKS_DOCUMENTS_ONBOARD","TIME_VESSEL_SAILED","DATE_VESSEL_SAILED","REMARKS_VESSEL_SAILED","ACTIVITIES_REMARKS","BL_GSV_KLOBS","BL_GSV_KL15","BL_GSV_BBLS","BL_GSV_LONGTON","BL_GSV_METRICTON","BL_NSV_KLOBS","BL_NSV_KL15","BL_NSV_BBLS","BL_NSV_LONGTON","BL_NSV_METRICTON","BL_FLOW_METER","BL_15_DERAJAT_CELCIUS","SF_SQ_KLOBS","SF_SQ_KL15","SF_SQ_BBLS","SF_SQ_LONGTON","SF_SQ_METRICTON","SF_GSV_KLOBS","SF_GSV_KL15","SF_GSV_BBLS","SF_GSV_LONGTON","SF_GSV_METRICTON","SF_NSV_KLOBS","SF_NSV_KL15","SF_NSV_BBLS","SF_NSV_LONGTON","SF_NSV_METRICTON","SF_SHORE_TANKS_NOMINATION_KLOBS","OBQ_QUANTITY_KLOBS","OBQ_QUANTITY_KL15","OBQ_QUANTITY_BBLS","OBQ_QUANTITY_LONGTON","OBQ_QUANTITY_METRICTON","SF_SFAL_TOV_KLOBS","SF_SFAL_TOV_KL15","SF_SFAL_TOV_BBLS","SF_SFAL_TOV_LONGTON","SF_SFAL_TOV_METRICTON","SF_FREE_WATER_AL_KLOBS","SF_FREE_WATER_AL_KL15","SF_FREE_WATER_AL_BBLS","SF_FREE_WATER_AL_LONGTON","SF_FREE_WATER_AL_METRICTON","SFAL_GSV_KLOBS","SFAL_GSV_KL15","SFAL_GSV_BBLS","SFAL_GSV_LONGTON","SFAL_GSV_METRICTON","SFAL_NSV_KLOBS","SFAL_NSV_KL15","SFAL_NSV_BBLS","SFAL_NSV_LONGTON","SFAL_NSV_METRICTON","VEFL_KLOBS","VEFL_KL15","VEFL_BBLS","VEFL_LONGTON","VEFL_METRICTON","SL_APPLIED_VEFL_KLOBS","SL_APPLIED_VEFL_KL15","SL_APPLIED_VEFL_BBLS","SL_APPLIED_VEFL_LONGTON","SL_APPLIED_VEFL_METRICTON","SL_VS_BOL_R1_KLOBS","SL_VS_BOL_R1_KL15","SL_VS_BOL_R1_BBLS","SL_VS_BOL_R1_LONGTON","SL_VS_BOL_R1_METRICTON","SL_VEF_APPLIED_VS_BOL_R1_KLOBS","SL_VEF_APPLIED_VS_BOL_R1_KL15","SL_VEF_APPLIED_VS_BOL_R1_BBLS","SL_VEF_APPLIED_VS_BOL_R1_LONGTON","SL_VEF_APPLIED_VS_BOL_R1_METRICTON","SAMPLE_SOURCE","DATE_OF_ANALYSIS","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE","FSOQ","RN_NOTICE_ISSUE_DESCRIPTION","RN_LETTER_ISSUE_DESCRIPTION","RN_STATEMENT_ISSUE_DESCRIPTION"]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON","SL_VEF_APPLIED_VS_BOL_R1_KLOBS|KLOBS","SL_VEF_APPLIED_VS_BOL_R1_KL15|KL15","SL_VEF_APPLIED_VS_BOL_R1_BBLS|BBLS","SL_VEF_APPLIED_VS_BOL_R1_LONGTON|LONGTON","SL_VEF_APPLIED_VS_BOL_R1_METRICTON|METRICTON"]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('523c5a99-2fd8-4e59-af75-36a308c00641', 'Setup Gas Loading', '<div id="selenium-highlight">&nbsp;</div>', '9', '14', '0', null, null, null, null, null, '30', '22', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENTS","SUPPLIER","TRADER","BUYER","SELLER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","VESSEL","AREA","SELECT_PORT","PORT_TERMINAL","SELECT_PRODUCT","PRODUCT","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","TIME_LOADING_GAS_VESSEL_ARRIVED","DATE_LOADING_GAS_VESSEL_ARRIVED","REMARKS_LOADING_GAS_VESSEL_ARRIVED","TIME_LOADING_GAS_VESSEL_ANCHORAGED","DATE_LOADING_GAS_VESSEL_ANCHORAGED","REMARKS_LOADING_GAS_VESSEL_ANCHORAGED","TIME_LOADING_GAS_NOR_TENDERED","DATE_LOADING_GAS_NOR_TENDERED","REMARKS_LOADING_GAS_NOR_TENDERED","TIME_LOADING_GAS_NOR_ACCEPTED","DATE_LOADING_GAS_NOR_ACCEPTED","REMARKS_LOADING_GAS_NOR_ACCEPTED","TIME_LOADING_GAS_VESSEL_BERTHED","DATE_LOADING_GAS_VESSEL_BERTHED","REMARKS_LOADING_GAS_VESSEL_BERTHED","TIME_LOADING_GAS_SURVEYOR_ON_BOARD","DATE_LOADING_GAS_SURVEYOR_ON_BOARD","REMARKS_LOADING_GAS_SURVEYOR_ON_BOARD","TIME_LOADING_GAS_KEY_MEETING","DATE_LOADING_GAS_KEY_MEETING","REMARKS_LOADING_GAS_KEY_MEETING","TIME_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE","DATE_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE","REMARKS_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE","TIME_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED","DATE_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED","REMARKS_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED","TIME_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE","DATE_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE","REMARKS_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE","TIME_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED","DATE_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED","REMARKS_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED","TIME_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE","DATE_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE","REMARKS_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE","TIME_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED","DATE_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED","REMARKS_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED","TIME_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION","DATE_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION","REMARKS_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION","TIME_LOADING_GAS_COMMENCED_LOADING_OF_CARGO","DATE_LOADING_GAS_COMMENCED_LOADING_OF_CARGO","REMARKS_LOADING_GAS_COMMENCED_LOADING_OF_CARGO","TIME_LOADING_GAS_COMPLETED_LOADING_OF_CARGO","DATE_LOADING_GAS_COMPLETED_LOADING_OF_CARGO","REMARKS_LOADING_GAS_COMPLETED_LOADING_OF_CARGO","TIME_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE","DATE_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE","REMARKS_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE","TIME_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED","DATE_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED","REMARKS_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED","TIME_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE","DATE_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE","REMARKS_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE","TIME_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED","DATE_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED","REMARKS_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED","TIME_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION","DATE_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION","REMARKS_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION","TIME_LOADING_GAS_DOCUMENTS_ONBOARD","DATE_LOADING_GAS_DOCUMENTS_ONBOARD","REMARKS_LOADING_GAS_DOCUMENTS_ONBOARD","TIME_LOADING_GAS_VESSEL_SAILED","DATE_LOADING_GAS_VESSEL_SAILED","REMARKS_LOADING_GAS_VESSEL_SAILED","ACTIVITIES_REMARKS","GSV_GROSS_VOL","GSV_NETT_VOL","GSV_METRIC_TON","GSV_CALORIE_MMBTU","GSV_GHV","BL_FLOW_METER","DENSITY","SFBL_TANK_VOLUME_CORRECTED","SFAL_TANK_VOLUME_CORRECTED","GROS_STANDARD_VOLUME_LOADED","NET_STANDARD_VOLUME_LOADED","THERMAL_EXPANSION_VOLUME_LOADING","VOLUME_GAS_DURING_LOADING","ENERGY_GAS_CONSUMED_DURING_LOADING","QUALITY_SAMPLE_SOURCE","QUALITY_DATE_OF_ANALISYS","QUALITY_SAMPLING_METHOD","ANALYSIS_RESULT_C1","ANALYSIS_RESULT_C2","ANALYSIS_RESULT_C3","ANALYSIS_RESULT_IC4","ANALYSIS_RESULT_NC4","ANALYSIS_RESULT_IC5","ANALYSIS_RESULT_NC5","ANALYSIS_RESULT_N2","ANALYSIS_RESULT_TOTAL","ANALYSIS_RESULT_H2S","ANALYSIS_RESULT_TOTAL_SULFUR","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE"]', null, null, null, null, null);
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('5ba15f93-c5aa-41c0-be10-f4323f63f45a', 'Setup Crude Discharge', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '6', '15', '0', null, null, null, null, null, '34', '18', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","CLIENTS","SUPPLIER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","SELECT_CARGO","VESSEL","VESSEL_ID","AREA","AREA_ID","SELECT_PORT","PORT_TERMINAL","PORT_ID","SELECT_PRODUCT","PRODUCT","PRODUCT_ID","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_VESSEL_ARRIVED","DATE_VESSEL_ARRIVED","REMARKS_VESSEL_ARRIVED","TIME_ANCHORAGED","DATE_ANCHORAGED","REMARKS_ANCHORAGED","TIME_NOR","DATE_NOR","REMARKS_NOR","TIME_ACCEPTED","DATE_ACCEPTED","REMARKS_ACCEPTED","TIME_POB","DATE_POB","REMARKS_POB","TIME_A_AWEIGH","DATE_A_AWEIGH","REMARKS_A_AWEIGH","TIME_BERTHING","DATE_BERTHING","REMARKS_BERTHING","TIME_SURVEYOR_ON_BOARD","DATE_SURVEYOR_ON_BOARD","REMARKS_SURVEYOR_ON_BOARD","TIME_KEY_MEETING","DATE_KEY_MEETING","REMARKS_KEY_MEETING","TIME_INPECTION_COMMENCED","DATE_INPECTION_COMMENCED","REMARKS_INPECTION_COMMENCED","TIME_INSPECTION_COMPLETED","DATE_INSPECTION_COMPLETED","REMARKS_INSPECTION_COMPLETED","TIME_SBD_COMMENCED","DATE_SBD_COMMENCED","REMARKS_SBD_COMMENCED","TIME_SBD_COMPLETED","DATE_SBD_COMPLETED","REMARKS_SBD_COMPLETED","TIME_HOSE_CONNECTED","DATE_HOSE_CONNECTED","REMARKS_HOSE_CONNECTED","TIME_CONNECTED_COMPLETED","DATE_CONNECTED_COMPLETED","REMARKS_CONNECTED_COMPLETED","TIME_DISCHARGE_COMMENCED","DATE_DISCHARGE_COMMENCED","REMARKS_DISCHARGE_COMMENCED","TIME_DISCHARGE_COMPLETED","DATE_DISCHARGE_COMPLETED","REMARKS_DISCHARGE_COMPLETED","TIME_HOSE_DISCONNECTED","DATE_HOSE_DISCONNECTED","REMARKS_HOSE_DISCONNECTED","TIME_TANKS_INS_COMMENCED","DATE_TANKS_INS_COMMENCED","REMARKS_TANKS_INS_COMMENCED","TIME_TANKS_INS_COMPLETED","DATE_TANKS_INS_COMPLETED","REMARKS_TANKS_INS_COMPLETED","TIME_DOCUMENTS_ONBOARD","DATE_DOCUMENTS_ONBOARD","REMARKS_DOCUMENTS_ONBOARD","TIME_SVY_LEFT_VESSEL","DATE_SVY_LEFT_VESSEL","REMARKS_SVY_LEFT_VESSEL","TIME_VESSEL_SAIL","DATE_VESSEL_SAIL","REMARKS_VESSEL_SAIL","ACTIVITIES_REMARKS","BL_GSV_KLOBS","BL_GSV_KL15","BL_GSV_BBLS","BL_GSV_LONGTON","BL_GSV_METRICTON","BL_NSV_KLOBS","BL_NSV_KL15","BL_NSV_BBLS","BL_NSV_LONGTON","BL_NSV_METRICTON","BL_FLOW_METER","SFAL_KLOBS","SFAL_KL15","SFAL_BBLS","SFAL_LONGTON","SFAL_METRICTON","SF_SQ_KLOBS","SF_SQ_KL15","SF_SQ_BBLS","SF_SQ_LONGTON","SF_SQ_METRICTON","SF_GSV_KLOBS","SF_GSV_KL15","SF_GSV_BBLS","SF_GSV_LONGTON","SF_GSV_METRICTON","SF_NSV_KLOBS","SF_NSV_KL15","SF_NSV_BBLS","SF_NSV_LONGTON","SF_NSV_METRICTON","SF_SFAL_KLOBS","SF_SFAL_KL15","SF_SFAL_BBLS","SF_SFAL_LONGTON","SF_SFAL_METRICTON","SFBD_TOV_KLOBS","SFBD_TOV_KL15","SFBD_TOV_BBLS","SFBD_TOV_LONGTON","SFBD_TOV_METRICTON","FREE_WATER_KLOBS","FREE_WATER_KL15","FREE_WATER_BBLS","FREE_WATER_LONGTON","FREE_WATER_METRICTON","ROBQ_KLOBS","ROBQ_KL15","ROBQ_BBLS","ROBQ_LONGTON","ROBQ_METRICTON","SFBD_GSV_KLOBS","SFBD_GSV_KL15","SFBD_GSV_BBLS","SFBD_GSV_LONGTON","SFBD_GSV_METRICTON","SFBD_NSV_KLOBS","SFBD_NSV_KL15","SFBD_NSV_BBLS","SFBD_NSV_LONGTON","SFBD_NSV_METRICTON","SLVS_BOL_R1_KLOBS","SLVS_BOL_R1_KL15","SLVS_BOL_R1_BBLS","SLVS_BOL_R1_LONGTON","SLVS_BOL_R1_METRICTON","SFAL_VS_SFBD_R2_KLOBS","SFAL_VS_SFBD_R2_KL15","SFAL_VS_SFBD_R2_BBLS","SFAL_VS_SFBD_R2_LONGTON","SFAL_VS_SFBD_R2_METRICTON","SFBD_VS_SR_R3_KLOBS","SFBD_VS_SR_R3_KL15","SFBD_VS_SR_R3_BBLS","SFBD_VS_SR_R3_LONGTON","SFBD_VS_SR_R3_METRICTON","SR_VS_BOL_R4_KLOBS","SR_VS_BOL_R4_KL15","SR_VS_BOL_R4_BBLS","SR_VS_BOL_R4_LONGTON","SR_VS_BOL_R4_METRICTON","SAMPLE_SOURCE","DATE_OF_ANALYSIS","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE","FSOQ","RN_NOTICE_ISSUE_DESCRIPTION","RN_LETTER_ISSUE_DESCRIPTION","RN_STATEMENT_ISSUE_DESCRIPTION"]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON","SL_VEF_APPLIED_VS_BOL_R1_KLOBS|KLOBS","SL_VEF_APPLIED_VS_BOL_R1_KL15|KL15","SL_VEF_APPLIED_VS_BOL_R1_BBLS|BBLS","SL_VEF_APPLIED_VS_BOL_R1_LONGTON|LONGTON","SL_VEF_APPLIED_VS_BOL_R1_METRICTON|METRICTON"]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('9828f26c-4361-4c4c-9267-c1bedc4aa617', 'Setup Product Loading', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '7', '14', '0', null, null, null, null, null, '37', '19', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","CLIENTS","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","VESSEL","VESSEL_ID","AREA","AREA_ID","PRODUCT","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_VESSEL_ARRIVED","DATE_VESSEL_ARRIVED","REMARKS_VESSEL_ARRIVED","TIME_ANCHORAGED","DATE_ANCHORAGED","REMARKS_ANCHORAGED","TIME_NOR","DATE_NOR","REMARKS_NOR","TIME_ACCEPTED","DATE_ACCEPTED","REMARKS_ACCEPTED","TIME_BERTHED","DATE_BERTHED","REMARKS_BERTHED","TIME_SURVEYOR_ON_BOARD","DATE_SURVEYOR_ON_BOARD","REMARKS_SURVEYOR_ON_BOARD","TIME_KEY_MEETING","DATE_KEY_MEETING","REMARKS_KEY_MEETING","TIME_COMMENCED","DATE_COMMENCED","REMARKS_COMMENCED","TIME_COMPLETED","DATE_COMPLETED","REMARKS_COMPLETED","TIME_CONNECTED_COMMENCED","DATE_CONNECTED_COMMENCED","REMARKS_CONNECTED_COMMENCED","TIME_CONNECTED_COMPLETED","DATE_CONNECTED_COMPLETED","REMARKS_CONNECTED_COMPLETED","TIME_LOADING_COMMENCED","DATE_LOADING_COMMENCED","REMARKS_LOADING_COMMENCED","TIME_LOADING_COMPLETED","DATE_LOADING_COMPLETED","REMARKS_LOADING_COMPLETED","TIME_HOSE_CONNECTED","DATE_HOSE_CONNECTED","REMARKS_HOSE_CONNECTED","TIME_SAMPLING_COMMENCED","DATE_SAMPLING_COMMENCED","REMARKS_SAMPLING_COMMENCED","TIME_SAMPLING_COMPLETED","DATE_SAMPLING_COMPLETED","REMARKS_SAMPLING_COMPLETED","TIME_MEASUREMENT_COMMENCED","DATE_MEASUREMENT_COMMENCED","REMARKS_MEASUREMENT_COMMENCED","TIME_MEASUREMENT_COMPLETED","DATE_MEASUREMENT_COMPLETED","REMARKS_MEASUREMENT_COMPLETED","TIME_DOCUMENTS_ONBOARD","DATE_DOCUMENTS_ONBOARD","REMARKS_DOCUMENTS_ONBOARD","TIME_VESSEL_SAILED","DATE_VESSEL_SAILED","REMARKS_VESSEL_SAILED","ACTIVITIES_REMARKS","BL_QUANTITY_KLOBS","BL_QUANTITY_KL15","BL_QUANTITY_BBLS","BL_QUANTITY_LONGTON","BL_QUANTITY_METRICTON","BL_15_DERAJAT_CELCIUS","SF_QUANTITY_KLOBS","SF_QUANTITY_KL15","SF_QUANTITY_BBLS","SF_QUANTITY_LONGTON","SF_QUANTITY_METRICTON\t","ST_NOMINATION","OBQ_QUANTITY_KLOBS","OBQ_QUANTITY_KL15","OBQ_QUANTITY_BBLS","OBQ_QUANTITY_LONGTON","OBQ_QUANTITY_METRICTON","SFAL_TOV_KLOBS","SFAL_TOV_KL15","SFAL_TOV_BBLS","SFAL_TOV_LONGTON","SFAL_TOV_METRICTON","FWAL_KLOBS","FWAL_KL15","FWAL_BBLS","FWAL_LONGTON","FWAL_METRICTON","SL_GSV_KLOBS","SL_GSV_KL15","SL_GSV_BBLS","SL_GSV_LONGTON","SL_GSV_METRICTON","VEF_LOADING_BBLS","SL_APPLIED_VEFL_BBLS","SL_VS_BOL_R1_KLOBS","SL_VS_BOL_R1_KL15","SL_VS_BOL_R1_BBLS","SL_VS_BOL_R1_LONGTON","SL_VS_BOL_R1_METRICTON","SL_VEF_APPLIED_VS_BOL_KLOBS","SL_VEF_APPLIED_VS_BOL_KL15","SL_VEF_APPLIED_VS_BOL_BBLS","SL_VEF_APPLIED_VS_BOL_LONGTON","SL_VEF_APPLIED_VS_BOL_METRICTON","SAMPLE_SOURCE","DATE_OF_ANALYSIS","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE","RN_NOTICE_ISSUE_DESCRIPTION","RN_LETTER_ISSUE_DESCRIPTION","RN_STATEMENT_ISSUE_DESCRIPTION"]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON","SL_VEF_APPLIED_VS_BOL_KLOBS|KLOBS","SL_VEF_APPLIED_VS_BOL_KL15|KL15","SL_VEF_APPLIED_VS_BOL_BBLS|BBLS","SL_VEF_APPLIED_VS_BOL_LONGTON|LONGTON","SL_VEF_APPLIED_VS_BOL_METRICTON|METRICTON"]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('acf5720f-f572-4c42-b8b4-f6afe3ab7191', 'Setup Product Bunker Vessel', '<div id="selenium-highlight">&nbsp;</div>', '7', '25', '0', null, null, null, null, null, '35', '26', '[""]', null, '[""]', '[""]', '[""]', '[""]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('b061ea1d-da64-400b-ae09-3338a15e7e7d', 'Setup Crude Bunker Vessel', '<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '6', '25', '0', null, null, null, null, null, '35', '26', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","CLIENTS","SUPPLIER","TRADER","BUYER","SELLER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","VESSEL","VESSEL_ID","AREA","AREA_ID","SELECT_PORT","PORT_TERMINAL","PORT_ID","SELECT_PRODUCT","PRODUCT","PRODUCT_ID","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_LOADING_BARGE_ARRIVED","DATE_LOADING_BARGE_ARRIVED","REMARKS_LOADING_BARGE_ARRIVED","TIME_LOADING_NOR_TENDERED","DATE_LOADING_NOR_TENDERED","REMARKS_LOADING_NOR_TENDERED","TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE","DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE","REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE","TIME_LOADING_KEY_MEETING","DATE_LOADING_KEY_MEETING","REMARKS_LOADING_KEY_MEETING","TIME_LOADING_VALVE_SEEALED","DATE_LOADING_VALVE_SEEALED","REMARKS_LOADING_VALVE_SEEALED","TIME_LOADING_TANK_INSPECT_MEASURE","DATE_LOADING_TANK_INSPECT_MEASURE","REMARKS_LOADING_TANK_INSPECT_MEASURE","TIME_LOADING_TANK_INSPECT_METER_VERF","DATE_LOADING_TANK_INSPECT_METER_VERF","REMARKS_LOADING_TANK_INSPECT_METER_VERF","TIME_LOADING_HOST_CONNECTED","DATE_LOADING_HOST_CONNECTED","REMARKS_LOADING_HOST_CONNECTED","TIME_LOADING_LOADING_COMMENCED","DATE_LOADING_LOADING_COMMENCED","REMARKS_LOADING_LOADING_COMMENCED","TIME_LOADING_LOADING_COMPLETED","DATE_LOADING_LOADING_COMPLETED","REMARKS_LOADING_LOADING_COMPLETED","TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT","DATE_LOADING_HOSE_ARMS_DISCONNECT","REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT","TIME_LOADING_VISUAL_INSPEC_SAMPL","DATE_LOADING_VISUAL_INSPEC_SAMPL","REMARKS_LOADING_VISUAL_INSPEC_SAMPL","TIME_LOADING_TANK_INSPECT_MEASR_FINAL","DATE_LOADING_TANK_INSPECT_MEASR_FINAL","REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL","TIME_LOADING_TANK_INSPECT_METER_FINAL","DATE_LOADING_TANK_INSPECT_METER_FINAL","REMARKS_LOADING_TANK_INSPECT_METER_FINAL","TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD","TIME_LOADING_BARGE_LEAVE_DEPOT","DATE_LOADING_BARGE_LEAVE_DEPOT","REMARKS_LOADING_BARGE_LEAVE_DEPOT","TIME_DISCHARGE_BARGE_ARRIVED","DATE_DISCHARGE_BARGE_ARRIVED","REMARKS_DISCHARGE_BARGE_ARRIVED","TIME_DISCHARGE_NOR_TENDERED","DATE_DISCHARGE_NOR_TENDERED","REMARKS_DISCHARGE_NOR_TENDERED","TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE","DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE","REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE","TIME_DISCHARGE_KEY_MEETING","DATE_DISCHARGE_KEY_MEETING","REMARKS_DISCHARGE_KEY_MEETING","TIME_DISCHARGE_VALVE_SEEALED","DATE_DISCHARGE_VALVE_SEEALED","REMARKS_DISCHARGE_VALVE_SEEALED","TIME_DISCHARGE_TANK_INSPECT_MEASURE","DATE_DISCHARGE_TANK_INSPECT_MEASURE","REMARKS_DISCHARGE_TANK_INSPECT_MEASURE","TIME_DISCHARGE_TANK_INSPECT_METER_VERF","DATE_DISCHARGE_TANK_INSPECT_METER_VERF","REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF","TIME_DISCHARGE_HOST_CONNECTED","DATE_DISCHARGE_HOST_CONNECTED","REMARKS_DISCHARGE_HOST_CONNECTED","TIME_DISCHARGE_BUNKER_COMMENCED","DATE_DISCHARGE_BUNKER_COMMENCED","REMARKS_DISCHARGE_BUNKER_COMMENCED","TIME_DISCHARGE_BUNKER_COMPLETED","DATE_DISCHARGE_BUNKER_COMPLETED","REMARKS_DISCHARGE_BUNKER_COMPLETED","TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT","DATE_DISCHARGE_HOSE_ARMS_DISCONNECT","REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT","TIME_DISCHARGE_VISUAL_INSPEC_SAMPL","DATE_DISCHARGE_VISUAL_INSPEC_SAMPL","REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL","TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL","DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL","REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL","TIME_DISCHARGE_TANK_INSPECT_METER_FINAL","DATE_DISCHARGE_TANK_INSPECT_METER_FINAL","REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL","TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD","TIME_DISCHARGE_BARGE_LEAVE_SHIP","DATE_DISCHARGE_BARGE_LEAVE_SHIP","REMARKS_DISCHARGE_BARGE_LEAVE_SHIP","ACTIVITIES_REMARKS","INITIAL_READOUT_KLOBS","INITIAL_READOUT_KL15","INITIAL_READOUT_METRIC_TONS","FINAL_READOUT_KLOBS","FINAL_READOUT_KL15","FINAL_READOUT_METRIC_TONS","DIFFERENCE_KLOBS","DIFFERENCE_KL15","DIFFERENCE_METRIC_TONS","METER_FACTOR_KLOBS","CORD_VOL_DELIVERED_KLOBS","CORD_VOL_DELIVERED_KL15","CORD_VOL_DELIVERED_METRIC_TONS","DENSITY15DEG_KLOBS","BARGE_BEFORE_LOADING_KLOBS","BARGE_BEFORE_LOADING_KL15","BARGE_BEFORE_LOADING_METRIC_TONS","BARGE_AFTER_LOADING_KLOBS","BARGE_AFTER_LOADING_KL15","BARGE_AFTER_LOADING_METRIC_TONS","BARGE_LOADED_KLOBS","BARGE_LOADED_KL15","BARGE_LOADED_METRIC_TONS","BARGE_BEFORE_DISCHARGE_KLOBS","BARGE_BEFORE_DISCHARGE_KL15","BARGE_BEFORE_DISCHARGE_METRIC_TONS","BARGE_AFTER_DISCHARGE_KLOBS","BARGE_AFTER_DISCHARGE_KL15","BARGE_AFTER_DISCHARGE_METRIC_TONS","BARGE_DISCHARGE_KLOBS","BARGE_DISCHARGE_KL15","BARGE_DISCHARGE_METRIC_TONS","BARGE_BEFORE_RECEIVE_KLOBS","BARGE_BEFORE_RECEIVE_KL15","BARGE_BEFORE_RECEIVE_METRIC_TONS","BARGE_AFTER_RECEIVE_KLOBS","BARGE_AFTER_RECEIVE_KL15","BARGE_AFTER_RECEIVE_METRIC_TONS","BARGE_RECEIVE_KLOBS","BARGE_RECEIVE_KL15","BARGE_RECEIVE_METRIC_TONS","LOADING_LOSS_R1_KLOBS","LOADING_LOSS_R1_KL15","LOADING_LOSS_R1_METRIC_TONS","TRANSPORTATION_LOSS_R2_KLOBS","TRANSPORTATION_LOSS_R2_KL15","TRANSPORTATION_LOSS_R2_METRIC_TONS","DISCHARGE_LOSS_R3_KLOBS","DISCHARGE_LOSS_R3_KL15","DISCHARGE_LOSS_R3_METRIC_TONS","SUPPLY_LOSS_R4_KLOBS","SUPPLY_LOSS_R4_KL15","SUPPLY_LOSS_R4_METRIC_TONS","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE"]', null, '["LOADING_LOSS_R1_KLOBS|KLOBS","LOADING_LOSS_R1_KL15|KL15","LOADING_LOSS_R1_METRIC_TONS|METRICTON"]', '["TRANSPORTATION_LOSS_R2_KLOBS|KLOBS","TRANSPORTATION_LOSS_R2_KL15|KL15","TRANSPORTATION_LOSS_R2_METRIC_TONS|METRICTON"]', '["DISCHARGE_LOSS_R3_KLOBS|KLOBS","DISCHARGE_LOSS_R3_KL15|KL15","DISCHARGE_LOSS_R3_METRIC_TONS|METRICTON"]', '["SUPPLY_LOSS_R4_KLOBS|KLOBS","SUPPLY_LOSS_R4_KL15|KL15","SUPPLY_LOSS_R4_METRIC_TONS|METRICTON"]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('c0c8844d-4599-4256-bb3b-2ef427df7677', 'Setup Product Discharge', '<br />
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '7', '15', '0', null, null, null, null, null, '27', '20', '["PRODUCT_TYPE","SELECT_INTERVENTION","SELECT_CLIENT","CLIENT_ID","CLIENTS","SUPPLIER","TRADER","BUYER","SELLER","SHARING_FEE","KONTRAK","SPK","VOY","FILE_ORDER","IWO","VESSEL","VESSEL_ID","AREA","AREA_ID","SELECT_PORT","PORT_TERMINAL","PORT_ID","SELECT_PRODUCT","PRODUCT","PRODUCT_ID","LOADING_START_DATE","LOADING_START_TIME","LOADING_COMPLETE_DATE","LOADING_COMPLETE_TIME","DISCHARGE_START_DATE","DISCHARGE_START_TIME","DISCHARGE_COMPLETE_DATE","DISCHARGE_COMPLETE_TIME","BL_START_DATE","BL_START_TIME","TYPE_LOCATION","SURVEYOR_IN_CHARGE","SURVEYOR_ID","TIME_VESSEL_ARRIVED","DATE_VESSEL_ARRIVED","REMARKS_VESSEL_ARRIVED","TIME_ANCHORAGED","DATE_ANCHORAGED","REMARKS_ANCHORAGED","TIME_NOR","DATE_NOR","REMARKS_NOR","TIME_ACCEPTED","DATE_ACCEPTED","REMARKS_ACCEPTED","TIME_POB","DATE_POB","REMARKS_POB","TIME_A_AWEIGH","DATE_A_AWEIGH","REMARKS_A_AWEIGH","TIME_BERTHING","DATE_BERTHING","REMARKS_BERTHING","TIME_SURVEYOR_ON_BOARD","DATE_SURVEYOR_ON_BOARD","REMARKS_SURVEYOR_ON_BOARD","TIME_KEY_MEETING","DATE_KEY_MEETING","REMARKS_KEY_MEETING","TIME_INPECTION_COMMENCED","DATE_INPECTION_COMMENCED","REMARKS_INPECTION_COMMENCED","TIME_INSPECTION_COMPLETED","DATE_INSPECTION_COMPLETED","REMARKS_INSPECTION_COMPLETED","TIME_SBD_COMMENCED","DATE_SBD_COMMENCED","REMARKS_SBD_COMMENCED","TIME_SBD_COMPLETED","DATE_SBD_COMPLETED","REMARKS_SBD_COMPLETED","TIME_HOSE_CONNECTED","DATE_HOSE_CONNECTED","REMARKS_HOSE_CONNECTED","TIME_CONNECTED_COMPLETED","DATE_CONNECTED_COMPLETED","REMARKS_CONNECTED_COMPLETED","TIME_DISCHARGE_COMMENCED","DATE_DISCHARGE_COMMENCED","REMARKS_DISCHARGE_COMMENCED","TIME_DISCHARGE_COMPLETED","DATE_DISCHARGE_COMPLETED","REMARKS_DISCHARGE_COMPLETED","TIME_HOSE_DISCONNECTED","DATE_HOSE_DISCONNECTED","REMARKS_HOSE_DISCONNECTED","TIME_TANKS_INS_COMMENCED","DATE_TANKS_INS_COMMENCED","REMARKS_TANKS_INS_COMMENCED","TIME_TANKS_INS_COMPLETED","DATE_TANKS_INS_COMPLETED","REMARKS_TANKS_INS_COMPLETED","TIME_DOCUMENTS_ONBOARD","DATE_DOCUMENTS_ONBOARD","REMARKS_DOCUMENTS_ONBOARD","TIME_SVY_LEFT_VESSEL","DATE_SVY_LEFT_VESSEL","REMARKS_SVY_LEFT_VESSEL","TIME_VESSEL_SAIL","DATE_VESSEL_SAIL","REMARKS_VESSEL_SAIL","ACTIVITIES_REMARKS","BL_QUANTITY_KLOBS","BL_QUANTITY_KL15","BL_QUANTITY_BBLS","BL_QUANTITY_LONGTON","BL_QUANTITY_METRICTON","BL_SHORE_TANK","BL_SFAL_KLOBS","BL_SFAL_KL15","BL_SFAL_BBLS","BL_SFAL_LONGTON","BL_SFAL_METRICTON","SF_SHORE_RECEIVED_KLOBS","SF_SHORE_RECEIVED_KL15","SF_SHORE_RECEIVED_BBLS","SF_SHORE_RECEIVED_LONGTON","SF_SHORE_RECEIVED_METRICTON","SF_STU","SF_DENSITY_15C","SFBD_TOV_KLOBS","SFBD_TOV_KL15","SFBD_TOV_BBLS","SFBD_TOV_LONGTON","SFBD_TOV_METRICTON","FREE_WATER_KLOBS","FREE_WATER_KL15","FREE_WATER_BBLS","FREE_WATER_LONGTON","FREE_WATER_METRICTON","ROBQ_KLOBS","ROBQ_KL15","ROBQ_BBLS","ROBQ_LONGTON","ROBQ_METRICTON","SFBD_GSV_KLOBS","SFBD_GSV_KL15","SFBD_GSV_BBLS","SFBD_GSV_LONGTON","SFBD_GSV_METRICTON","SL_VS_BOL_R1_KLOBS","SL_VS_BOL_R1_KL15","SL_VS_BOL_R1_BBLS","SL_VS_BOL_R1_LONGTON","SL_VS_BOL_R1_METRICTON","SFAL_VS_SF_KLOBS","SFAL_VS_SF_KL15","SFAL_VS_SF_BBLS","SFAL_VS_SF_LONGTON","SFAL_VS_SF_METRICTON","SFBD_VS_SR_KLOBS","SFBD_VS_SR_KL15","SFBD_VS_SR_BBLS","SFBD_VS_SR_LONGTON","SFBD_VS_SR_METRICTON","SR_VS_BOL_KLOBS","SR_VS_BOL_KL15","SR_VS_BOL_BBLS","SR_VS_BOL_LONGTON","SR_VS_BOL_METRICTON","SAMPLE_SOURCE","DATE_OF_ANALYSIS","RN_NOTICE_ISSUE","RN_LETTER_ISSUE","RN_STATEMENT_ISSUE","BO_MFO_ON_ARRIVAL","BO_MDO_ON_ARRIVAL","BO_MFO_ON_DEPARTURE","BO_MDO_ON_DEPARTURE","SC_ON_ARRIVAL_DRAFT_FWD","SC_ON_ARRIVAL_DRAFT_AFT","SC_ON_ARRIVAL_DRAFT_LIST","SC_ON_DEPARTURE_DRAFT_FWD","SC_ON_DEPARTURE_DRAFT_AFT","SC_ON_DEPARTURE_DRAFT_LIST","SC","CREATE_TIME","MODIFY_USER","IS_DELETE"]', null, '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON"]', '["SFAL_VS_SF_KLOBS|KLOBS","SFAL_VS_SF_KL15|KL15","SFAL_VS_SF_BBLS|BBLS","SFAL_VS_SF_LONGTON|LONGTON","SFAL_VS_SF_METRICTON|METRICTON"]', '["SFBD_VS_SR_KLOBS|KLOBS","SFBD_VS_SR_KL15|KL15","SFBD_VS_SR_BBLS|BBLS","SFBD_VS_SR_LONGTON|LONGTON","SFBD_VS_SR_METRICTON|METRICTON"]', '["SR_VS_BOL_KLOBS|KLOBS","SR_VS_BOL_KL15|KL15","SR_VS_BOL_BBLS|BBLS","SR_VS_BOL_LONGTON|LONGTON","SR_VS_BOL_METRICTON|METRICTON"]');
INSERT INTO "public"."ELEMENT_CONNECTION" VALUES ('dd727c4c-34c0-4917-82d5-abcf945d1625', 'Setup Gas Dishcarge', '<div id="selenium-highlight">&nbsp;</div>', '9', '15', '0', null, null, null, null, null, '31', '23', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."FORM_ENTRY_FIELD"
-- ----------------------------
DROP TABLE "public"."FORM_ENTRY_FIELD";
CREATE TABLE "public"."FORM_ENTRY_FIELD" (
"ID" int4 DEFAULT nextval('"FORM_ENTRY_FIELD_ID_seq"'::regclass) NOT NULL,
"SC" text,
"IWO" text,
"SPK" text,
"VOY" text,
"AREA" text,
"SUPPLIER" text,
"BUYER" text,
"SELLER" text,
"TRADER" text,
"KONTRAK" text,
"PRODUCT" text,
"DATE_NOR" date,
"TIME_NOR" time(6),
"FWAL_BBLS" text,
"FWAL_KL15" text,
"FILE_ORDER" text,
"FWAL_KLOBS" text,
"REMARKS_NOR" text,
"SELECT_PORT" text,
"SHARING_FEE" text,
"SL_GSV_BBLS" text,
"SL_GSV_KL15" text,
"DATE_BERTHED" date,
"FWAL_LONGTON" text,
"PRODUCT_TYPE" text,
"SELECT_CARGO" text,
"SL_GSV_KLOBS" text,
"TIME_BERTHED" time(6),
"BL_START_DATE" date,
"BL_START_TIME" time(6),
"DATE_ACCEPTED" date,
"DATE_CONTRACT" date,
"PORT_TERMINAL" text,
"SAMPLE_SOURCE" text,
"SELECT_CLIENT" text,
"SFAL_TOV_BBLS" text,
"SFAL_TOV_KL15" text,
"ST_NOMINATION" text,
"TIME_ACCEPTED" time(6),
"DATE_COMMENCED" date,
"DATE_COMPLETED" date,
"FWAL_METRICTON" text,
"SELECT_PRODUCT" text,
"SFAL_TOV_KLOBS" text,
"SL_GSV_LONGTON" text,
"TIME_COMMENCED" time(6),
"TIME_COMPLETED" time(6),
"DATE_ANCHORAGED" date,
"REMARKS_BERTHED" text,
"RN_LETTER_ISSUE" text,
"RN_NOTICE_ISSUE" text,
"TIME_ANCHORAGED" time(6),
"BL_QUANTITY_BBLS" text,
"BL_QUANTITY_KL15" text,
"DATE_KEY_MEETING" date,
"DATE_OF_ANALYSIS" date,
"REMARKS_ACCEPTED" text,
"SF_QUANTITY_BBLS" text,
"SF_QUANTITY_KL15" text,
"SFAL_TOV_LONGTON" text,
"SL_GSV_METRICTON" text,
"TIME_KEY_MEETING" time(6),
"VEF_LOADING_BBLS" text,
"BL_QUANTITY_KLOBS" text,
"BO_MDO_ON_ARRIVAL" text,
"BO_MFO_ON_ARRIVAL" text,
"OBQ_QUANTITY_BBLS" text,
"OBQ_QUANTITY_KL15" text,
"REMARKS_COMMENCED" text,
"REMARKS_COMPLETED" text,
"SF_QUANTITY_KLOBS" text,
"SL_VS_BOL_R1_BBLS" text,
"SL_VS_BOL_R1_KL15" text,
"ACTIVITIES_REMARKS" text,
"DATE_LOISPKPOWONOA" date,
"DATE_VESSEL_SAILED" date,
"LOADING_START_DATE" date,
"LOADING_START_TIME" time(6),
"OBQ_QUANTITY_KLOBS" text,
"REMARKS_ANCHORAGED" text,
"RN_STATEMENT_ISSUE" text,
"SFAL_TOV_METRICTON" text,
"SL_VS_BOL_R1_KLOBS" text,
"TIME_VESSEL_SAILED" time(6),
"BL_QUANTITY_LONGTON" text,
"BO_MDO_ON_DEPARTURE" text,
"BO_MFO_ON_DEPARTURE" text,
"CLIENT_SITE_ID_FORM" text,
"DATE_HOSE_CONNECTED" date,
"DATE_VESSEL_ARRIVED" date,
"REMARKS_KEY_MEETING" text,
"SELECT_INTERVENTION" int4,
"SF_QUANTITY_LONGTON" text,
"TIME_HOSE_CONNECTED" time(6),
"TIME_VESSEL_ARRIVED" time(6),
"DISCHARGE_START_DATE" date,
"DISCHARGE_START_TIME" time(6),
"OBQ_QUANTITY_LONGTON" text,
"SL_APPLIED_VEFL_BBLS" text,
"SL_VS_BOL_R1_LONGTON" text,
"BL_15_DERAJAT_CELCIUS" text,
"BL_QUANTITY_METRICTON" text,
"LOADING_COMPLETE_DATE" date,
"LOADING_COMPLETE_TIME" time(6),
"REMARKS_VESSEL_SAILED" text,
"DATE_DOCUMENTS_ONBOARD" date,
"DATE_LOADING_COMMENCED" date,
"DATE_LOADING_COMPLETED" date,
"DATE_SURVEYOR_ON_BOARD" date,
"OBQ_QUANTITY_METRICTON" text,
"REMARKS_HOSE_CONNECTED" text,
"REMARKS_VESSEL_ARRIVED" text,
"SF_QUANTITY_METRICTON" text,
"SL_VS_BOL_R1_METRICTON" text,
"TIME_DOCUMENTS_ONBOARD" time(6),
"TIME_LOADING_COMMENCED" time(6),
"TIME_LOADING_COMPLETED" time(6),
"TIME_SURVEYOR_ON_BOARD" time(6),
"DATE_SAMPLING_COMMENCED" date,
"DATE_SAMPLING_COMPLETED" date,
"DISCHARGE_COMPLETE_DATE" date,
"DISCHARGE_COMPLETE_TIME" time(6),
"SC_ON_ARRIVAL_DRAFT_AFT" text,
"SC_ON_ARRIVAL_DRAFT_FWD" text,
"TIME_SAMPLING_COMMENCED" time(6),
"TIME_SAMPLING_COMPLETED" time(6),
"DATE_CONNECTED_COMMENCED" date,
"DATE_CONNECTED_COMPLETED" date,
"SC_ON_ARRIVAL_DRAFT_LIST" text,
"TIME_CONNECTED_COMMENCED" time(6),
"TIME_CONNECTED_COMPLETED" time(6),
"REMARKS_DOCUMENTS_ONBOARD" text,
"REMARKS_LOADING_COMMENCED" text,
"REMARKS_LOADING_COMPLETED" text,
"REMARKS_SURVEYOR_ON_BOARD" text,
"SC_ON_DEPARTURE_DRAFT_AFT" text,
"SC_ON_DEPARTURE_DRAFT_FWD" text,
"DATE_MEASUREMENT_COMMENCED" date,
"DATE_MEASUREMENT_COMPLETED" date,
"REMARKS_SAMPLING_COMMENCED" text,
"REMARKS_SAMPLING_COMPLETED" text,
"SC_ON_DEPARTURE_DRAFT_LIST" text,
"SL_VEF_APPLIED_VS_BOL_BBLS" text,
"SL_VEF_APPLIED_VS_BOL_KL15" text,
"TIME_MEASUREMENT_COMMENCED" time(6),
"TIME_MEASUREMENT_COMPLETED" time(6),
"REMARKS_CONNECTED_COMMENCED" text,
"REMARKS_CONNECTED_COMPLETED" text,
"SL_VEF_APPLIED_VS_BOL_KLOBS" text,
"REMARKS_MEASUREMENT_COMMENCED" text,
"REMARKS_MEASUREMENT_COMPLETED" text,
"SL_VEF_APPLIED_VS_BOL_LONGTON" text,
"SL_VEF_APPLIED_VS_BOL_METRICTON" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"CLIENT_SITE_ID" int4,
"SF_GSV_KLOBS" text,
"SF_NSV_KLOBS" text,
"SF_FREE_WATER_AL_BBLS" text,
"SF_FREE_WATER_AL_KL15" text,
"SF_SFAL_TOV_METRICTON" text,
"SL_APPLIED_VEFL_KLOBS" text,
"DATE_HOSE_DISCONNECTED" date,
"SF_FREE_WATER_AL_KLOBS" text,
"DATE_DISCHARGE_COMPLETED" date,
"DATE_INPECTION_COMMENCED" date,
"SF_FREE_WATER_AL_LONGTON" text,
"TIME_DISCHARGE_COMMENCED" time(6),
"TIME_DISCHARGE_COMPLETED" time(6),
"TIME_INPECTION_COMMENCED" time(6),
"DATE_INSPECTION_COMPLETED" date,
"REMARKS_HOSE_DISCONNECTED" text,
"SL_APPLIED_VEFL_METRICTON" text,
"TIME_INSPECTION_COMPLETED" time(6),
"SF_FREE_WATER_AL_METRICTON" text,
"REMARKS_DISCHARGE_COMMENCED" text,
"REMARKS_DISCHARGE_COMPLETED" text,
"REMARKS_INPECTION_COMMENCED" text,
"REMARKS_INSPECTION_COMPLETED" text,
"DATE_HOSE_CONNECTED_COMMENCED" date,
"DATE_HOSE_CONNECTED_COMPLETED" date,
"SL_VEF_APPLIED_VS_BOL_R1_BBLS" text,
"SL_VEF_APPLIED_VS_BOL_R1_KL15" text,
"TIME_HOSE_CONNECTED_COMMENCED" time(6),
"TIME_HOSE_CONNECTED_COMPLETED" time(6),
"SL_VEF_APPLIED_VS_BOL_R1_KLOBS" text,
"SF_SHORE_TANKS_NOMINATION_KLOBS" text,
"DATE_CARGO_MEASUREMENT_COMMENCED" date,
"DATE_CARGO_MEASUREMENT_COMPLETED" date,
"REMARKS_HOSE_CONNECTED_COMMENCED" text,
"REMARKS_HOSE_CONNECTED_COMPLETED" text,
"SL_VEF_APPLIED_VS_BOL_R1_LONGTON" text,
"TIME_CARGO_MEASUREMENT_COMMENCED" time(6),
"TIME_CARGO_MEASUREMENT_COMPLETED" time(6),
"SL_VEF_APPLIED_VS_BOL_R1_METRICTON" text,
"REMARKS_CARGO_MEASUREMENT_COMMENCED" text,
"REMARKS_CARGO_MEASUREMENT_COMPLETED" text,
"BL_FLOW_METER" text,
"BL_SHORE_TANK" text,
"BL_SHIP_TANK" text,
"FSOQ" text,
"SURVEYOR_IN_CHARGE" text,
"RN_NOTICE_ISSUE_DESCRIPTION" text,
"RN_LETTER_ISSUE_DESCRIPTION" text,
"RN_STATEMENT_ISSUE_DESCRIPTION" text,
"DATE_A_AWEIGH" date,
"TIME_A_AWEIGH" time(6),
"DATE_POB" date,
"TIME_POB" time(6),
"DATE_BERTHING" date,
"TIME_BERTHING" time(6),
"DATE_SBD_COMMENCED" date,
"DATE_SBD_COMPLETED" date,
"TIME_SBD_COMMENCED" time(6),
"TIME_SBD_COMPLETED" time(6),
"DATE_DISCHARGE_COMMENCED" date,
"DATE_TANKS_INS_COMMENCED" date,
"TIME_TANKS_INS_COMMENCED" time(6),
"DATE_TANKS_INS_COMPLETED" date,
"TIME_TANKS_INS_COMPLETED" time(6),
"DATE_SVY_LEFT_VESSEL" date,
"TIME_SVY_LEFT_VESSEL" time(6),
"DATE_VESSEL_SAIL" date,
"TIME_VESSEL_SAIL" time(6),
"TIME_HOSE_DISCONNECTED" time(6),
"BL_SFAL_KL15" text,
"BL_SFAL_BBLS" text,
"BL_SFAL_METRICTON" text,
"BL_SFAL_LONGTON" text,
"SF_SFAL_KLOBS" text,
"SF_SFAL_KL15" text,
"SF_SFAL_BBLS" text,
"SF_SFAL_METRICTON" text,
"SF_SFAL_LONGTON" text,
"SFBD_TOV_KLOBS" text,
"SFBD_TOV_KL15" text,
"SFBD_TOV_BBLS" text,
"SFBD_TOV_METRICTON" text,
"SFBD_TOV_LONGTON" text,
"SFBD_GSV_KLOBS" text,
"SFBD_GSV_BBLS" text,
"SFBD_GSV_METRICTON" text,
"SFBD_GSV_LONGTON" text,
"ROBQ_KLOBS" text,
"ROBQ_KL15" text,
"ROBQ_BBLS" text,
"ROBQ_METRICTON" text,
"ROBQ_LONGTON" text,
"BL_SFAL_KLOBS" text,
"SFBD_GSV_KL15" text,
"SLVS_BOL_R1_KLOBS" text,
"SLVS_BOL_R1_KL15" text,
"SLVS_BOL_R1_BBLS" text,
"SLVS_BOL_R1_LONGTON" text,
"SLVS_BOL_R1_METRICTON" text,
"SFAL_VS_SFBD_R2_KLOBS" text,
"SFAL_VS_SFBD_R2_KL15" text,
"SFAL_VS_SFBD_R2_BBLS" text,
"SFAL_VS_SFBD_R2_LONGTON" text,
"SFAL_VS_SFBD_R2_METRICTON" text,
"SFBD_VS_SR_R3_KLOBS" text,
"SFBD_VS_SR_R3_KL15" text,
"SFBD_VS_SR_R3_BBLS" text,
"SFBD_VS_SR_R3_LONGTON" text,
"SFBD_VS_SR_R3_METRICTON" text,
"SR_VS_BOL_R4_KLOBS" text,
"SR_VS_BOL_R4_KL15" text,
"SR_VS_BOL_R4_BBLS" text,
"SR_VS_BOL_R4_LONGTON" text,
"SR_VS_BOL_R4_METRICTON" text,
"VESSEL" text,
"ALERT_PUSH" int4 DEFAULT 0,
"CLIENTS" text,
"BL_GSV_KLOBS" text,
"BL_GSV_KL15" text,
"BL_GSV_BBLS" text,
"BL_GSV_LONGTON" text,
"BL_GSV_METRICTON" text,
"BL_NSV_KLOBS" text,
"BL_NSV_KL15" text,
"BL_NSV_BBLS" text,
"BL_NSV_LONGTON" text,
"BL_NSV_METRICTON" text,
"SF_GSV_KL15" text,
"SF_GSV_BBLS" text,
"SF_GSV_LONGTON" text,
"SF_GSV_METRICTON" text,
"SF_NSV_KL15" text,
"SF_NSV_BBLS" text,
"SF_NSV_LONGTON" text,
"SF_NSV_METRICTON" text,
"SF_SFAL_TOV_KLOBS" text,
"SF_SFAL_TOV_KL15" text,
"SF_SFAL_TOV_BBLS" text,
"SF_SFAL_TOV_LONGTON" text,
"SFAL_GSV_KLOBS" text,
"SFAL_GSV_KL15" text,
"SFAL_GSV_BBLS" text,
"SFAL_GSV_LONGTON" text,
"SFAL_GSV_METRICTON" text,
"SFAL_NSV_KLOBS" text,
"SFAL_NSV_KL15" text,
"SFAL_NSV_BBLS" text,
"SFAL_NSV_LONGTON" text,
"SFAL_NSV_METRICTON" text,
"VEFL_KLOBS" text,
"VEFL_KL15" text,
"VEFL_BBLS" text,
"VEFL_LONGTON" text,
"VEFL_METRICTON" text,
"SL_APPLIED_VEFL_KL15" text,
"SL_APPLIED_VEFL_LONGTON" text,
"REMARKS_POB" text,
"REMARKS_A_AWEIGH" text,
"REMARKS_BERTHING" text,
"REMARKS_SBD_COMMENCED" text,
"REMARKS_SBD_COMPLETED" text,
"REMARKS_TANKS_INS_COMMENCED" text,
"REMARKS_TANKS_INS_COMPLETED" text,
"REMARKS_SVY_LEFT_VESSEL" text,
"REMARKS_VESSEL_SAIL" text,
"SFAL_KLOBS" text,
"SFAL_KL15" text,
"SFAL_BBLS" text,
"SFAL_LONGTON" text,
"SFAL_METRICTON" text,
"SF_SQ_KLOBS" text,
"SF_SQ_KL15" text,
"SF_SQ_BBLS" text,
"SF_SQ_LONGTON" text,
"SF_SQ_METRICTON" text,
"FREE_WATER_KLOBS" text,
"FREE_WATER_KL15" text,
"FREE_WATER_BBLS" text,
"FREE_WATER_LONGTON" text,
"FREE_WATER_METRICTON" text,
"SFBD_NSV_KLOBS" text,
"SFBD_NSV_KL15" text,
"SFBD_NSV_BBLS" text,
"SFBD_NSV_LONGTON" text,
"SFBD_NSV_METRICTON" text,
"TIME_LOADING_BARGE_ARRIVED" text,
"DATE_LOADING_BARGE_ARRIVED" text,
"REMARKS_LOADING_BARGE_ARRIVED" text,
"TIME_LOADING_NOR_TENDERED" text,
"DATE_LOADING_NOR_TENDERED" text,
"REMARKS_LOADING_NOR_TENDERED" text,
"TIME_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
"DATE_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
"REMARKS_LOADING_BARGE_ALL_FAST_ALONGSIDE" text,
"TIME_LOADING_KEY_MEETING" text,
"DATE_LOADING_KEY_MEETING" text,
"REMARKS_LOADING_KEY_MEETING" text,
"TIME_LOADING_NOR_ACCEPTED" text,
"DATE_LOADING_NOR_ACCEPTED" text,
"REMARKS_LOADING_NOR_ACCEPTED" text,
"TIME_LOADING_VALVE_SEEALED" text,
"DATE_LOADING_VALVE_SEEALED" text,
"REMARKS_LOADING_VALVE_SEEALED" text,
"TIME_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
"DATE_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
"REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION" text,
"TIME_LOADING_HOST_CONNECTED" text,
"DATE_LOADING_HOST_CONNECTED" text,
"REMARKS_LOADING_HOST_CONNECTED" text,
"TIME_LOADING_LOADING_COMMENCED" text,
"DATE_LOADING_LOADING_COMMENCED" text,
"REMARKS_LOADING_LOADING_COMMENCED" text,
"TIME_LOADING_LOADING_COMPLETED" text,
"DATE_LOADING_LOADING_COMPLETED" text,
"REMARKS_LOADING_LOADING_COMPLETED" text,
"TIME_DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
"DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
"REMARKS_DATE_LOADING_HOSE_ARMS_DISCONNECT" text,
"TIME_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
"DATE_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
"REMARKS_LOADING_TANK_INSPECT_METER_VERIFICATION_FINAL" text,
"TIME_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
"DATE_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
"REMARKS_LOADING_CALCUL_COMPLETED_DOC_ONBOARD" text,
"TIME_DISCHARGE_BARGE_ARRIVED" text,
"DATE_DISCHARGE_BARGE_ARRIVED" text,
"REMARKS_DISCHARGE_BARGE_ARRIVED" text,
"TIME_DISCHARGE_NOR_TENDERED" text,
"DATE_DISCHARGE_NOR_TENDERED" text,
"REMARKS_DISCHARGE_NOR_TENDERED" text,
"TIME_DISCHARGE_KEY_MEETING" text,
"DATE_DISCHARGE_KEY_MEETING" text,
"REMARKS_DISCHARGE_KEY_MEETING" text,
"TIME_DISCHARGE_NOR_ACCEPTED" text,
"DATE_DISCHARGE_NOR_ACCEPTED" text,
"REMARKS_DISCHARGE_NOR_ACCEPTED" text,
"TIME_DISCHARGE_VALVE_SEEALED" text,
"DATE_DISCHARGE_VALVE_SEEALED" text,
"REMARKS_DISCHARGE_VALVE_SEEALED" text,
"TIME_DISCHARGE_TANK_INSPECT_MEASURE" text,
"DATE_DISCHARGE_TANK_INSPECT_MEASURE" text,
"REMARKS_DISCHARGE_TANK_INSPECT_MEASURE" text,
"TIME_VISUAL_INSPECTION_SAMPLING" text,
"DATE_VISUAL_INSPECTION_SAMPLING" text,
"REMARKS_VISUAL_INSPECTION_SAMPLING" text,
"TIME_DISCHARGE_HOST_CONNECTED" text,
"DATE_DISCHARGE_HOST_CONNECTED" text,
"REMARKS_DISCHARGE_HOST_CONNECTED" text,
"TIME_DISCHARGE_BUNKER_COMMENCED" text,
"DATE_DISCHARGE_BUNKER_COMMENCED" text,
"REMARKS_DISCHARGE_BUNKER_COMMENCED" text,
"TIME_DISCHARGE_BUNKER_COMPLETED" text,
"DATE_DISCHARGE_BUNKER_COMPLETED" text,
"REMARKS_DISCHARGE_BUNKER_COMPLETED" text,
"TIME_DATE_DISCHARGE_HOSE_DISCONNECT" text,
"DATE_DISCHARGE_HOSE_DISCONNECT" text,
"REMARKS_DATE_DISCHARGE_HOSE_DISCONNECT" text,
"TIME_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
"DATE_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
"REMARKS_DISCHARGE_TANK_INSPECT_MEASR_FINAL" text,
"TIME_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
"DATE_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
"REMARKS_DISCHARGE_VISUAL_INSPECTION_SAMPLING" text,
"TIME_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
"DATE_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
"REMARKS_DISCHARGE_CALCUL_COMPLETED_DOC_ONBOARD" text,
"TIME_DISCHARGE_BARGE_LEAVE_SHIP" text,
"DATE_DISCHARGE_BARGE_LEAVE_SHIP" text,
"REMARKS_DISCHARGE_BARGE_LEAVE_SHIP" text,
"INITIAL_READOUT_KLOBS" text,
"INITIAL_READOUT_KL15" text,
"INITIAL_READOUT_METRIC_TONS" text,
"FINAL_READOUT_KLOBS" text,
"FINAL_READOUT_KL15" text,
"FINAL_READOUT_METRIC_TONS" text,
"DIFFERENCE_KLOBS" text,
"DIFFERENCE_KL15" text,
"DIFFERENCE_METRIC_TONS" text,
"METER_FACTOR_KLOBS" text,
"CORD_VOL_DELIVERED_KLOBS" text,
"CORD_VOL_DELIVERED_KL15" text,
"CORD_VOL_DELIVERED_METRIC_TONS" text,
"DENSITY15DEG_KLOBS" text,
"SUPPLY_LOSS_KLOBS" text,
"SUPPLY_LOSS_KL15" text,
"SUPPLY_LOSS_METRIC_TONS" text,
"TIME_LOADING_TANK_INSPECT_MEASURE" text,
"DATE_LOADING_TANK_INSPECT_MEASURE" text,
"REMARKS_LOADING_TANK_INSPECT_MEASURE" text,
"TIME_LOADING_TANK_INSPECT_METER_VERF" text,
"DATE_LOADING_TANK_INSPECT_METER_VERF" text,
"REMARKS_LOADING_TANK_INSPECT_METER_VERF" text,
"TIME_LOADING_VISUAL_INSPEC_SAMPL" text,
"DATE_LOADING_VISUAL_INSPEC_SAMPL" text,
"REMARKS_LOADING_VISUAL_INSPEC_SAMPL" text,
"TIME_LOADING_TANK_INSPECT_MEASR_FINAL" text,
"DATE_LOADING_TANK_INSPECT_MEASR_FINAL" text,
"REMARKS_LOADING_TANK_INSPECT_MEASR_FINAL" text,
"TIME_LOADING_TANK_INSPECT_METER_FINAL" text,
"DATE_LOADING_TANK_INSPECT_METER_FINAL" text,
"REMARKS_LOADING_TANK_INSPECT_METER_FINAL" text,
"TIME_LOADING_BARGE_LEAVE_DEPOT" text,
"DATE_LOADING_BARGE_LEAVE_DEPOT" text,
"REMARKS_LOADING_BARGE_LEAVE_DEPOT" text,
"TIME_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
"DATE_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
"REMARKS_DISCHARGE_BARGE_ALL_FAST_ALONGSIDE" text,
"TIME_DISCHARGE_TANK_INSPECT_METER_VERF" text,
"DATE_DISCHARGE_TANK_INSPECT_METER_VERF" text,
"REMARKS_DISCHARGE_TANK_INSPECT_METER_VERF" text,
"TIME_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
"DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
"REMARKS_DATE_DISCHARGE_HOSE_ARMS_DISCONNECT" text,
"TIME_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
"DATE_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
"REMARKS_DISCHARGE_VISUAL_INSPEC_SAMPL" text,
"TIME_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
"DATE_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
"REMARKS_DISCHARGE_TANK_INSPECT_METER_FINAL" text,
"BARGE_BEFORE_LOADING_KLOBS" text,
"BARGE_BEFORE_LOADING_KL15" text,
"BARGE_BEFORE_LOADING_METRIC_TONS" text,
"BARGE_AFTER_LOADING_KLOBS" text,
"BARGE_AFTER_LOADING_KL15" text,
"BARGE_AFTER_LOADING_METRIC_TONS" text,
"BARGE_LOADED_KLOBS" text,
"BARGE_LOADED_KL15" text,
"BARGE_LOADED_METRIC_TONS" text,
"BARGE_BEFORE_DISCHARGE_KLOBS" text,
"BARGE_BEFORE_DISCHARGE_KL15" text,
"BARGE_BEFORE_DISCHARGE_METRIC_TONS" text,
"BARGE_AFTER_DISCHARGE_KLOBS" text,
"BARGE_AFTER_DISCHARGE_KL15" text,
"BARGE_AFTER_DISCHARGE_METRIC_TONS" text,
"BARGE_DISCHARGE_KLOBS" text,
"BARGE_DISCHARGE_KL15" text,
"BARGE_DISCHARGE_METRIC_TONS" text,
"BARGE_BEFORE_RECEIVE_KLOBS" text,
"BARGE_BEFORE_RECEIVE_KL15" text,
"BARGE_BEFORE_RECEIVE_METRIC_TONS" text,
"BARGE_AFTER_RECEIVE_KLOBS" text,
"BARGE_AFTER_RECEIVE_KL15" text,
"BARGE_AFTER_RECEIVE_METRIC_TONS" text,
"BARGE_RECEIVE_KLOBS" text,
"BARGE_RECEIVE_KL15" text,
"BARGE_RECEIVE_METRIC_TONS" text,
"LOADING_LOSS_R1_KLOBS" text,
"LOADING_LOSS_R1_KL15" text,
"LOADING_LOSS_R1_METRIC_TONS" text,
"TRANSPORTATION_LOSS_R2_KLOBS" text,
"TRANSPORTATION_LOSS_R2_KL15" text,
"TRANSPORTATION_LOSS_R2_METRIC_TONS" text,
"DISCHARGE_LOSS_R3_KLOBS" text,
"DISCHARGE_LOSS_R3_KL15" text,
"DISCHARGE_LOSS_R3_METRIC_TONS" text,
"SUPPLY_LOSS_R4_KLOBS" text,
"SUPPLY_LOSS_R4_KL15" text,
"SUPPLY_LOSS_R4_METRIC_TONS" text,
"SF_QUANTITY_METRICTON	" text,
"SF_SHORE_RECEIVED_KLOBS" text,
"SF_SHORE_RECEIVED_KL15" text,
"SF_SHORE_RECEIVED_BBLS" text,
"SF_SHORE_RECEIVED_LONGTON" text,
"SF_SHORE_RECEIVED_METRICTON" text,
"SF_STU" text,
"SF_DENSITY_15C" text,
"SFAL_VS_SF_KLOBS" text,
"SFAL_VS_SF_KL15" text,
"SFAL_VS_SF_BBLS" text,
"SFAL_VS_SF_LONGTON" text,
"SFAL_VS_SF_METRICTON" text,
"SFBD_VS_SR_KLOBS" text,
"SFBD_VS_SR_KL15" text,
"SFBD_VS_SR_BBLS" text,
"SFBD_VS_SR_LONGTON" text,
"SFBD_VS_SR_METRICTON" text,
"SR_VS_BOL_KLOBS" text,
"SR_VS_BOL_KL15" text,
"SR_VS_BOL_BBLS" text,
"SR_VS_BOL_LONGTON" text,
"SR_VS_BOL_METRICTON" text,
"TYPE_LOCATION" text,
"TIME_LOADING_GAS_VESSEL_ARRIVED" text,
"DATE_LOADING_GAS_VESSEL_ARRIVED" text,
"REMARKS_LOADING_GAS_VESSEL_ARRIVED" text,
"TIME_LOADING_GAS_VESSEL_ANCHORAGED" text,
"DATE_LOADING_GAS_VESSEL_ANCHORAGED" text,
"REMARKS_LOADING_GAS_VESSEL_ANCHORAGED" text,
"TIME_LOADING_GAS_NOR_TENDERED" text,
"DATE_LOADING_GAS_NOR_TENDERED" text,
"REMARKS_LOADING_GAS_NOR_TENDERED" text,
"TIME_LOADING_GAS_NOR_ACCEPTED" text,
"DATE_LOADING_GAS_NOR_ACCEPTED" text,
"REMARKS_LOADING_GAS_NOR_ACCEPTED" text,
"TIME_LOADING_GAS_VESSEL_BERTHED" text,
"DATE_LOADING_GAS_VESSEL_BERTHED" text,
"REMARKS_LOADING_GAS_VESSEL_BERTHED" text,
"TIME_LOADING_GAS_SURVEYOR_ON_BOARD" text,
"DATE_LOADING_GAS_SURVEYOR_ON_BOARD" text,
"REMARKS_LOADING_GAS_SURVEYOR_ON_BOARD" text,
"TIME_LOADING_GAS_KEY_MEETING" text,
"DATE_LOADING_GAS_KEY_MEETING" text,
"REMARKS_LOADING_GAS_KEY_MEETING" text,
"TIME_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"DATE_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"REMARKS_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"TIME_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"DATE_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"REMARKS_LOADING_GAS_CONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"TIME_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"DATE_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"REMARKS_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"TIME_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"DATE_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"REMARKS_LOADING_GAS_CONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"TIME_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE" text,
"DATE_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE" text,
"REMARKS_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMMENCE" text,
"TIME_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED" text,
"DATE_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED" text,
"REMARKS_LOADING_GAS_COOL_DOWN_OF_LOADING_ARMS_COMPLETED" text,
"TIME_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION" text,
"DATE_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION" text,
"REMARKS_LOADING_GAS_OPENING_CUSTODY_TRANSFER_INSPECTION" text,
"TIME_LOADING_GAS_COMMENCED_LOADING_OF_CARGO" text,
"DATE_LOADING_GAS_COMMENCED_LOADING_OF_CARGO" text,
"REMARKS_LOADING_GAS_COMMENCED_LOADING_OF_CARGO" text,
"TIME_LOADING_GAS_COMPLETED_LOADING_OF_CARGO" text,
"DATE_LOADING_GAS_COMPLETED_LOADING_OF_CARGO" text,
"REMARKS_LOADING_GAS_COMPLETED_LOADING_OF_CARGO" text,
"TIME_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"DATE_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"REMARKS_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMMENCE" text,
"TIME_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"DATE_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"REMARKS_LOADING_GAS_DISCONNECTION_OF_VAPOR_ARMS_COMPLETED" text,
"TIME_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"DATE_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"REMARKS_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMMENCE" text,
"TIME_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"DATE_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"REMARKS_LOADING_GAS_DISCONNECTION_OF_LIQUID_ARMS_COMPLETED" text,
"TIME_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION" text,
"DATE_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION" text,
"REMARKS_LOADING_GAS_CLOSING_CUSTODY_TRANSFER_INSPECTION" text,
"TIME_LOADING_GAS_DOCUMENTS_ONBOARD" text,
"DATE_LOADING_GAS_DOCUMENTS_ONBOARD" text,
"REMARKS_LOADING_GAS_DOCUMENTS_ONBOARD" text,
"TIME_LOADING_GAS_VESSEL_SAILED" text,
"DATE_LOADING_GAS_VESSEL_SAILED" text,
"REMARKS_LOADING_GAS_VESSEL_SAILED" text,
"GSV_GROSS_VOL" text,
"GSV_NETT_VOL" text,
"GSV_METRIC_TON" text,
"GSV_CALORIE_MMBTU" text,
"GSV_GHV" text,
"DENSITY" text,
"SFBL_TANK_VOLUME_CORRECTED" text,
"SFAL_TANK_VOLUME_CORRECTED" text,
"GAUGING_TYPE_FLOAT_GAUGE" text,
"GROS_STANDARD_VOLUME_LOADED" text,
"NET_STANDARD_VOLUME_LOADED" text,
"THERMAL_EXPANSION_VOLUME_LOADING" text,
"VOLUME_GAS_DURING_LOADING" text,
"ENERGY_GAS_CONSUMED_DURING_LOADING" text,
"QUALITY_SAMPLE_SOURCE" text,
"QUALITY_DATE_OF_ANALISYS" text,
"QUALITY_SAMPLING_METHOD" text,
"ANALYSIS_RESULT_C1" text,
"ANALYSIS_RESULT_C2" text,
"ANALYSIS_RESULT_C3" text,
"ANALYSIS_RESULT_IC4" text,
"ANALYSIS_RESULT_NC4" text,
"ANALYSIS_RESULT_IC5" text,
"ANALYSIS_RESULT_NC5" text,
"ANALYSIS_RESULT_N2" text,
"ANALYSIS_RESULT_TOTAL" text,
"ANALYSIS_RESULT_H2S" text,
"ANALYSIS_RESULT_TOTAL_SULFUR" text,
"VESSEL_ID" text,
"AREA_ID" text,
"PORT_ID" text,
"PRODUCT_ID" text,
"SURVEYOR_ID" text,
"CLIENT_ID" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of FORM_ENTRY_FIELD
-- ----------------------------
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('51', 'Calm', 'IWO/24/04/2018/002', '["LOI\/24\/04\/2018\/001","LOI\/24\/04\/2018\/002"]', '["VOY\/24\/04\/2018\/001","LOI\/24\/04\/2018\/002"]', 'Semarang', '["off","on"]', '["off","off"]', '["off","off"]', '["on","off"]', '["KONTRAK\/24\/04\/2018\/001","KONTRAK\/24\/04\/2018\/002"]', '["HSD","MFO"]', '1970-01-01', '05:00:00', null, null, 'FO/24/04/2018/002', null, '', 'multi_port', '["50","50"]', null, null, null, null, '6', null, null, '00:00:00', '2018-04-24', '04:00:00', null, null, '["Semarang","Makasar"]', '321234', 'multi_client', null, null, null, '00:00:00', null, null, null, 'multi_product', null, null, null, null, '1970-01-01', '', 'yes', 'yes', '04:11:00', null, null, null, '2018-04-24', '', null, null, null, null, '00:00:00', null, null, '1000', '1000', '121002', '121003', null, null, null, '-0.006343262036937747', '0.01890831252229754', '', null, null, '2018-04-24', '03:00:00', '121002', '', 'yes', null, '0.00247320692497939', '00:00:00', null, '1000', '1000', null, null, '1970-01-01', '', '14', null, null, '03:00:00', null, '00:00:00', '121001', '121241', '0.010729164991072434', '123000', null, '2018-04-24', '03:00:00', '', null, null, null, null, '121004', null, '', null, '0.019703156393803874', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '1000', '1000', '00:00:00', '00:00:00', null, null, '1000', null, null, '', '', '', '', '1000', '1000', null, null, '', '', '1000', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-23 11:54:35', null, null, 'admin', null, null, '123400', '123203', '121232', '123234', '134321', '124300', null, '112999', null, null, '124000', null, null, '00:00:00', null, '', '143233', '00:00:00', '123532', null, null, '', '', null, null, '-0.006343262036937747', '0.01890831252229754', '00:00:00', '00:00:00', '0.00247320692497939', '125400', null, null, '', '', '0.010729164991072434', '00:00:00', '00:00:00', '0.019703156393803874', '', '', 'Y', null, null, '["chevron-certification1.jpg"]', '["Indra - SBU AE Migas","Bagos W - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA1.JPG"', '"Sertifikat_HSE1.png"', '"Sertifikat-Prakualifikasi-CSMS1.jpg"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Kelud', '1', '["PLN","Pertamina"]', '122000', '123000', '123400', '122000', '123000', '121000', '121000', '122000', '123000', '121000', '123103', '123303', '123100', '121103', '123203', '123403', '123103', '123103', '124000', '123992', '121023', '125300', '120300', '123234', '121342', '124309', '123432', '121300', '123332', '121231', '124334', '123432', '123300', '123321', '121234', '124343', '123432', '123342', '123433', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["2","1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('52', 'Calm', 'IWO/24/04/2008/003', '["LOI\/24\/04\/2008\/003"]', '["VOY\/24\/04\/2008\/003"]', 'Semarang', '["on"]', '["off"]', '["off"]', '["off"]', '["KONTRAK\/24\/04\/2008\/003"]', '["MFO"]', '2018-04-04', '03:00:00', null, null, 'FO/24/04/2008/003', null, '', 'single_port', '["100"]', null, null, '2018-06-05', null, '6', null, null, '00:00:00', null, '05:00:00', '2018-06-04', null, '["Semarang"]', 'mfo', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-04', '', 'yes', 'yes', '04:00:00', null, null, '2018-06-05', '1970-01-01', '', null, null, null, null, '00:00:00', null, null, '100000', '100000', '92335', '92345', null, null, null, '-0.08190145807360832', '-0.07330069748299614', '', null, '2018-06-05', null, '03:00:00', '94300', '', 'yes', null, '-0.061513631784751034', '00:00:00', null, '100000', '100000', null, null, '2018-04-04', '', '14', null, null, '03:00:00', null, '00:00:00', '92300', '92366', '-0.0744884806602905', '98000', null, null, '02:00:00', '', '2018-06-05', '2018-06-05', '2018-06-05', '2018-06-05', '92334', null, '', null, '-0.07402314779727813', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2018-06-04', '2018-06-05', null, '00:00:00', '100000', '100000', '00:00:00', '00:00:00', null, null, '100000', null, null, '', '', '', '', '100000', '100000', null, null, '', '', '100000', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-06-04 08:48:46', null, null, 'admin', null, null, '92000', '93000', '92334', '92343', '92326', '92332', '2018-06-05', '92342', null, '2018-06-05', '92375', null, null, '00:00:00', '2018-06-05', '', '92373', '00:00:00', '92376', null, null, '', '', '2018-06-05', '2018-06-05', '-0.08190145807360832', '-0.07330069748299614', '00:00:00', '00:00:00', '-0.061513631784751034', '94000', '2018-06-05', '2018-06-05', '', '', '-0.0744884806602905', '00:00:00', '00:00:00', '-0.07402314779727813', '', '', 'Y', null, null, '["chevron-certification2.jpg"]', '["Indra - SBU AE Migas","Iwan - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA2.JPG"', '"Sertifikat_HSE2.png"', '"Sertifikat-Prakualifikasi-CSMS2.jpg"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Gunung Dempo', '1', '["Pertamina"]', '99000', '99500', '99700', '99550', '99890', '98000', '99100', '99800', '99200', '99200', '96000', '96000', '98000', '94000', '95000', '93000', '99000', '93000', '92353', '92365', '92375', '92600', '92324', '92354', '92367', '92335', '92335', '92321', '92332', '92245', '92323', '92363', '92311', '92337', '92342', '92356', '92337', '92327', '92364', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10000', '10000', '10000', '10000', '10000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('53', 'Calm', 'IWO/24/04/2008/004', '["LOI\/24\/04\/2008\/004"]', '["VOY\/24\/04\/2008\/004"]', 'Surabaya', '["on"]', '["off"]', '["off"]', '["off"]', '["KONTRAK\/24\/04\/2008\/004"]', '["HSD"]', '2018-04-26', '04:00:00', null, null, 'FO/24/04/2008/004', null, '', 'single_port', '["100"]', null, null, null, null, '6', null, null, null, '2018-04-25', '03:00:00', null, null, '["Surabaya"]', '125000', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-25', null, 'yes', 'yes', '03:00:00', null, null, null, '2018-04-25', '', null, null, null, null, '00:00:00', null, null, '125000', '125000', null, null, null, null, null, null, null, 'Arrived', null, null, '2018-04-25', '03:00:00', null, '', 'yes', null, null, null, null, '125000', '125000', null, null, '2018-04-25', '', '15', null, '00:00:00', '02:00:00', null, '00:00:00', null, null, null, null, null, '2018-04-24', '03:00:00', null, null, null, null, null, null, '', '', null, null, '00:00:00', null, null, '00:00:00', null, null, null, '00:00:00', '125000', '125000', null, null, null, null, '125000', null, '00:00:00', '', null, null, '', '125000', '125000', null, null, null, null, '125000', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-04-29 17:28:46', null, null, 'admin', null, null, '123212', '124502', null, null, null, null, null, null, null, null, null, '00:00:00', '00:00:00', '00:00:00', null, '', null, '00:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["chevron-certification3.jpg"]', '["Bagos W - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA3.JPG"', '"Sertifikat_HSE3.png"', '"Sertifikat-Prakualifikasi-CSMS3.jpg"', null, '00:00:00', null, '00:00:00', null, '00:00:00', null, null, '00:00:00', '00:00:00', null, null, '00:00:00', null, '00:00:00', null, '00:00:00', null, '00:00:00', '00:00:00', null, null, null, null, '125502', '124502', '124502', '124502', '124502', '123324', '123423', '124323', '123342', '123345', '122324', '123342', '123345', '123234', '124224', '124234', '124323', '123335', '123341', null, '124452', '0.007968000509952033', '-0.06883289339443896', '0.032111933944836225', '-0.0139997695511185', '0.0024129163900179756', '-0.02704084999670032', '-0.07894951938795527', '0.022858671942784396', '0.00115124245003851', '0.009000748051446635', '0.026328894314950765', '0.00937636637463361', '0.0014493692409839516', '0.015618266268694832', '-0.014865063427535878', '0', '-0.06883289339443896', '0.02427491052776473', '0.01675152830760882', '-0.005730518685409218', 'KM Dobonsolo', '0', '["CUSTOMER4"]', '125004', '124004', '120003', '120003', '120005', '124502', '132003', '120504', '123203', '123204', '124502', '125402', '125302', '124502', '123502', '123502', '125302', '122502', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '125502', '123502', '124502', '121502', '123502', '125502', '123502', '125502', '125502', '123502', '123224', '123242', '124234', '123342', '123342', '121224', '122344', '123323', '123345', '124323', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('54', 'Calm', 'IWO/24/04/2008/004', '["LOI\/24\/04\/2008\/005"]', '["VOY\/24\/04\/2008\/004"]', 'Surabaya', 'on', null, null, null, '["KONTRAK\/24\/04\/2008\/005"]', '["HSD"]', '2018-04-25', '05:00:00', null, null, 'FO/24/04/2008/004', null, '', 'single_port', '100', null, null, null, null, '6', null, null, null, '2018-04-25', '01:00:00', null, null, '["Surabaya"]', 'GSSWDS', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-25', null, 'yes', 'yes', '04:00:00', null, null, null, '2018-05-29', '', null, null, null, null, '00:00:00', null, null, '49434', '49434', null, null, null, null, null, null, null, '', null, null, '2018-04-25', '01:00:00', null, '', 'yes', null, null, null, null, '49434', '49434', null, null, '2018-04-23', '', '15', null, '00:00:00', '02:08:00', null, '00:00:00', null, null, null, null, null, '2018-04-25', '02:00:00', null, null, null, null, null, null, '', '', null, null, '00:00:00', null, null, '00:00:00', null, null, null, '00:00:00', '49434', '49434', null, null, null, null, '49434', null, '00:00:00', '', null, null, '', '49434', '49434', null, null, null, null, '49434', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-04-25 01:11:12', null, null, 'admin', null, null, '49532', '49532', null, null, null, null, null, null, null, null, null, '00:00:00', '00:00:00', '00:00:00', null, '', null, '00:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["PENGHARGAAN_PERTAMINA5.JPG"]', '["Indra - SBU AE Migas","Iwan - SBU AE Migas"]', '"chevron-certification5.jpg"', '"Sertifikat_HSE5.png"', '"Sertifikat-Prakualifikasi-CSMS5.jpg"', null, '00:00:00', null, '00:00:00', null, '00:00:00', null, null, '00:00:00', '00:00:00', null, null, '00:00:00', null, '00:00:00', null, '00:00:00', null, '00:00:00', '00:00:00', null, null, null, null, '49534', '49543', '49323', '49512', '49532', '49489', '49423', '49234', '49523', '49523', '49434', '49523', '49553', '49532', '49434', '49323', '49543', '49523', '49544', null, '49234', '0.00026255730818168965', '0.001655428594500747', '0', '-0.0007876878332525448', '-0.00014131707514030767', '-0.0015579790785666592', '-0.004427834423365967', '0', '0.00006054001695120475', '-0.0017794673730612905', '0.0022005975934749253', '0.005815597108355882', '-0.0008285841316034114', '-0.00086849387004908', '0.0011916303118435934', '0.0006460469999192441', '0.0014135131860587213', '-0.0008285841316034114', '-0.0008079012744642604', '-0.0005857165939570205', 'KM Dobonsolo', '0', '["CUSTOMER4"]', '49520', '49542', '49510', '49511', '49522', '49500', '49452', '49523', '49551', '49541', '49543', '49423', '49512', '49522', '49522', '49482', '49511', '49512', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '49513', '49534', '49523', '49512', '49534', '49521', '49523', '49482', '49532', '49543', '49423', '49423', '49523', '49511', '49542', '49423', '49234', '49523', '49554', '49453', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('55', 'Calm', 'IWO/24/04/2008/006', '["LOI\/24\/04\/2008\/006"]', '["VOY\/24\/04\/2008\/006"]', 'Semarang', '["off"]', '["off"]', '["off"]', '["on"]', '["KONTRAK\/24\/04\/2008\/006"]', '["HSD"]', '2018-04-25', '03:00:00', '95225', '95253', 'FO/24/04/2008/006', '95221', '', 'single_port', '["100"]', '95223', '95223', null, '95223', '7', null, '95253', '00:00:00', '2018-04-25', '02:00:00', null, null, '["Tg Emas"]', '95232', 'single_client', '95252', '95263', '94500', '00:00:00', null, null, '95224', 'single_product', '95253', '95253', '00:00:00', '00:00:00', '2018-04-25', '', 'yes', 'yes', '03:00:00', '96000', '95000', null, '2018-04-25', '', '94332', '94132', '95223', '95223', '00:00:00', '95223', '94000', '95232', '95232', '95255', '95253', '', '', '94232', '-0.008159793327242367', '0.0023418711865830734', 'calm', null, null, '2018-04-25', '02:02:00', '95231', '', 'yes', '95253', '0.013154441329931866', '00:00:00', '95000', '95232', '95232', null, null, '2018-04-25', '', '14', '94432', '00:00:00', '03:00:00', null, '00:00:00', '95253', '95251', '0.0026560843228034814', '94234', '96000', '2018-04-25', '02:00:00', '', null, null, null, null, '95223', '', '', '', '-0.008159793327242367', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '95232', '95232', '00:00:00', '00:00:00', null, null, '95232', '00:00:00', '00:00:00', '', '', '', '', '95232', '95232', null, null, '', '', '95232', '-0.008159793327242367', '0.0023418711865830734', '00:00:00', '00:00:00', '', '', '0.013154441329931866', '', '', '0.0026560843228034814', '-0.008159793327242367', '1', '2018-05-23 11:52:17', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["chevron-certification6.jpg"]', '["Bagos W - SBU AE Migas","Indra - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA6.JPG"', '"Sertifikat_HSE6.png"', '"Sertifikat-Prakualifikasi-CSMS6.jpg"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Umsini', '1', '["PLN"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["2"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('56', 'Calm', 'IWO/24/04/2008/007', '["LOI\/24\/04\/2008\/007"]', '["VOY\/24\/04\/2008\/007"]', 'Semarang', '["off"]', '["off"]', '["off"]', '["off"]', '["KONTRAK\/24\/04\/2008\/007"]', '["HSD"]', '2018-04-25', '04:00:00', null, null, 'FO/24/04/2008/007', null, '', 'single_port', '[]', null, null, null, null, '7', null, null, null, '2018-04-24', '02:00:00', '2018-05-23', null, '["Tg Emas"]', '151343', 'single_client', null, null, null, '05:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-25', null, 'yes', 'yes', '02:00:00', '15130', '15220', null, '2018-04-18', '', null, null, null, null, '00:00:00', null, '15130', '151343', '151343', null, null, null, null, null, '90.00224668613794', '89.94204450083596', '', null, null, '2018-04-24', '02:00:00', null, '', 'yes', null, '90.00204848973442', null, '15120', '151343', '151343', null, null, '2018-04-26', '', '15', null, '00:00:00', '03:00:00', null, '00:00:00', null, null, '90.00944873565345', null, '15130', '2018-04-26', '02:00:00', null, null, null, null, null, null, '', '', null, '90.00151992757215', '00:00:00', null, null, '00:00:00', null, null, null, '00:00:00', '151343', '151343', null, null, null, null, '151343', null, '00:00:00', '', null, null, '', '151343', '151343', null, null, null, null, '151343', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-05-22 14:56:46', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '00:00:00', '00:00:00', null, '', null, '00:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["PENGHARGAAN_PERTAMINA7.JPG"]', '["Iwan - SBU AE Migas","Indra - SBU AE Migas"]', '"Sertifikat_HSE7.png"', '"Sertifikat-Prakualifikasi-CSMS7.jpg"', '"Sertifikat_HSE8.png"', null, '00:00:00', null, '00:00:00', null, '00:00:00', null, null, '00:00:00', '00:00:00', null, null, '00:00:00', null, '00:00:00', null, '00:00:00', null, '00:00:00', '00:00:00', '151343', '151343', '151343', '151343', null, null, null, null, null, '151311', '151310', '151334', '151341', '151311', '151331', '151352', '151323', '151323', '151312', '151343', '151323', '151343', '151334', '151343', '151311', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Kelud', '0', '["CUSTOMER7"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, '151331', '151323', '151334', '151343', '151323', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '151311', '151331', '151311', '151310', '151312', '151310', '151341', '-0.007929637681638263', '-0.021148495482813542', '0.019160632168719275', '-0.007269218823311724', '-0.013216761496930405', '-0.013217809676758464', '0.013216062802730438', '-0.027096509837354853', '-0.008591633071178375', '-0.007269747277149201', '90.00072697953222', '89.94257620712214', '90.00072697953222', '90.00726984336792', '90.00079306333933', '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '["12"]', '[]', '[]', '[]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('57', 'Calm', 'IWO/24/04/2008/007 	', '["LOI\/24\/04\/2008\/007"]', '["VOY\/24\/04\/2008\/007"]', 'Makasar', '["on"]', '["off"]', '["off"]', '["off"]', '["KONTRAK\/24\/04\/2008\/007"]', '["MFO"]', '2018-04-27', '04:00:00', '124353', '124353', 'FO/24/04/2008/007 	', '124315', 'Rainy', 'single_port', '["100"]', '124311', '124323', null, '124323', '7', null, '124323', '00:00:00', '2018-04-25', '03:00:00', null, null, '["Makasar"]', '125000', 'single_client', '124353', '124325', '123000', '00:00:00', null, null, '124324', 'single_product', '124342', '124354', '00:00:00', '00:00:00', '2018-04-26', '', 'yes', 'yes', '03:00:00', '125000', '125000', null, '2018-04-25', '', '123400', '122320', '124343', '124342', '00:00:00', '124353', '125000', '124300', '124300', '124323', '124356', '', '', '123000', '-0.00554255053856859', '-0.005445492788944926', '', null, null, '2018-04-25', '03:00:00', '124321', 'Cloudy', 'yes', '124354', '-0.005445492788944926', '00:00:00', '125000', '124300', '124300', null, null, '2018-04-25', '', '14', '123240', '00:00:00', '02:00:00', null, '00:00:00', '124312', '124321', '-0.005194846969136497', '125000', '125000', '2018-04-25', '02:00:00', '', null, null, null, null, '124323', '', 'Cloudy', '', '-0.005291856331730228', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '124300', '124300', '00:00:00', '00:00:00', null, null, '124300', '00:00:00', '00:00:00', '', '', '', '', '124300', '124300', null, null, '', '', '124300', '-0.00554255053856859', '-0.005445492788944926', '00:00:00', '00:00:00', '', '', '-0.005445492788944926', '', '', '-0.005194846969136497', '-0.005291856331730228', '1', '2018-04-29 17:24:19', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["20170430-0001.jpg"]', '["Bagos W - SBU AE Migas","Indra - SBU AE Migas","Iwan - SBU AE Migas"]', '"chevron-certification7.jpg"', '"PENGHARGAAN_PERTAMINA8.JPG"', '"Sertifikat-Prakualifikasi-CSMS8.jpg"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dobonsolo', '0', '["CUSTOMER7"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('58', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Balikpapan', '["off"]', '["off"]', '["off"]', '["on"]', '["KONTRAK\/24\/04\/2008\/010"]', '["MHO"]', '2018-04-26', '03:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '["100"]', null, null, null, null, '6', null, null, '00:00:00', '2018-04-27', '00:00:00', '2018-04-26', null, '["Balikpapan"]', 'Premium', 'single_client', null, null, null, '04:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-26', '', 'yes', 'yes', '03:00:00', null, null, null, '2018-04-26', '', null, null, null, null, '00:00:00', null, null, '123000', '123000', '123002', '123002', null, null, null, '0.9016292153100712', '0.9008162336184189', '', null, null, '2018-04-26', '02:00:00', '123001', '', 'yes', null, '0.000008129750823137272', '00:00:00', null, '123000', '123000', null, null, '2018-04-26', '', '14', null, null, '03:00:00', null, '00:00:00', '123002', '123003', '0.9000040648754115', '123000', null, '2018-04-26', '02:00:00', '', null, null, null, null, '123004', null, '', null, '0.899189450663805', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '123000', '123000', '00:00:00', '00:00:00', null, null, '123000', null, null, '', '', '', '', '123000', '123000', null, null, '', '', '123000', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-13 21:34:28', null, null, 'admin', null, null, '123003', '123003', '123002', '123002', '123002', '123002', null, '123004', null, null, '123002', null, null, '00:00:00', null, '', '123002', '00:00:00', '123005', null, null, '', '', null, null, '0.9016292153100712', '0.9008162336184189', '00:00:00', '00:00:00', '0.000008129750823137272', '123003', null, null, '', '', '0.9000040648754115', '00:00:00', '00:00:00', '0.899189450663805', '', '', 'Y', null, null, '["chevron-certification8.jpg"]', '["Indra - SBU AE Migas","Bagos W - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA9.JPG"', '"Sertifikat-Prakualifikasi-CSMS9.jpg"', '"Sertifikat_HSE9.png"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dobonsolo', '0', '["Pelni"]', '124000', '123003', '123000', '123320', '12301', '123004', '12200', '12100', '12300', '12400', '123002', '123004', '123002', '123001', '123004', '123005', '123002', '123006', '123002', '123004', '123003', '123004', '123004', '123003', '123003', '123003', '123005', '123005', '123004', '123004', '123005', '123003', '123003', '123003', '123002', '123004', '123005', '123002', '123003', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('59', 'No Condition', 'IWO/001', '["LOI\/001","LOI\/002"]', '["VOYAGE\/001","VOY\/002"]', 'TANJUNG PRIUK', '["on"]', '["on"]', null, null, '["KONTRAK\/001","CLIENT002"]', '["HSO"]', '2018-04-18', '00:00:00', null, null, 'FO/001', null, 'test 3', 'single_port', '["50","50"]', null, null, '2018-05-16', null, '6', null, null, '00:00:00', '2018-04-18', '00:00:00', '2018-05-16', null, '[""]', '110', 'multi_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-17', '', 'no', 'no', '00:00:00', null, null, '2018-05-16', '2018-04-20', '', null, null, null, null, '00:00:00', null, null, '320', '102', '567', '543', null, null, null, '-5.954545454545454', '-5.867256637168142', '', null, null, '2018-04-16', '00:00:00', '421', 'test 2', 'no', null, '-1.1849710982658959', '00:00:00', null, '100', '320', null, null, '2018-04-16', '', '14', null, null, '00:00:00', null, '00:00:00', '421', '320', '0.2013888888888889', '765', null, '2018-04-20', '00:00:00', '', null, '2018-05-15', null, '2018-05-15', '654', null, 'test 1', null, '-3.022421524663677', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '200', '100', '00:00:00', '00:00:00', null, null, '200', null, null, '', '', '', '', '320', '210', null, null, '', '', '403', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-06 01:02:46', null, null, 'admin', null, null, '65645', '432', '654', '344', '463', '230', null, '563', null, '2018-05-08', '876', null, null, '00:00:00', '2018-05-07', '', '432', '00:00:00', '112', null, null, '', '', '2018-05-23', '2018-05-14', '-5.954545454545454', '-5.867256637168142', '00:00:00', '00:00:00', '-1.1849710982658959', '410', null, null, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', null, null, null, '["Iwan - SBU AE Migas","Bagos W - SBU AE Migas"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'PELNI001', '0', '["Pelni","Pertamina"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '76', '46', '31', '53', '53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('61', 'Calm', 'asdada', '["xxxxxxxxx"]', '["xxxxxxxxx"]', 'Balikpapan', '["on"]', '["off"]', '["off"]', '["off"]', '["xxxxxxx"]', '["LNG"]', null, null, null, null, 'asdg', null, null, 'single_port', '["100"]', null, null, null, null, '9', null, null, null, '2018-05-02', '03:00:00', null, null, '["Bontang"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '1000', '1000', null, null, null, null, null, null, null, '', null, null, '2018-05-01', '02:00:00', null, null, 'no', null, null, null, null, '1000', '1000', null, null, null, null, '14', null, null, null, null, '00:00:00', null, null, null, null, null, '2018-05-02', '02:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '1000', '1000', null, null, null, null, '800', null, null, null, null, null, null, '1000', '1000', null, null, null, null, '900', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-13 11:41:53', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, '["Tugiman - SBU Batubara","Indra - SBU AE Migas"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Nirbita', '0', '["Pertagas"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', '1:00', '13/05/2018', 'test', '2:00', '10/05/2018', 'test', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '', '', '', '', '', '', '', '', 'float_gauge', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('62', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Ambon', 'on', null, null, null, '["K0001\/03\/2017\/SUC"]', '[""]', null, null, null, null, 'FO/24/04/2008/010', null, null, 'single_port', '100', null, null, null, null, '9', null, null, null, '2018-05-29', '01:00:00', null, null, '["Ambon"]', null, 'single_client', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, '', null, null, '2018-05-28', '01:00:00', null, null, 'no', null, null, null, null, '', '', null, null, null, null, '14', null, null, null, null, '00:00:00', null, null, null, null, null, '2018-05-28', '07:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-12 17:41:36', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, '["Bagos W - SBU AE Migas","Tugiman - SBU Batubara"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Umsini', '0', '["Pelni"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '23456', '23456', '23456', '23456', '23456', '3456', '2333456', '233456', 'float_gauge', '3456', '3456', '3456', '4444', '4444', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('63', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Balikpapan', '["off"]', '["off"]', '["off"]', '["on"]', '["KONTRAK\/24\/04\/2008\/010"]', '["MHO"]', '2018-04-26', '03:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '["100"]', null, null, null, null, '6', null, null, '00:00:00', '2018-04-27', '00:00:00', '2018-04-26', null, '["Balikpapan"]', 'Premium', 'single_client', null, null, null, '04:00:00', null, null, null, 'single_product', null, null, null, null, '2018-04-26', '', 'yes', 'yes', '03:00:00', null, null, null, '2018-04-26', '', null, null, null, null, '00:00:00', null, null, '123000', '123000', '123002', '123002', null, null, null, '0.9016292153100712', '0.9008162336184189', '', null, null, '2018-04-26', '02:00:00', '123001', '', 'yes', null, '0.000008129750823137272', '00:00:00', null, '123000', '123000', null, null, '2018-04-26', '', '14', null, null, '03:00:00', null, '00:00:00', '123002', '123003', '0.9000040648754115', '123000', null, '2018-04-26', '02:00:00', '', null, null, null, null, '123004', null, '', null, '0.899189450663805', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '123000', '123000', '00:00:00', '00:00:00', null, null, '123000', null, null, '', '', '', '', '123000', '123000', null, null, '', '', '123000', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-13 21:34:28', null, null, 'admin', null, null, '123003', '123003', '123002', '123002', '123002', '123002', null, '123004', null, null, '123002', null, null, '00:00:00', null, '', '123002', '00:00:00', '123005', null, null, '', '', null, null, '0.9016292153100712', '0.9008162336184189', '00:00:00', '00:00:00', '0.000008129750823137272', '123003', null, null, '', '', '0.9000040648754115', '00:00:00', '00:00:00', '0.899189450663805', '', '', 'Y', null, null, '["chevron-certification8.jpg"]', '["Indra - SBU AE Migas","Bagos W - SBU AE Migas"]', '"PENGHARGAAN_PERTAMINA9.JPG"', '"Sertifikat-Prakualifikasi-CSMS9.jpg"', '"Sertifikat_HSE9.png"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dobonsolo', '0', '["PLN"]', '124000', '123003', '123000', '123320', '12301', '123004', '12200', '12100', '12300', '12400', '123002', '123004', '123002', '123001', '123004', '123005', '123002', '123006', '123002', '123004', '123003', '123004', '123004', '123003', '123003', '123003', '123005', '123005', '123004', '123004', '123005', '123003', '123003', '123003', '123002', '123004', '123005', '123002', '123003', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('65', 'No Condition', 'IWO/001', '["23.5\/SPK\/01\/2018"]', '[]', 'Makasar', '["on"]', 'on', null, null, '["245\/PELNI\/2017.9"]', '["HSD"]', '2018-05-18', '04:00:00', null, null, '245/PELNI/2017.9', null, '', 'single_port', '100', null, null, '2018-05-16', null, '6', 'single_cargo', null, '06:00:00', '2018-05-18', '05:00:00', '2018-05-16', null, '["Soekarno Hatta"]', '110', 'single_client', null, null, null, '05:00:00', null, null, null, 'single_product', null, null, null, null, '2018-05-17', '', 'no', 'no', '03:00:00', null, null, '2018-05-16', '2018-04-20', '', null, null, null, null, '05:00:00', null, null, '320', '102', '567', '543', null, null, null, '-5.954545454545454', '-5.867256637168142', '', null, null, '2018-05-16', '02:00:00', '421', '', 'no', null, '-1.1849710982658959', '00:00:00', null, '100', '320', null, null, '2018-05-16', '', '14', null, null, '02:00:00', null, '00:00:00', '421', '320', '0.2013888888888889', '765', null, '2018-05-17', '02:00:00', '', null, '2018-05-15', null, '2018-05-15', '654', null, '', null, '-3.022421524663677', '00:00:00', '21:00:00', '00:00:00', '08:00:00', null, null, null, '00:00:00', '200', '100', '00:00:00', '00:00:00', null, null, '200', null, null, '', '', '', '', '320', '210', null, null, '', '', '403', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-21 05:49:24', null, null, 'admin', null, null, '65645', '432', '654', '344', '463', '230', null, '563', null, '2018-05-08', '876', null, null, '22:00:00', '2018-05-07', '', '432', '21:00:00', '112', null, null, '', '', '2018-05-23', '2018-05-14', '-5.954545454545454', '-5.867256637168142', '19:00:00', '19:00:00', '-1.1849710982658959', '410', null, null, '', '', '0.2013888888888889', '00:00:00', '00:00:00', '-3.022421524663677', '', '', 'Y', null, null, null, '["adbul"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM. Bukit Siguntang', '0', '["PLN"]', '34', '4523', '233', '665', '7856', '756', '776', '765', '345', '897', '754', '654', '765', '345', '643', '563', '123', '190', '567', '765', '678', '786', '321', '543', '542', '432', '120', '346', '113', '110', '432', '223', '543', '456', '123', '654', '110', '230', '234', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '76', '46', '31', '53', '53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '4d48001b-3e6e-498c-8bc4-b6cd92e2ac8d', '["14"]', '["20"]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('66', 'keadaan baik', '', '["23.5\/SPK\/01\/2018"]', '[]', 'Makasar', null, 'on', null, null, '["245\/PELNI\/2017.9"]', '["HSD"]', null, null, null, null, '245/PELNI/2017.9', null, null, 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-02', '18:00:00', null, null, '["Soekarno Hatta"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, 'bunker dengan pipa', null, null, '2018-05-01', '09:00:00', null, null, 'no', null, null, null, null, '', '', null, '2018-05-01', null, null, '21', null, '13:00:00', null, null, '00:00:00', null, null, null, null, null, '2018-05-01', '17:00:00', null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-21 07:08:18', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["Muhammad Ridwan"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM. Lambelu', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3:00', '01/05/2018', '', '6:00', '01/05/2018', '', '7:00', '01/05/2018', '', '8:00', '01/05/2018', '', '9:00', '01/05/2018', '', '10:00', '01/05/2018', '', '11:00', '01/05/2018', '', '13:00', '01/05/2018', '', '14:00', '01/05/2018', '', '15:00', '01/05/2018', '', '16:00', '01/05/2018', '', '17:00', '01/05/2018', '', '18:00', '01/05/2018', '', '19:00', '01/05/2018', '', '20:00', '01/05/2018', '', '21:00', '01/05/2018', '', '22:00', '01/05/2018', '', '23:00', '01/05/2018', '', '22:00', '01/05/2018', '', '21:00', '01/05/2018', '', '22:00', '01/05/2018', '', '10:00', '01/05/2018', '', '9:00', '01/05/2018', '', '18:00', '01/05/2018', '', '19:00', '01/05/2018', '', '19:00', '01/05/2018', '', '20:00', '01/05/2018', '', '19:00', '01/05/2018', '', '290.000', '286.013', '', '290.000', '286.013', '', '290.000', '286.013', '', '', '', '', '', '', '289.950', '285.963', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('67', 'calm', '', '["23.5\/SPK\/01\/2018"]', '[]', 'Makasar', null, 'on', null, null, '["245\/PELNI\/2017.9"]', '["HSD"]', null, null, null, null, '245/PELNI/2017.9', null, null, 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-02', '03:00:00', null, null, '["Soekarno Hatta"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, '', null, null, '2018-05-02', '02:00:00', null, null, 'no', null, null, null, null, '', '', null, '2018-05-02', null, null, '21', null, '05:00:00', null, null, '00:00:00', null, null, null, null, null, '2018-05-02', '03:00:00', null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-21 07:07:51', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["Muhammad Ridwan"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM. Binaiya', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1:00', '02/05/2018', '', '2:00', '02/05/2018', '', '3:00', '02/05/2018', '', '3:00', '02/05/2018', '', '4:00', '02/05/2018', '', '5:00', '02/05/2018', '', '6:00', '02/05/2018', '', '8:00', '02/05/2018', '', '9:00', '02/05/2018', '', '10:00', '02/05/2018', '', '11:00', '02/05/2018', '', '12:00', '02/05/2018', '', '13:00', '02/05/2018', '', '14:00', '02/05/2018', '', '15:00', '02/05/2018', '', '7:00', '02/05/2018', '', '4:00', '02/05/2018', '', '2:00', '02/05/2018', '', '16:00', '02/05/2018', '', '17:00', '02/05/2018', '', '18:00', '02/05/2018', '', '19:00', '02/05/2018', '', '20:00', '02/05/2018', '', '20:00', '02/05/2018', '', '21:00', '02/05/2018', '', '21:00', '02/05/2018', '', '22:00', '02/05/2018', '', '23:00', '02/05/2018', '', '161.000', '157.787', '', '161.000', '157.787', '', '161.000', '157.787', '', '', '', '', '', '', '160.940', '158.727', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('68', '', '9/PELNI/2018', '["SPK\/34355\/44"]', '["VOY\/342\/433"]', 'Makasar', 'on', 'on', null, 'on', '["342T\/pelni\/34233"]', '["HSD"]', null, null, null, null, '245/PELNI/2017.9', null, null, 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-03', '04:00:00', null, null, '["Soekarno Hatta"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, '', null, null, '2018-05-03', '03:00:00', null, null, 'no', null, null, null, null, '', '', null, '2018-05-03', null, null, '21', null, '03:00:00', null, null, '00:00:00', null, null, null, null, null, '2018-05-03', '04:00:00', null, null, null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-06-25 03:14:07', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["Muhammad cab makassar"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Bukit Siguntang', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3:00', '03/05/2018', '', '4:00', '03/05/2018', '', '20:00', '03/05/2018', '', '21:00', '03/05/2018', '', '19:00', '03/05/2018', '', '19:00', '03/05/2018', '', '19:00', '03/05/2018', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '21:00', '03/05/2018', '', '21:00', '03/05/2018', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '3:00', '03/05/2018', '', '21:00', '03/05/2018', '', '0:00', '', '', '20:00', '03/05/2018', '', '20:00', '03/05/2018', '', '21:00', '03/05/2018', '', '0:00', '', '', '465.000', '460.093', '', '465.000', '460.093', '', '465.000', '460.093', '', '465.000', '465.000', '460.093', '', '465.000', '464.750', '459.846', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('69', '', '245/PELNI/2017.9', '["23.5\/SPK\/01\/2018"]', '[]', 'Jakarta', '["on"]', '["off"]', '["off"]', '["off"]', '["245\/PELNI\/2017.9"]', '["HSD"]', null, null, null, null, '245/PELNI/2017.9', null, null, 'single_port', '[]', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-04', '03:00:00', null, null, '["Tg Priok"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, '', null, null, '2018-05-04', '02:00:00', null, null, 'no', null, null, null, null, '', '', null, null, null, null, '25', null, null, null, null, '00:00:00', null, null, null, null, null, '2018-05-04', '04:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-27 22:13:26', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["Fajar"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Umsini', '0', '["Pelni"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2:00', '04/05/2018', '', '3:00', '04/05/2018', '', '4:00', '04/05/2018', '', '5:00', '04/05/2018', '', null, null, null, '4:00', '04/05/2018', '', null, null, null, '4:00', '04/05/2018', '', '4:00', '04/05/2018', '', '4:00', '04/05/2018', '', '2:00', '16/05/2018', '', null, null, null, '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', null, null, null, '0:00', '', '', '0:00', '', '', null, null, null, '0:00', '', '', '0:00', '', '', '0:00', '', '', null, null, null, '0:00', '', '', null, null, null, '0:00', '', '', '0:00', '', '', '460.000', '454.348', '', '460.000', '454.348', '', '460.000', '454.348', '', '460.000', '460.000', '454.348', '', '', null, null, null, '3:00', '04/05/2018', '', '3:00', '04/05/2018', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '463.727', '458.029', '', '463.491', '457.796', '', ' 463.727 ', ' 458.029 ', '', ' 463.727 ', ' 458.029 ', '', ' 463.727 ', ' 458.029 ', '', ' 463.727 ', ' 458.029 ', '', ' 460.010 ', ' 454.357 ', '', ' 460.010 ', ' 454.357 ', '', ' 460.010 ', ' 454.357 ', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["3"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('70', 'calm', '', '["23.5\/SPK\/01\/2018"]', '[]', 'Jakarta', null, 'on', null, null, '["245\/PELNI\/2017.9"]', '["HSD"]', null, null, null, null, '245/PELNI/2017.9', null, null, 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-05', '17:00:00', null, null, '["Tg Priok"]', null, 'single_client', null, null, null, null, null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, null, null, null, null, null, '', null, null, '2018-05-05', '04:00:00', null, null, 'no', null, null, null, null, '', '', null, null, null, null, '25', null, null, null, null, '00:00:00', null, null, null, null, null, '2018-05-05', '12:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '', '', null, null, null, null, '', null, null, null, null, null, null, '', '', null, null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-21 07:19:32', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["qaisar"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Gunung Dempo', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2:00', '05/05/2018', '', '4:00', '05/05/2018', '', '6:00', '05/05/2018', '', '7:00', '05/05/2018', '', null, null, null, '8:00', '05/05/2018', '', null, null, null, '23:00', '05/05/2018', '', '22:00', '05/05/2018', '', '0:00', '05/05/2018', '', '0:00', '', '', null, null, null, '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', null, null, null, '0:00', '', '', '4:00', '05/05/2018', '', null, null, null, '3:00', '05/05/2018', '', '4:00', '05/05/2018', '', '4:00', '05/05/2018', '', null, null, null, '20:00', '05/05/2018', '', null, null, null, '18:00', '05/05/2018', '', '22:00', '05/05/2018', '', ' 545.000 ', ' 537.826 ', '', ' 545.000 ', ' 537.826 ', '', ' 545.000 ', ' 537.826', '', ' 545.000 ', ' 545.000 ', ' 537.826', '', ' 545.000 ', null, null, null, '6:00', '05/05/2018', '', '1:00', '05/05/2018', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '0:00', '', '', '3:00', '05/05/2018', '', '3:00', '05/05/2018', '', '20:00', '05/05/2018', '', '20:00', '05/05/2018', '', ' 555.313 ', ' 548.003 ', '', ' 555.128 ', ' 547.820 ', '', ' 555.128 ', ' 547.820 ', '', ' 10.260 ', ' 10.125 ', '', ' 10.260 ', ' 10.125 ', '', ' 555.128 ', ' 547.820 ', '', ' 545.050 ', ' 537.875 ', '', ' 545.050 ', ' 537.875 ', '', ' 545.050 ', ' 537.875 ', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('71', 'calm', 'qwerty', '["23.5\/SPK\/01\/2018"]', '[]', 'Riau', 'on', 'on', null, null, '["245\/PELNI\/2017.9"]', '["Solar"]', '2018-05-01', '02:00:00', '768888', '600000', 'qwerty', '600000', '', 'single_port', '100', ' 141.558,023 ', ' 22.494,521 ', '2018-05-01', '7658888', '7', 'single_cargo', ' 22.951,407 ', '03:00:00', '2018-05-01', '00:00:00', '2018-05-01', null, '["RU II Dumai"]', '13', 'single_client', ' 141,558,023 ', ' 22,494,521 ', '13  11', '02:00:00', '2018-05-01', '2018-05-01', '87666666', 'single_product', ' 22,951,407 ', ' 18.198,068 ', '06:00:00', '07:00:00', '2018-05-01', '', 'yes', 'yes', '00:00:00', ' 184.192.595 ', ' 29.269.441 ', '2018-05-01', '2018-05-01', '', ' 140.763,378 ', ' 22.368,246 ', ' 18,9098,068 ', ' 18.490,421 ', '05:00:00', '0,99', ' 29.663,.16 ', '2000', '2000', '566665', '789989', '', '', ' 22.651,102 ', 'NaN', 'NaN', 'Loading Completed', null, '2018-05-01', '2018-05-01', '13:00:00', '67777', '', 'yes', ' 18,490,421 ', 'NaN', '23:00:00', ' 24.159.626 ', '2000', '2000', null, '2018-05-01', '2018-05-01', '', '14', ' 18.067,864 ', '16:00:00', '00:00:00', null, '00:00:00', '6665656', '0,99', 'NaN', '0,7611', ' 24.546.594 ', '2018-05-01', '15:00:00', '', '2018-05-01', '2018-05-01', '2018-05-01', '2018-05-01', '67665545', '', '', '', 'NaN', '21:00:00', '13:00:00', '15:00:00', '04:00:00', '2018-05-01', '2018-05-01', null, '00:00:00', '3000', '3000', '17:00:00', '18:00:00', '2018-05-01', '2018-05-01', '1,19', '10:00:00', '11:00:00', '', '', '', '', '3000', '3000', '2018-05-01', '2018-05-01', '', '', '1,19', 'NaN', 'NaN', '19:00:00', '20:00:00', '', '', 'NaN', '', '', 'NaN', 'NaN', '1', '2018-05-30 00:43:00', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["gundar.jpg"]', '["Lukmanur Hakim - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Atlantic Point', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["1","Pertamina"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('72', 'calm', 'qwert', '["qweert"]', '["qwert"]', 'Medan', 'on', null, null, null, '["qweert"]', '["Premium"]', '2018-05-01', '00:00:00', '0', '0', 'qwert', '0', '', 'single_port', '100', '141558.023', '22494.521', '2018-05-01', '0', '7', 'single_cargo', '22951.407', '00:00:00', '2018-05-01', '04:00:00', '2018-05-01', null, '["Belawan"]', '13', 'single_client', '141558.023', '22494.521', '13', '00:00:00', '2018-05-01', '2018-05-01', '0', 'single_product', '22951.407', '18198.068', '00:00:00', '00:00:00', '2018-05-01', '', 'no', 'no', '00:00:00', '1841925.95', '292694.41', '2018-05-01', '2018-05-15', '', '140763.378', '223682.46', '18198.068', '18490.421', '00:00:00', '2456', '296631.16', '1000', '1000', '0', '0', '', '', '22651.102', '-12.011808945650506', '-12.011808964502954', '', null, '2018-05-01', '2018-05-01', '00:00:00', '0', '', 'no', '18490.421', '-11.92431265760744', '00:00:00', '24159.626', '1000', '1000', null, '2018-05-01', '2018-05-01', '', '14', '18.067.864', '00:00:00', '00:00:00', null, '00:00:00', '0', '1235', '-0.32759290711519495', '0.7611', '24546.594', '2018-05-01', '00:00:00', '', '2018-05-01', '2018-05-01', '2018-05-01', '2018-05-01', '0', '', '', '12334', '-0.32753029257689714', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '2018-05-01', '2018-05-01', null, '00:00:00', '1000', '1000', '00:00:00', '00:00:00', '2018-05-01', '2018-05-01', '1,19', '00:00:00', '00:00:00', '', '', '', '', '1000', '1000', '2018-05-01', '2018-05-01', '', '', '1,19', '-12.011808945650506', '-12.011808964502954', '00:00:00', '00:00:00', '', '', '-11.92431265760744', '', '', '-0.32759290711519495', '-0.32753029257689714', '1', '2018-05-23 11:09:27', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Madonasun', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["2","PLN"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('73', 'CALM', 'xxxx', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Ambon', 'on', 'on', null, 'on', '["K0001\/03\/2017\/SUC"]', '["MFO"]', '2018-05-15', '02:00:00', '3000', '3000', 'xxxx', '3000', '', 'single_port', '100', '200', '2000', '2018-05-15', '3000', '7', 'single_cargo', '2000', '04:00:00', '2018-05-30', '05:00:00', '2018-05-15', null, '["Ambon"]', '13', 'single_client', '4000', '4000', '13', '03:00:00', '2018-05-15', '2018-05-15', '3000', 'single_product', '4000', '200', '07:00:00', '08:00:00', '2018-05-15', '', 'no', 'no', '01:00:00', '1000.90', '1000.90', '2018-05-15', '2018-05-16', '', '12000', '12000', '4000', '200', '06:00:00', '300', '1000.90', '21000', '12000', '2000', '2000', '', '', '12000', '-4.0045', '0.49955', 'loading complete', null, '2018-05-15', '2018-05-28', '02:00:00', '2000', '', 'no', '4000', '0.49955', '20:00:00', '1000.90', '12000', '12000', null, '2018-05-15', '2018-05-15', '', '14', '12000', '14:00:00', '00:00:00', null, '00:00:00', '2000', '300', '-4.0045', '12000', '1000.90', '2018-05-29', '02:00:00', '', '2018-05-15', '2018-05-15', '2018-05-15', '2018-05-15', '2000', '', '', '', '-4.0045', '19:00:00', '11:00:00', '12:00:00', '05:00:00', '2018-05-15', '2018-05-15', null, '00:00:00', '3000', '3000', '15:00:00', '16:00:00', '2018-05-15', '2018-05-15', '1.19', '09:00:00', '10:00:00', '', '', '', '', '3000', '3000', '2018-05-15', '2018-05-15', '', '', '1.19', '-4.0045', '0.49955', '17:00:00', '18:00:00', '', '', '0.49955', '', '', '-4.0045', '-4.0045', '1', '2018-05-23 11:50:36', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '""', '["Indra - SBU AE Migas"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dorolonda', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["2","PLN"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('74', 'Calm', 'PLN/001', '["PLN\/01"]', '["PLN\/01"]', 'Jakarta', 'on', null, null, 'on', '["PLN\/01"]', '["HSD"]', null, '00:00:00', null, null, 'PLN/001', null, '', 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, '00:00:00', '2018-05-22', '00:00:00', null, null, '["Tanjung Priuk"]', 'Premium', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, null, '', 'no', 'no', '00:00:00', null, null, null, '2018-05-09', '', null, null, null, null, '00:00:00', null, null, '1000', '1000', '2000', '2000', null, null, null, '0.9188644271731', '0.9194335143572566', '', null, null, '2018-05-23', '02:00:00', '2000', '', 'no', null, '0.9203284419332547', '00:00:00', null, '1000', '1000', null, null, null, '', '14', null, null, '00:00:00', null, '00:00:00', '2000', '300', '0.9193528718344782', '12000', null, '2018-05-24', '00:00:00', '', null, null, null, null, '2000', null, '', null, '0.9193515605310439', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '3000', '3000', '00:00:00', '00:00:00', null, null, '800', null, null, '', '', '', '', '3000', '3000', null, null, '', '', '900', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-23 14:39:04', null, null, 'admin', null, null, '12000', '9300', '9233', '9234', '9232', '345', null, '9234', null, null, '9237', null, null, '00:00:00', null, '', '235', '00:00:00', '9237', null, null, '', '', null, null, '0.9188644271731', '0.9194335143572566', '00:00:00', '00:00:00', '0.9203284419332547', '213', null, null, '', '', '0.9193528718344782', '00:00:00', '00:00:00', '0.9193515605310439', '', '', 'Y', null, null, null, '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)","Lukmanur Hakim - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Tatamailau', '0', null, '9900', '9950', '9970', '9955', '9989', '9800', '9910', '9980', '9920', '9920', '12000', '12000', '12000', '12000', '9500', '9300', '9900', '9300', '9235', '9236', '9237', '9260', '9232', '9235', '9236', '9233', '9233', '123005', '123004', '123004', '123005', '123003', '321', '334', '454', '553', '432', '234', '213', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '12000', '12000', '12000', '12000', '12000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["PLN"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('75', '', 'PLN/001', '["PLN\/001"]', '["PLN\/001"]', 'Jakarta', 'on', null, null, null, '["PLN\/001"]', '["HSD"]', null, '00:00:00', null, null, 'PLN/001', null, '', 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, '00:00:00', '2018-05-22', '00:00:00', null, null, '["Tanjung Priuk"]', '', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, null, '', null, null, '00:00:00', null, null, null, null, '', null, null, null, null, '00:00:00', null, null, '', '', '', '', null, null, null, '', '', '', null, null, '2018-05-23', '02:00:00', '', '', null, null, '', '00:00:00', null, '', '', null, null, null, '', '14', null, null, '00:00:00', null, '00:00:00', '', '', '', '', null, '2018-05-24', '00:00:00', '', null, null, null, null, '', null, '', null, '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '', '', '00:00:00', '00:00:00', null, null, '', null, null, '', '', '', '', '', '', null, null, '', '', '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-23 13:25:24', null, null, 'admin', null, null, '', '', '', '', '', '', null, '', null, null, '', null, null, '00:00:00', null, '', '', '00:00:00', '', null, null, '', '', null, null, '', '', '00:00:00', '00:00:00', '', '', null, null, '', '', '', '00:00:00', '00:00:00', '', '', '', null, null, null, null, '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)","Lukmanur Hakim - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Tatamailau', '0', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', 'dc609703-c7b8-47b7-8797-170e39bb3020', '[""]', '["20"]', '["9",""]', '["","PLN"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('76', '', 'PLN', '["PLN"]', '["PLN"]', '', 'on', null, null, null, '["PLN"]', '[""]', null, '00:00:00', null, null, 'PLN', null, '', null, '100', null, null, null, null, '6', null, null, '00:00:00', null, '00:00:00', null, null, null, '', 'single_client', null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, '', null, null, '00:00:00', null, null, null, null, '', null, null, null, null, '00:00:00', null, null, '', '', '', '', null, null, null, '', '', '', null, null, null, '00:00:00', '', '', null, null, '', '00:00:00', null, '', '', null, null, null, '', '14', null, null, '00:00:00', null, '00:00:00', '', '', '', '', null, null, '00:00:00', '', null, null, null, null, '', null, '', null, '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '', '', '00:00:00', '00:00:00', null, null, '', null, null, '', '', '', '', '', '', null, null, '', '', '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-23 13:31:31', null, null, 'admin', null, null, '', '', '', '', '', '', null, '', null, null, '', null, null, '00:00:00', null, '', '', '00:00:00', '', null, null, '', '', null, null, '', '', '00:00:00', '00:00:00', '', '', null, null, '', '', '', '00:00:00', '00:00:00', '', '', '', null, null, null, null, '[""]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '0', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["0"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, '[""]', '["","PLN"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('77', 'Calm', 'IWO/24/04/2008/003', '["PLN\/01"]', '["PLN\/01"]', 'Medan', null, null, null, 'on', '["PLN\/01"]', '["HSD"]', null, '00:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '100', null, null, null, null, '7', 'single_cargo', null, null, '2018-05-09', '05:00:00', null, null, '["Belawan"]', 'Solar', 'single_client', null, null, null, '00:00:00', null, null, null, 'single_product', null, null, null, null, null, null, 'no', 'no', '00:00:00', '1841925.95', '292694.41', null, '2018-05-19', '', null, null, null, null, '00:00:00', null, '296631.16', '1000', '1000', null, null, null, null, null, '-91996.2975', '-14534.720499999998', '', null, null, '2018-05-08', '11:00:00', null, '', 'no', null, '-14731.557999999999', null, '24159.626', '1000', '1000', null, null, null, '', '15', null, '00:00:00', '00:00:00', null, '00:00:00', null, null, '-1107.9813', null, '24546.594', '2018-05-08', '00:00:00', null, null, null, null, null, null, '', '', null, '-1127.3297000000002', '00:00:00', null, null, '00:00:00', null, null, null, '00:00:00', '1000', '1000', null, null, null, null, '800', null, '00:00:00', '', null, null, '', '1000', '1000', null, null, null, null, '900', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-05-23 14:49:29', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, '00:00:00', '00:00:00', '00:00:00', null, '', null, '00:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, '00:00:00', null, '00:00:00', null, '00:00:00', null, null, '00:00:00', '00:00:00', null, null, '00:00:00', null, '00:00:00', null, '00:00:00', null, '00:00:00', '00:00:00', '292694.41', '1841925.95', '24546.594', '24159.626', null, null, null, null, null, '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '2000', '296631.16', '2000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Gunung Dempo', '0', '["PLN"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, '2000', '2000', '2000', '2000', '2000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '24546.594', '24546.594', '24546.594', '24546.594', '24546.594', '300', '20', '-14731.557999999999', '0', '0', '0', '0', '91.85223008943726', '91.85223008943726', '91.85223008943726', '91.85223008943726', '91.85223008943726', '-1108.4412199916615', '-1092.4033533939576', '-7403.794416447348', '1.5764631133753249', '0', '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '9', '3e1a934d-7a20-4991-a068-3e02b189ed6f', '[""]', '["20"]', '["9"]', '[""]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('78', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Ambon', 'on', null, null, null, '["K0001\/03\/2017\/SUC"]', '[""]', '2018-05-02', '02:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '100', null, null, '2018-05-02', null, '6', 'single_cargo', null, '04:00:00', '2018-05-01', '05:00:00', '2018-05-02', null, '["Ambon"]', 'Premium', 'single_client', null, null, null, '03:00:00', null, null, null, null, null, null, null, null, '2018-05-02', '', 'no', 'no', '01:00:00', null, null, '2018-05-02', '2018-05-04', '', null, null, null, null, '06:00:00', null, null, '1000', '1000', '2000', '2000', null, null, null, '0.9188644271731', '0.9194335143572566', '', null, '2018-05-02', '2018-05-01', '01:00:00', '2000', '', 'no', null, '0.9203284419332547', '19:00:00', null, '1000', '1000', null, null, '2018-05-02', '', '14', null, null, '00:00:00', null, '00:00:00', '2000', '92366', '0.9193528718344782', '12000', null, '2018-05-01', '04:00:00', '', '2018-05-02', '2018-05-02', '2018-05-02', '2018-05-02', '2000', null, '', null, '0.9193515605310439', '18:00:00', '11:00:00', '12:00:00', '05:00:00', '2018-05-02', '2018-05-02', null, '00:00:00', '1000', '1000', '14:00:00', '15:00:00', null, null, '800', null, null, '', '', '', '', '1000', '1000', null, null, '', '', '800', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-05-24 11:29:13', null, null, 'admin', null, null, '12000', '9300', '12', '12', '9232', '92332', '2018-05-02', '12', null, '2018-05-02', '12', null, null, '07:00:00', '2018-05-02', '', '92373', '08:00:00', '12', null, null, '', '', '2018-05-02', '2018-05-02', '0.9188644271731', '0.9194335143572566', '09:00:00', '10:00:00', '0.9203284419332547', '213', '2018-05-02', '2018-05-02', '', '', '0.9193528718344782', '16:00:00', '17:00:00', '0.9193515605310439', '', '', 'Y', null, null, null, '["Bagos W - SBU AE Migas"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '13:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Sirimau', '0', '["Pertamina"]', '9900', '9950', '9970', '9955', '9989', '9800', '9910', '9980', '9920', '9920', '12000', '12000', '12000', '12000', '9300', '9300', '9300', '9300', '9235', '9236', '9237', '9260', '9232', '9235', '9236', '9233', '9233', '123005', '123004', '123004', '123005', '123003', '92311', '92337', '92342', '92356', '92337', '92327', '92364', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '12000', '12000', '12000', '12000', '12000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '16', 'd3ed99f5-09be-407a-949f-d8f9e4bec6a1', '["19"]', null, '["1"]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('79', 'calm', 'PTM/02', '["ptm12345"]', '["ptm12345"]', 'Semarang', '["off"]', '["off"]', '["off"]', '["off"]', '["ptm12345"]', '["MFO"]', '2018-05-06', '10:00:00', null, null, 'PTM/02', null, '', 'single_port', '[]', null, null, null, null, '7', 'single_cargo', null, null, '2018-05-05', '07:00:00', '2018-05-06', null, '["Semarang"]', 'Premium', 'single_client', null, null, null, '11:00:00', null, null, null, 'single_product', null, null, null, null, '2018-05-06', null, 'yes', 'yes', '09:00:00', '292694.41', '292694.41', '2018-05-06', '2018-05-08', '', null, null, null, null, '16:00:00', null, '296631.16', '1000', '1000', null, null, null, null, null, '-292594.41', '-292594.41', '', null, null, '2018-05-01', '02:00:00', null, '', 'no', null, '-296531.16', null, '24159.626', '1000', '1000', null, '2018-05-06', '2018-05-06', '', '15', null, '21:00:00', '08:00:00', null, '00:00:00', null, null, '-24059.626', null, '24546.594', '2018-05-05', '04:00:00', null, '2018-05-07', null, null, '2018-05-06', null, '', '', null, '-24446.594', '04:00:00', null, null, '15:00:00', null, null, null, '00:00:00', '2000', '2000', null, null, null, '2018-05-06', '1.19', null, '22:00:00', '', null, null, '', '2000', '2000', null, null, null, null, '1.19', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-06-04 08:56:33', null, null, 'admin', null, null, null, null, null, null, null, null, '2018-05-07', null, '2018-05-07', '2018-05-06', null, '23:00:00', '00:00:00', '17:00:00', '2018-05-06', '', null, '18:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', 'Y', null, '["Desert.jpg","Lighthouse.jpg"]', '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)"]', '"4.jpg"', '"3.png"', '""', '2018-05-06', '13:00:00', '2018-05-06', '12:00:00', '2018-05-06', '14:00:00', '2018-05-06', '2018-05-06', '19:00:00', '20:00:00', '2018-05-06', '2018-05-07', '02:00:00', '2018-05-07', '03:00:00', '2018-05-07', '05:00:00', '2018-05-07', '06:00:00', '01:00:00', '292694.41', '292694.41', '232694.41', '232694.41', null, null, null, null, null, '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '234990', '234990', '234990', '234990', '234990', '292694.41', '235000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Kelud', '0', '["Pertamina"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, '100', '100', '100', '100', '100', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '200000', '200000', '200000', '200000', '200000', '200000', '1200', '-24.550812765957435', '0.00425531914893617', '0.00425531914893617', '0.00425531914893617', '0.00425531914893617', '-17.5', '-17.5', '-17.5', '-17.5', '-17.5', '-48.31557999999998', '-46.34720499999999', '-46.34720499999999', '87.920187', '87.726703', '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('80', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/003"]', '["VOY\/24\/04\/2008\/003"]', 'Balikpapan', '["off"]', '["off"]', '["off"]', '["off"]', '["K0001\/03\/2017\/SUC"]', '["MHO"]', '2018-05-03', '15:00:00', null, null, 'FO/24/04/2008/003', null, '', 'single_port', '[]', null, null, null, null, '7', 'single_cargo', null, null, '2018-05-03', '12:00:00', '2018-05-03', null, '["Balikpapan"]', 'Premium', 'single_client', null, null, null, '16:00:00', null, null, null, 'single_product', null, null, null, null, '2018-05-03', null, 'no', 'no', '14:00:00', '292694.41', '292694.41', '2018-05-03', '2018-05-07', '', null, null, null, null, '21:00:00', null, '296631.16', '100000', '100000', null, null, null, null, null, '-29269340.999999996', '-29269340.999999996', '', null, null, '2018-05-03', '00:00:00', null, '', 'no', null, '-29663015.999999996', null, '24159.626', '100000', '100000', null, '2018-05-04', '2018-05-03', '', '15', null, '02:00:00', '13:00:00', null, '00:00:00', null, null, '-2415862.6', null, '24546.594', '2018-05-03', '05:00:00', null, '2018-05-04', null, null, '2018-05-03', null, '', '', null, '-2454559.4', '09:00:00', null, null, '20:00:00', null, null, null, '00:00:00', '100000', '100000', null, null, null, '2018-05-04', '100000', null, '03:00:00', '', null, null, '', '100000', '100000', null, null, null, null, '100000', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-05-30 00:50:46', null, null, 'admin', null, null, null, null, null, null, null, null, '2018-05-04', null, '2018-05-04', '2018-05-03', null, '04:00:00', '05:00:00', '22:00:00', '2018-05-03', '', null, '23:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["gundar1.jpg"]', '["Indra - SBU AE Migas"]', '""', '""', '""', '2018-05-03', '18:00:00', '2018-05-03', '17:00:00', '2018-05-03', '19:00:00', '2018-05-04', '2018-05-04', '00:00:00', '01:00:00', '2018-05-04', '2018-05-04', '07:00:00', '2018-05-04', '08:00:00', '2018-05-04', '10:00:00', '2018-05-04', '11:00:00', '06:00:00', '292694.41', '292694.41', '232694.41', '232694.41', null, null, null, null, null, '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '234990', '234990', '234990', '234990', '234990', '292694.41', '235000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dorolonda', '0', '["Pertamina"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '200000', '200000', '200000', '200000', '200000', '200000', '1200', '-24.550812765957435', '0.00425531914893617', '0.00425531914893617', '0.00425531914893617', '0.00425531914893617', '-17.5', '-17.5', '-17.5', '-17.5', '-17.5', '-48.31557999999998', '-46.34720499999999', '-46.34720499999999', '87.920187', '87.726703', '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('81', 'calm', '9/PTM/2018', '["876\/SPK\/01.2018\/98877\/908"]', '["1"]', 'Makasar', '["off"]', '["off"]', '["off"]', '["off"]', '["2457\/PERTAMINA\/0988\/0987"]', '["Solar"]', '2018-05-29', '04:00:00', null, null, '245/PTM/2017.9', null, '', 'single_port', '[]', null, null, null, null, '7', 'single_cargo', null, null, '2018-05-29', '10:00:00', '2018-05-29', null, '["Soekarno Hatta"]', '', 'single_client', null, null, null, '05:00:00', null, null, null, 'single_product', null, null, null, null, '2018-05-29', null, 'no', 'no', '03:00:00', '77000', '78000', '2018-05-29', '2018-05-29', '', null, null, null, null, '08:00:00', null, '79000', '77000', '77000', null, null, null, null, null, '1.282051282051282', '-1.2987012987012987', '', null, null, '2018-05-29', '02:00:00', null, '', 'no', null, '-2.5974025974025974', null, '', '78000', '78000', null, '2018-05-29', '2018-05-29', '', '15', null, '13:00:00', '02:00:00', null, '00:00:00', null, null, 'NaN', null, '', '2018-05-29', '04:00:00', null, '2018-05-29', null, null, '2018-05-29', null, '', '', null, 'NaN', '22:00:00', null, null, '08:00:00', null, null, null, '00:00:00', '', '', null, null, null, '2018-05-29', '', null, '13:00:00', '', null, null, '', '', '', null, null, null, null, '', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-05-30 01:04:08', null, null, 'admin', null, null, null, null, null, null, null, null, '2018-05-29', null, '2018-05-29', '2018-05-29', null, '12:00:00', '11:00:00', '10:00:00', '2018-05-29', '', null, '09:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["gundar2.jpg"]', '["Hasan"]', '""', '""', '""', '2018-05-29', '06:00:00', '2018-05-29', '05:00:00', '2018-05-29', '07:00:00', '2018-05-29', '2018-05-29', '11:00:00', '12:00:00', '2018-05-29', '2018-05-29', '18:00:00', '2018-05-29', '20:00:00', '2018-05-29', '20:00:00', '2018-05-29', '18:00:00', '16:00:00', '77000', '78000', '', '', null, null, null, null, null, '78000', '78000', '78000', '', '', '77000', '77000', '', '', '78000', '79000', '79000', '', '', '79000', '77000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MV Viera', '0', '["Pertamina"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, '77000', '77000', '78000', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '78000', '77000', '77000', '', '', '61. 87. 90', '77000', '-2.5974025974025974', '-2.5974025974025974', '-2.5974025974025974', 'NaN', 'NaN', '1.282051282051282', '0', '0', 'NaN', 'NaN', '-1.282051282051282', '-1.2987012987012987', '0', 'NaN', 'NaN', '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('82', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Medan', null, null, null, 'on', '["K0001\/03\/2017\/SUC"]', '["HSD"]', '2018-05-28', '17:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-05-28', '09:00:00', '2018-05-28', null, '["Belawan"]', 'Solar', 'single_client', null, null, null, '20:00:00', null, null, null, 'single_product', null, null, null, null, '2018-05-28', null, 'no', 'no', '14:00:00', null, null, '2018-05-29', '2018-05-31', '', null, null, null, null, '10:00:00', null, null, '12000', '12000', null, null, null, null, null, null, null, '', null, null, '2018-05-28', '00:00:00', null, '', 'no', null, null, null, null, '12000', '12000', null, '2018-05-29', '2018-05-28', '', '15', null, '22:00:00', '11:00:00', null, '00:00:00', null, null, null, null, null, '2018-05-28', '05:00:00', null, '2018-05-30', null, null, '2018-05-29', null, '', '', null, null, '18:00:00', null, null, '04:00:00', null, null, null, '00:00:00', '1000', '1000', null, null, null, '2018-05-29', '800', null, '23:00:00', '', null, null, '', '1000', '1000', null, null, null, null, '800', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-05-31 00:10:42', null, null, 'admin', null, null, '12000', '9300', null, null, null, null, '2018-05-30', null, '2018-05-30', '2018-05-29', null, '00:00:00', '05:00:00', '14:00:00', '2018-05-29', '', null, '15:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["CE-Certificate.jpg"]', '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', '2018-05-29', '00:00:00', '2018-05-28', '22:00:00', '2018-05-29', '01:00:00', '2018-05-29', '2018-05-29', '18:00:00', '21:00:00', '2018-05-30', '2018-05-30', '12:00:00', '2018-05-30', '15:00:00', '2018-05-30', '20:00:00', '2018-05-30', '23:00:00', '09:00:00', null, null, null, null, '124000', '124000', '124000', '124000', '124000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '234990', '234990', '234990', '234990', '234990', null, '235000', '0', '0', '0', '0', '0', '0.008032258064516129', '0.016129032258064516', '0.024193548387096774', '0.008064516129032258', '0', '-12.333333333333334', '-12.052631578947368', '-12.333333333333334', '-11.525252525252526', '-12.333333333333334', '-12.226236559139785', '-11.842105263157896', '-12.010752688172044', '-11.424242424242424', '-12.333333333333334', 'KM Tatamailau', '0', '["PLN"]', '124000', '123003', '123000', '123320', '123010', '123004', '122000', '121000', '123000', '124000', '12000', '12000', '12000', '12000', '9500', '9300', '9900', '9300', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '123004', '122000', '121000', '123000', '124000', '12000', '12000', '12000', '12000', '12000', '1', '1', '1', '1', '1', '124000', '124000', '124000', '124000', '124000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', '3e1a934d-7a20-4991-a068-3e02b189ed6f', '["18"]', '[""]', '["9"]', '["2"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('83', 'Calm', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', 'Semarang', 'on', null, null, null, '["K0001\/03\/2017\/SUC"]', '["HSD"]', '2018-06-23', '00:00:00', null, null, 'FO/24/04/2008/010', null, '', 'single_port', '100', null, null, null, null, '6', 'single_cargo', null, null, '2018-06-22', '12:00:00', '2018-06-23', null, '["Semarang"]', 'Solar', 'single_client', null, null, null, '03:00:00', null, null, null, 'single_product', null, null, null, null, '2018-06-22', null, 'no', 'no', '22:00:00', null, null, '2018-06-23', '2018-06-25', '', null, null, null, null, '15:00:00', null, null, '1000', '1000', null, null, null, null, null, null, null, '', null, null, '2018-06-22', '00:00:00', null, '', 'no', null, null, null, null, '1000', '1000', null, '2018-06-24', '2018-06-22', '', '15', null, '03:00:00', '18:00:00', null, '00:00:00', null, null, null, null, null, '2018-06-22', '08:00:00', null, '2018-06-24', null, null, '2018-06-23', null, '', '', null, null, '20:00:00', null, null, '12:00:00', null, null, null, '00:00:00', '1000', '1000', null, null, null, '2018-06-24', '800', null, '06:00:00', '', null, null, '', '1000', '1000', null, null, null, null, '800', null, null, null, null, null, '', null, null, null, null, null, '1', '2018-06-04 10:53:38', null, null, 'admin', null, null, '12000', '9300', null, null, null, null, '2018-06-24', null, '2018-06-24', '2018-06-23', null, '08:00:00', '10:00:00', '18:00:00', '2018-06-23', '', null, '20:00:00', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '["CE-Certificate1.jpg"]', '["Tugiman - SBU Batubara"]', '""', '""', '""', '2018-06-23', '08:00:00', '2018-06-23', '06:00:00', '2018-06-23', '10:00:00', '2018-06-23', '2018-06-24', '22:00:00', '00:00:00', '2018-06-24', '2018-06-24', '15:00:00', '2018-06-24', '18:00:00', '2018-06-24', '23:00:00', '2018-06-24', '00:00:00', '12:00:00', null, null, null, null, '9500', '9800', '9800', '9500', '9800', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '235000', '234990', '234990', '234990', '234990', '234990', null, '235000', '0.008032258064516129', '0.008154272660016422', '0.016260162601626018', '0.0025948751216347712', '-0.008048126168604178', '0.47657872340425533', '0.4808510638297872', '0.4851063829787234', '0.4765957446808511', '0.4723404255319149', '-24.268817204301076', '-23.736842105263158', '-24.268817204301076', '-22.737373737373737', '-24.268817204301076', '-12.226236559139785', '-11.842105263157896', '-12.010752688172044', '-11.424242424242424', '-12.333333333333334', 'KM Kelud', '0', '["Pertamina"]', '124000', '123003', '123000', '123320', '123010', '123004', '122000', '121000', '123000', '124000', '12000', '12000', '12000', '12000', '9500', '9300', '9900', '9300', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '124000', '123003', '123000', '123320', '123010', '12000', '12000', '12000', '12000', '12000', '1', '1', '1', '1', '1', '235000', '235000', '235000', '235000', '235000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '6', '6b3a98da-9b75-42f5-9160-540cd2532e04', '["16"]', '[""]', '["3"]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('84', '', 'cfw/2423e/f2423dsad', '["821264723476"]', '[""]', 'Balikpapan', null, 'on', null, null, '["ajkjr736r8732y4kj"]', '[""]', null, '00:00:00', '', '', '3462364', '', '', 'single_port', '100', '', '', null, '', '7', 'single_cargo', '', '00:00:00', null, '00:00:00', null, null, '["spm balikpapn"]', '', 'single_client', '', '', '', '00:00:00', null, null, '', null, '', '', '00:00:00', '00:00:00', null, '', null, null, '00:00:00', '', '', null, null, '', '', '', '', '', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '00:00:00', '', '', null, '', '', '00:00:00', '', '', '', null, null, null, '', '14', '', '00:00:00', '00:00:00', null, '00:00:00', '', '', '', '', '', null, '00:00:00', '', null, null, null, null, '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '', '', '00:00:00', '00:00:00', null, null, '', '00:00:00', '00:00:00', '', '', '', '', '', '', null, null, '', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '1', '2018-06-08 09:21:30', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[""]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Madonasun', '0', '["PLN Perero"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["0"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '33', 'edcd4cc8-e3be-4aa8-8e20-d7fd839dd470', '[""]', null, '[""]', '[""]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('85', 'sfskjhfkj', 'cfw/2423e/f2423dsad', '["`2.5\/SPK\/03\/2018"]', '["VOY\/003\/test"]', 'Balikpapan', 'on', 'on', 'on', null, '["241\/Pelni\/2018.7"]', '["HSD"]', null, '23:45:00', '35345.3454', '34534.45657', '3462364', '32423.465', 'aDA', 'single_port', '100', '34545.34546', '345435.45654', '2018-06-25', '34543.46456', '7', 'single_cargo', '3435.45645', '02:00:00', '2018-06-25', '00:00:00', '2018-06-25', null, null, 'hsd', 'single_client', '343425.3345', '345345.34534', '2fsdf', '01:00:00', '2018-06-25', '2018-06-25', '3543.576575', 'single_product', '34534.45345', '345345.34546', '05:00:00', '06:00:00', '2018-06-17', '', 'no', 'no', '10:23:00', '3274623', '73472347623', '2018-06-25', '2018-06-11', '', '324325', '23423', '43534.34534', '34534.346467', '04:00:00', '3435.2524', '72364286237', '3253.34534', '23423423.3242', '34.2423', '2353.654634', '', '', '132142', '-93.79201774929942', '-212693.86450211055', '', null, '2018-06-25', '2018-06-25', '01:00:00', '23423.55', 'saffa', 'no', '343534.6456', '-21063949.974258456', '20:00:00', '72534582', '34534.45645', '345345.435345R', null, '2018-06-25', '2018-06-06', '', '14', '3453463', '14:00:00', '13:56:00', null, '00:00:00', '23532.4534', '2423.53453', '-209.03491998244235', '32423', '7324237', '2018-06-26', '23:00:00', '', '2018-06-25', '2018-06-25', '2018-06-25', '2018-06-25', '34534.553453', '', 'aas', '', '-211.08558288481942', '21:00:00', '10:00:00', '11:00:00', '03:00:00', '2018-06-25', '2018-06-25', null, '00:00:00', '4345.34534', '353453.4534', '16:00:00', '16:00:00', '2018-06-25', '2018-06-25', '234.464', '07:00:00', '09:00:00', '', '', '', '', '3534.3454', '3343.454', '2018-06-25', '2018-06-25', '', '', '43534.3543', '-93.79201774929942', '-212693.86450211055', '17:00:00', '19:00:00', '', '', '-21063949.974258456', '', '', '-209.03491998244235', '-211.08558288481942', '1', '2018-06-25 02:39:06', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, '""', '["irval","gani"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Madonasun', '1', '["Pelni"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1","2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, '[]', '[]', '["3","Pelni"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('86', 'calm', '0001/test/test', '["23.5\/SPK\/01\/2018"]', '["VOY\/002\/test"]', 'Makasar', '["on"]', '["off"]', '["off"]', '["on"]', '["245\/PLN\/2017.9"]', '["HSD"]', '2018-06-25', '02:00:00', null, null, '245/PLN/2017.9', null, '', 'single_port', '["5"]', null, null, '2018-06-25', null, '6', 'single_cargo', null, '03:00:00', '2018-06-25', '02:00:00', '2018-06-25', null, '["Soekarno Hatta"]', 'HSD', 'single_client', null, null, null, '03:00:00', null, null, null, 'single_product', null, null, null, null, '2018-06-24', '', 'no', 'yes', '02:00:00', null, null, '2018-06-25', '2018-06-25', '', null, null, null, null, '04:00:00', null, null, '13000', '13000', '12000', '15000', null, null, null, '0', '-0.6', 'Loading Completed', null, '2018-06-25', '2018-06-25', '02:00:00', '12000', '', 'no', null, '0', '21:00:00', null, '13000', '13000', null, null, '2018-06-24', '', '14', null, null, '01:00:00', null, '00:00:00', '14000', '14000', '0', '10000', null, '2018-06-25', '22:00:00', '', '2018-06-25', '2018-06-25', '2018-06-25', '2018-06-25', '14000', null, '', null, '0.07142857142857142', '20:00:00', '11:00:00', '12:00:00', '03:00:00', '2018-06-25', '2018-06-25', null, '00:00:00', '', '13000', '17:00:00', '18:00:00', null, null, '', null, null, '', '', '', '', '', '13000', null, null, '', '', '', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-06-25 01:40:37', null, null, 'admin', null, null, '12000', '12000', '12000', '12000', '14000', '13000', '2018-06-25', '13000', null, '2018-06-25', '14000', null, null, '05:00:00', '2018-06-25', '', '14000', '03:00:00', '14000', null, null, '', '', '2018-06-25', '2018-06-25', '0', '-0.6', '07:00:00', '09:00:00', '0', '12000', '2018-06-25', '2018-06-25', '', '', '0', '19:00:00', '20:00:00', '0.07142857142857142', '', '', 'Y', null, null, '["gundar3.jpg"]', '["Lukmanur Hakim - SBU HMPM (Hulu Migas dan Produk Migas)"]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '15:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'MT Atlantic Point', '0', '["PLN"]', '10000', '12000', '12000', '14000', '13000', '12000', '16000', '12000', '14000', '13000', '13000', '13000', '14000', '14000', '12000', '12000', '14000', '14000', '13000', '12000', '12000', '14000', '13000', '13000', '11000', '14000', '14000', '12000', '10000', '12000', '14000', '14000', '12000', '10000', '12000', '14000', '14000', '14000', '14000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10000', '13000', '13000', '14000', '14000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["2"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '[]', '[]', '[]', '["2"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('87', 'calm', 'iw123', '["loy123"]', '["09874"]', 'Semarang', 'on', null, null, null, '["kontrak123"]', '["Solar"]', '2018-06-30', '04:00:00', null, null, 'fo1231', null, '', 'single_port', '100', null, null, '2018-06-30', null, '6', 'single_cargo', null, '06:00:00', '2018-06-30', '02:00:00', '2018-06-30', null, '["Tembilahan"]', 'Premium', 'single_client', null, null, null, '04:00:00', null, null, null, 'single_product', null, null, null, null, '2018-06-30', '', 'yes', 'yes', '04:00:00', null, null, '2018-06-30', '2018-06-30', '', null, null, null, null, '08:00:00', null, null, '132125.12312', '1235.1231', '231.12313', '12313.1312', null, null, null, '-8.901747827195953', '-90.22759733123445', 'Loading sukses', null, '2018-06-30', '2018-06-30', '02:00:00', '1235.131', '', 'yes', null, '0.061723007703246145', '20:00:00', null, '12312.1231', '12321.1231', null, null, '2018-06-30', '', '14', null, null, '03:00:00', null, '00:00:00', '123124.121', '132312.1312', '-9.64904823764775', '100.234', null, '2018-07-01', '06:00:00', '', '2018-06-30', '2018-06-30', '2018-06-30', '2018-06-30', '1231231.2131', null, '', null, '-0.0663411339060492', '18:00:00', '09:00:00', '12:00:00', '06:00:00', '2018-06-30', '2018-06-30', null, '00:00:00', '12315.1231', '131.131', '08:00:00', '14:00:00', null, null, '1.197', null, null, '', '', '', '', '12315.1321', '1235.131', null, null, '', '', '1.97', null, null, null, null, null, null, null, null, null, null, null, '1', '2018-06-25 11:42:20', null, null, 'admin', null, null, '121132.1312', '1325.123', '', '', '123134.12312', '312321.3213', '2018-06-30', '131235.1231', null, '2018-06-30', '', null, null, '09:00:00', '2018-06-30', '', '1231.13', '10:00:00', '', null, null, '', '', '2018-06-30', '2018-06-30', '-8.901747827195953', '-90.22759733123445', '12:00:00', '12:00:00', '0.061723007703246145', '123.131', '2018-06-30', '2018-06-30', '', '', '-9.64904823764775', '15:00:00', '17:00:00', '-0.0663411339060492', '', '', 'Y', null, null, '["429334_1391216680_1535994732_5435169302204383232_l.png"]', '["Aris D Mario - SBU HMPM (Hulu Migas dan Produk Migas)"]', '"alleria-windranger-dota-2-hd-wallpaper-1920x1080.jpg"', '"50fc60c31d0831358717123awinningcaptainsprinciple.png"', '"Alienware_Logo_desktop_computer_HD_Wallpaper_1920x1080.jpg"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10:00:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'KM Dobonsolo', '0', '["Pertamina"]', '1123.11', '1234.111', '1231.1113', '12313.121312', '11235.123123', '12313.1321', '112313.12313', '13121.113', '131123.1313', '13132.131', '1231.12312', '12123.12312', '131.113', '13125.1321', '13213.131', '1231.113', '132125.1315', '1231.56`', '12313.1231', '13213.2131', '12313.123', '13134.3123', '13123.131', '13213.1313', '12315.12313', '1231223.131', '1231.1312', '13123.13123', '1231.131', '1325.131', '12313.1315', '12315.13123', '12313.12313', '12315.312', '1231315.131223', '121235.1313', '123125.131', '123313.1313', '12313.13123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1235.1231', '12313.1231', '1321.131', '131.123', '131.1312', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["1"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '5', '6b3a98da-9b75-42f5-9160-540cd2532e04', '[""]', '["22"]', '["9"]', '["1"]');
INSERT INTO "public"."FORM_ENTRY_FIELD" VALUES ('88', '', 'IWO/24/04/2008/010', '["LOI\/24\/04\/2008\/011"]', '["VOY\/24\/04\/2008\/010"]', '', null, null, null, null, '["K0001\/03\/2017\/SUC"]', '[""]', '2018-07-12', '00:00:00', '', '', 'FO/24/04/2008/010', '', '', null, '100', '', '', null, '', '7', null, '', '00:00:00', null, '00:00:00', null, null, null, '', 'single_client', '', '', '', '00:00:00', null, null, '', null, '', '', '00:00:00', '00:00:00', '2018-07-12', '', null, null, '00:00:00', '', '', null, null, '', '', '', '', '', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '00:00:00', '', '', null, '', '', '00:00:00', '', '', '', null, null, '2018-07-05', '', '14', '', '00:00:00', '00:00:00', null, '00:00:00', '', '', '', '', '', null, '00:00:00', '', null, null, null, null, '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', null, null, null, '00:00:00', '', '', '00:00:00', '00:00:00', null, null, '', '00:00:00', '00:00:00', '', '', '', '', '', '', null, null, '', '', '', '', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '1', '2018-07-23 15:34:21', null, null, 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[""]', '""', '""', '""', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '0', '["PLN"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '["0"]', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', null, null, '[""]', '[""]');

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
INSERT INTO "public"."gammu" VALUES ('15');

-- ----------------------------
-- Table structure for "public"."HEADER_INFO_CLIENT"
-- ----------------------------
DROP TABLE "public"."HEADER_INFO_CLIENT";
CREATE TABLE "public"."HEADER_INFO_CLIENT" (
"ID" int4 DEFAULT nextval('"HEADER_INFO_CLIENT_ID_seq"'::regclass) NOT NULL,
"INTERVENTION_ID" text,
"PRINCIPLE" text,
"CONTRACT_ID" text,
"PO" text,
"RETAIL_REFERENCE" text,
"PRODUCT_DETAIL" text,
"FILE_ORDER" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"LOCATION_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of HEADER_INFO_CLIENT
-- ----------------------------
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES ('2', '3', 'contract', null, 'PO/002', '', '["6","7","13","14"]', 'profesional2.png', null, null, null, null, null, null, null);
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES ('3', '3', 'contract', null, 'PO/003', '', '["6","7","13","14","9","10"]', 'profesional.png', null, null, null, null, null, null, null);
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES ('4', '3', 'contract', '1', 'PO/003', '', '["6","7","13","14","9","10"]', 'Screenshot_from_2017-09-25_17-05-057.png', '0', null, null, null, null, null, '2');
INSERT INTO "public"."HEADER_INFO_CLIENT" VALUES ('5', null, null, null, null, null, 'null', null, '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."inbox"
-- ----------------------------
DROP TABLE "public"."inbox";
CREATE TABLE "public"."inbox" (
"UpdatedInDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"ReceivingDateTime" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"Text" text NOT NULL,
"SenderNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Coding" varchar(255) DEFAULT 'Default_No_Compression'::character varying NOT NULL,
"UDH" text NOT NULL,
"SMSCNumber" varchar(20) DEFAULT ''::character varying NOT NULL,
"Class" int4 DEFAULT '-1'::integer NOT NULL,
"TextDecoded" text DEFAULT ''::text NOT NULL,
"ID" int4 DEFAULT nextval('"inbox_ID_seq"'::regclass) NOT NULL,
"RecipientID" text NOT NULL,
"Processed" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of inbox
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."INFO_CLIENT"
-- ----------------------------
DROP TABLE "public"."INFO_CLIENT";
CREATE TABLE "public"."INFO_CLIENT" (
"ID_INFO" int4 DEFAULT nextval('pelni_info_id_info_seq1'::regclass) NOT NULL,
"VESSEL" int4 DEFAULT 0 NOT NULL,
"BARGE" int4 DEFAULT 0 NOT NULL,
"PORT" int4 DEFAULT 0 NOT NULL,
"DATE_LOADING_BARGE" date,
"DATE_LOADING_CLIENT" date,
"DEF_TERMINAL" date,
"DEF_BARGE" date,
"DEF_SHIP" date,
"DELIV_ORDER_KL" numeric DEFAULT 0 NOT NULL,
"DELIV_ORDER_KL15" numeric DEFAULT 0 NOT NULL,
"OBQ_KL" numeric DEFAULT 0 NOT NULL,
"OBQ_KL15" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_AFTERLOAD_KL" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_AFTERLOAD_KL15" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_BFDC_KL" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_BFDC_KL15" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_AFDC_KL" numeric DEFAULT 0 NOT NULL,
"BAR_FIG_AFDC_KL15" numeric DEFAULT 0 NOT NULL,
"SHIP_REC_KL" numeric DEFAULT 0 NOT NULL,
"SHIP_REC_KL15" numeric DEFAULT 0 NOT NULL,
"REMARKS" text,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"DELETE_USER" text,
"CLIENT_SITE_ID" int4,
"CLIENT_SITE_NAME" text,
"HEADER_INFO_CLIENT_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of INFO_CLIENT
-- ----------------------------
INSERT INTO "public"."INFO_CLIENT" VALUES ('1', '13', '2', '8', '2017-10-27', '2017-10-28', '2017-10-29', '2017-10-30', '2017-10-31', '110.000', '32.443', '424.445', '534.544', '110.000', '65.543', '453.356', '46.554', '54.665', '545.234', '545.765', '86.934', 'data example', null, '', null, null, null, null, null, null, null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('2', '26', '1', '6', '2017-02-09', '2017-02-10', '2017-10-10', '2017-10-10', '2017-10-10', '70.000', '69.144', '1', '1', '70.000', '69.144', '70.000', '69.144', '67.000', '69.200', '69.900', '69.016', 'with standard', null, '', null, null, null, null, '1', 'Pertamina', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('27', '26', '5', '6', '2017-02-18', '2017-02-20', null, null, null, '33.000', '32.557', '0', '0', '33.000', '32.557', '33.000', '32.557', '0.000', '0.000', '33.060', '32.617', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('28', '26', '6', '6', '2017-02-23', '2017-02-24', null, null, null, '75.000', '74.051', '0', '0', '75.000', '74.051', '75.000', '74.051', '0.000', '0.000', '75.150', '74.199', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('29', '27', '7', '6', '2017-02-08', '2017-02-09', null, null, null, '30.000', '29.617', '0', '0', '30.000', '29.617', '30.000', '29.617', '0.000', '0.000', '30.060', '29.676', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('30', '27', '0', '7', '1970-01-01', '2017-01-27', null, null, null, '65.000', '64.373', '0', '0', '0', '0', '0', '0', '0', '0', '65.000', '64.373', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('31', '27', '0', '7', '1970-01-01', '2017-02-05', null, null, null, '75.000', '74.098', '0', '0', '0', '0', '0', '0', '0', '0', '74.960', '74.059', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('32', '27', '0', '7', '1970-01-01', '2017-02-17', null, null, null, '40.000', '39.521', '0', '0', '0', '0', '0', '0', '0', '0', '40.000', '39.521', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('33', '3', '0', '7', '1970-01-01', '2017-02-03', null, null, null, '27.000', '26.676', '0', '0', '0', '0', '0', '0', '0', '0', '27.000', '26.676', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('34', '4', '8', '8', '2017-02-01', '2017-02-02', null, null, null, '110.000', '108.675', '2.772', '2.739', '112.823', '111.464', '113.062', '111.700', '3.012', '2.976', '110.045', '108.719', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('35', '4', '1', '8', '2017-02-04', '2017-02-05', null, null, null, '520.000', '513.287', '3.338', '3.295', '523.390', '516.632', '523.690', '516.928', '3.634', '3.587', '520.050', '513.335', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('36', '4', '8', '8', '2017-02-15', '2017-02-17', null, null, null, '110.000', '108.639', '2.171', '2.144', '112.222', '110.834', '112.462', '111.071', '2.410', '2.380', '110.050', '108.688', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('37', '4', '8', '8', '2017-02-17', '2017-02-20', null, null, null, '520.000', '513.711', '2.171', '2.145', '522.256', '515.940', '522.556', '516.236', '2.470', '2.440', '520.040', '513.721', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('38', '5', '9', '8', '2017-02-06', '2017-02-07', null, null, null, '560.000', '552.769', '10.458', '10.323', '570.553', '563.186', '570.322', '562.958', '10.244', '10.112', '560.120', '552.888', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('39', '6', '8', '8', '2017-02-01', '2017-02-02', null, null, null, '255.000', '251.928', '2.745', '2.712', '257.841', '254.735', '258.018', '254.909', '2.923', '2.888', '255.050', '251.977', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('40', '6', '8', '8', '2017-02-09', '2017-02-09', null, null, null, '255.000', '251.857', '2.745', '2.711', '257.785', '254.608', '258.082', '254.901', '3.041', '3.004', '255.050', '251.906', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('41', '6', '8', '8', '2017-02-16', '2017-02-16', null, null, null, '255.000', '252.061', '2.239', '2.213', '257.844', '254.872', '258.080', '255.105', '2.982', '2.948', '255.010', '252.071', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('42', '6', '8', '8', '2017-02-22', '2017-02-23', null, null, null, '255.000', '251.913', '2.745', '2.712', '257.785', '254.665', '258.023', '254.900', '2.982', '2.946', '255.100', '252.012', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('43', '7', '8', '8', '2017-02-07', '2017-02-07', null, null, null, '110.000', '108.769', '3.338', '3.298', '113.395', '112.029', '113.454', '112.087', '3.399', '3.358', '110.100', '108.774', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('44', '8', '8', '8', '2017-02-10', '2017-02-12', null, null, null, '420.000', '414.823', '2.745', '2.711', '422.804', '417.593', '423.104', '417.889', '3.041', '3.004', '420.000', '414.823', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('45', '8', '8', '8', '2017-02-24', '2017-02-25', null, null, null, '420.000', '415.252', '3.338', '3.300', '423.421', '418.635', '423.720', '418.930', '3.634', '3.593', '420.100', '415.351', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('46', '9', '9', '8', '2017-02-09', '2017-02-11', null, null, null, '565.000', '558.036', '10.707', '10.575', '575.781', '568.684', '576.244', '569.141', '11.203', '11.065', '565.130', '558.165', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('47', '9', '9', '8', '2017-02-23', '2017-02-25', null, null, null, '565.000', '558.162', '12.136', '11.989', '577.233', '570.246', '577.691', '570.699', '12.659', '12.506', '565.060', '558.221', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('48', '9', '9', '8', '2017-02-13', '2017-02-14', null, null, null, '550.000', '543.264', '11.444', '11.304', '561.497', '554.620', '561.729', '554.849', '11.651', '11.508', '550.060', '543.323', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('49', '10', '9', '8', '2017-02-27', '2017-03-01', null, null, null, '550.000', '543.343', '11.244', '11.108', '561.330', '554.536', '561.562', '554.765', '11.475', '11.336', '550.040', '543.383', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('50', '11', '9', '8', '2017-02-20', '2017-02-21', null, null, null, '660.000', '652.011', '10.463', '10.336', '670.533', '662.417', '670.725', '662.607', '10.664', '10.535', '660.000', '652.011', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('51', '12', '0', '9', '1900-01-01', '2017-02-01', null, null, null, '230.000', '227.217', '0', '0', '0', '0', '0', '0', '0', '0', '230.388', '227.600', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('52', '13', '0', '9', '1900-01-01', '2017-02-04', null, null, null, '455.000', '450.228', '0', '0', '0', '0', '0', '0', '0', '0', '455.285', '450.510', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('53', '13', '0', '9', '1900-01-01', '2017-02-17', null, null, null, '460.000', '455.176', '0', '0', '0', '0', '0', '0', '0', '0', '459.568', '454.748', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('54', '14', '0', '9', '1900-01-01', '2017-02-04', null, null, null, '156.000', '154.241', '0', '0', '0', '0', '0', '0', '0', '0', '155.353', '153.602', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('55', '15', '0', '9', '1900-01-01', '2017-02-15', null, null, null, '450.000', '444.555', '0', '0', '0', '0', '0', '0', '0', '0', '450.100', '444.654', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('56', '16', '0', '9', '1900-01-01', '2017-02-23', null, null, null, '30.000', '29.662', '0', '0', '0', '0', '0', '0', '0', '0', '29.920', '29.583', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('57', '17', '10', '11', '2017-02-08', '2017-02-13', null, null, null, '85.000', '83.973', '21.373', '21.115', '106.195', '104.912', '105.992', '104.712', '20.836', '20.584', '85.070', '84.042', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('58', '18', '11', '10', '2017-02-01', '2017-02-02', null, null, null, '175.000', '172.970', '17.157', '16.958', '288.336', '284.991', '309.490', '305.900', '134.317', '132.759', '175.100', '173.069', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('59', '18', '11', '10', '2017-02-14', '2017-02-16', null, null, null, '175.000', '172.970', '29.008', '28.672', '216.123', '213.616', '257.881', '254.890', '82.768', '81.808', '175.100', '173.069', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('60', '19', '12', '10', '2017-02-02', '2017-02-02', null, null, null, '615.000', '607.866', '0.000', '0.000', '615.179', '608.043', '615.222', '608.085', '0.000', '0.000', '615.150', '608.014', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('61', '15', '12', '10', '2017-02-03', '2017-02-03', null, null, null, '446.000', '440.826', '0.000', '0.000', '446.093', '440.918', '446.232', '441.056', '0.000', '0.000', '446.100', '440.925', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('62', '17', '11', '10', '2017-02-03', '2017-02-06', null, null, null, '130.000', '128.492', '40.335', '39.867', '282.363', '279.088', '282.345', '279.070', '152.183', '150.418', '129.985', '128.477', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('63', '21', '12', '10', '2017-02-07', '2017-02-08', null, null, null, '660.000', '652.344', '0.000', '0.000', '660.112', '652.455', '660.196', '652.538', '0.000', '0.000', '660.000', '652.344', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('64', '11', '12', '10', '2017-02-09', '2017-02-09', null, null, null, '660.000', '652.344', '0.000', '0.000', '660.104', '652.447', '660.108', '652.451', '0.000', '0.000', '660.020', '652.354', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('65', '23', '11', '10', '2017-02-07', '2017-02-08', null, null, null, '158.000', '156.167', '120.616', '119.217', '278.617', '275.358', '257.006', '254.025', '98.967', '97.819', '158.100', '157.452', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('66', '23', '13', '10', '2017-02-21', '2017-02-22', null, null, null, '158.000', '156.167', '18.096', '17.886', '363.478', '379.030', '382.141', '377.708', '224.083', '221.484', '158.000', '156.167', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('67', '7', '13', '10', '2017-02-21', '2017-02-22', null, null, null, '107.000', '105.759', '18.096', '17.886', '363.478', '379.030', '224.083', '221.484', '116.972', '115.615', '107.000', '105.759', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('68', '25', '13', '10', '2017-02-21', '2017-02-23', null, null, null, '100.000', '98.840', '18.096', '17.886', '363.478', '379.030', '211.013', '208.565', '109.735', '108.462', '99.810', '98.652', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('69', '21', '12', '10', '2017-02-22', '2017-02-22', null, null, null, '660.000', '652.344', '0.000', '0.000', '660.071', '652.414', '660.185', '652.527', '0.000', '0.000', '660.000', '652.344', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('70', '16', '11', '10', '2017-02-25', '2017-02-25', null, null, null, '285.000', '281.694', '60.111', '59.414', '456.119', '450.828', '456.028', '450.738', '170.893', '168.911', '285.000', '281.694', null, null, null, null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('71', '22', '13', '11', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ok null', null, '', null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('72', '12', '12', '10', '2017-10-30', '2017-11-01', '2017-11-02', '2017-11-03', '2017-11-04', '12.345', '12.344', '51.423', '51.423', '32.415', '31.525', '31.524', '51.423', '34.152', '13.425', '13.245', '21.354', 'ngetes edit dari system', null, '', null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('73', '12', '5', '8', '2017-10-29', '2017-10-30', '2017-10-31', '2017-11-01', '2017-11-02', '132.415', '14.232', '14.232', '15.241', '13.142', '15.243', '13.213', '14.231', '13.241', '15.241', '13.121', '14.231', 'ngetes sama upload banyak', '2017-10-29 16:17:03', 'admin', null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('78', '3', '4', '6', '2017-11-26', '2017-11-28', '2017-11-26', '2017-11-27', '2017-11-28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'tesssssssssssssssssssssssssssssssssssssst', '2017-11-26 02:38:28', 'admin', null, null, null, null, '3', 'Pelni', null);
INSERT INTO "public"."INFO_CLIENT" VALUES ('79', '0', '0', '0', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '2017-11-26 19:28:40', 'admin', null, null, null, null, '3', 'Pelni', '4');
INSERT INTO "public"."INFO_CLIENT" VALUES ('81', '26', '1', '6', '2017-02-09', '2017-02-10', '2017-10-10', '2017-10-10', '2017-10-10', '70.000', '69.144', '1', '1', '70.000', '69.144', '70.000', '69.144', '67.000', '69.200', '69.900', '69.016', 'with standard', null, '', null, null, null, null, '2', 'PLN', null);

-- ----------------------------
-- Table structure for "public"."KOMPONEN_HTML"
-- ----------------------------
DROP TABLE "public"."KOMPONEN_HTML";
CREATE TABLE "public"."KOMPONEN_HTML" (
"ID" int4 DEFAULT nextval('"KOMPONEN_HTML_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"DATA" text,
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
-- Records of KOMPONEN_HTML
-- ----------------------------
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('1', 'bl_figure_product_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td>BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_metricton" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="5">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="5">
						<input type="text" onkeyup="hitung(this)" style="width:100%;" name="bl_15_derajat_celcius" />
					</td>
				</tr>
			</table> ', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('2', 'bl_figure_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">BL Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_quantity_metricton" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">BL Figure based on</td>
					<td colspan="5">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_klobs" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_kl15" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_bbls" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_longton" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_sfal_metricton" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('3', 'bl_figure_crude_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td colspan="6">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="10">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td>density@15°C</td>
					<td colspan="10">
						<input onkeyup="hitung(this)" style="width:100%;" type="text" class="" name="bl_15_derajat_celcius" />
					</td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('4', 'bl_figure_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td colspan="6">BL Quantity</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="bl_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td>BL Figure based on</td>
					<td colspan="10">
						<input type="checkbox" name="bl_flow_meter" value="flow_meter" />
						Flow Meter
						<input type="checkbox" name="bl_shore_tank" value="shore_tank" />
						Shore Tank
						<input type="checkbox" name="bl_ship_tank" value="ship_tank" />
						Ship Tank
					</td>
				</tr>
				<tr>
					<td>c)</td>
					<td colspan="6">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_metricton" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('5', 'sf_product_loading', '<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 135px;">Shore Quantity</td>
<td><input class="" style="width: 100px;" name="sf_quantity_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_quantity_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_quantity_bbls" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_quantity_longton" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_quantity_metricton	" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Shore Tanks Nomination</td>
<td colspan="5"><input class="" style="width: 100%;" name="st_nomination" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('6', 'sf_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Shore Received</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_shore_received_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Shore Tanks Used</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" type="text" name="sf_stu" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">density@15°C</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100%;" type="text" name="sf_density_15c" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('7', 'sf_crude_loading', '<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Shore Quantity</td>
<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_klobs" class="" />--></td>
<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_kl15" class="" />--></td>
<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_bbls" class="" />--></td>
<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_longton" class="" />--></td>
<td><!--<input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_metricton" class="" />--></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Gross Standard Volume</td>
<td><input class="" style="width: 100px;" name="sf_gsv_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_gsv_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_gsv_bbls" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_gsv_longton" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_gsv_metricton" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Net Standard Volume</td>
<td><input class="" style="width: 100px;" name="sf_nsv_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_nsv_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_nsv_bbls" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_nsv_longton" type="text" /></td>
<td><input class="" style="width: 100px;" name="sf_nsv_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Shore Tanks Nomination</td>
<td colspan="5"><input class="" name="sf_shore_tanks_nomination_klobs" type="text" /></td>
</tr>
</tbody>
</table>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('8', 'sf_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Shore Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sq_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Gross Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td style="width:150px;">Net Standard Volume</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sf_sfal_metricton" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('9', 'spf_product_loading', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:10px;">a)</td>
					<td style="width:135px;">Onboard Quantity (OBQ)</td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_klobs" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_kl15" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_bbls" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_longton" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="obq_quantity_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfal_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Free Water After Loading</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="fwal_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship''s Loaded - GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sl_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">e)</td>
					<td style="width:135px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="vef_loading_bbls" type="text" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">f)</td>
					<td style="width:135px;">Ship''s Loaded (applied VEF-L)</td>
					<td colspan="5"><input onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" type="text" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('10', 'spf_product_discharge', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:10px;">a)</td>
					<td style="width:135px;">Ship Figure Before Discharge - TOV</td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_klobs" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_kl15" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_bbls" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_longton" class="" /></td>
					<td style="width:100px;"><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">b)</td>
					<td style="width:135px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">c)</td>
					<td style="width:135px;">Remaining On Board Quantity (ROB)</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_metricton" class="" /></td>
				</tr>
				<tr>
					<td style="width:10px;">d)</td>
					<td style="width:135px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_metricton" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('11', 'spf_crude_loading', '                        <table  style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Onboard Quantity (OBQ)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="obq_quantity_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - TOV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_sfal_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Free Water</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sf_free_water_al_metricton" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - GSV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>e)</td>
					<td style="width:150px;">Ship''s Figure After Loading (SFAL) - NSV</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sfal_nsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Vessel Experience Factor - Loading (VEF-L)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="vefl_metricton" class="" /></td>
				</tr>
				<tr>
					<td>g);</td>
					<td style="width:150px;">Ship''s Loaded (applied VEF-L)</td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_klobs" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_kl15" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_bbls" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_longton" class="" /></td>
					<td><input type="text" onkeyup="hitung(this)" style="width:100px;" name="sl_applied_vefl_metricton" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('12', 'spf_crude_discharge', '			<table style="width:900px !important;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:150px;">Ship Figure Before Discharge - TOV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_tov_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:150px;">Free Water</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="free_water_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:150px;">Remaining On Board Quantity</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="robq_metricton" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  GSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_gsv_metricton" class="" /></td>
				</tr>
				<tr>
					<td>f)</td>
					<td style="width:150px;">Ship Figure Before Discharge -  NSV</td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_klobs" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_kl15" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_bbls" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_longton" class="" /></td>
					<td><input onkeyup="hitung(this)" style="width:100px;" type="text" name="sfbd_nsv_metricton" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('13', 'dpc_product_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_metricton" type="text" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('14', 'dpc_product_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" name="sfal_vs_sf_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfal_vs_sf_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" name="sfbd_vs_sr_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sfbd_vs_sr_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>d)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" name="sr_vs_bol_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sr_vs_bol_metricton" type="text" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('15', 'dpc_crude_loading', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_klobs" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_kl15" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_bbls" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_longton" type="text" class="" /></td>
					<td><input style="width:100px;" name="sl_vef_applied_vs_bol_r1_metricton" type="text" class="" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('16', 'dpc_crude_discharge', '			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>a)</td>
					<td style="width:135px;">Ship''s Loaded vs Bill of Lading (R1)</td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_klobs" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_kl15" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_bbls" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_longton" class="" /></td>
					<td><input style="width:100px;" type="text" name="slvs_bol_r1_metricton" class="" /></td>
				</tr>
				<tr>
					<td>b)</td>
					<td style="width:135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_klobs" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_kl15" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_bbls" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_longton" class="" /></td>
					<td><input style="width:100px;" type="text" name="sfal_vs_sfbd_r2_metricton" class="" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_klobs" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_kl15" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_bbls" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_longton" /></td>
					<td><input style="width:100px;" type="text" class="" name="sfbd_vs_sr_r3_metricton" /></td>
				</tr>
				<tr>
					<td>c)</td>
					<td style="width:135px;">Shore Received vs Bill of Lading (R4)</td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_klobs" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_kl15" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_bbls" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_longton" /></td>
					<td><input style="width:100px;" type="text" class="" name="sr_vs_bol_r4_metricton" /></td>
				</tr>
			</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('17', 'quantity_crude_loading', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5;">&nbsp;</th>
<th style="width: 200px;">&nbsp;</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th>&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px; text-alignment: left;" colspan="6">BL Quantity</td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Gross Standard Volume</td>
<td><input class="" style="width: 100px;" name="bl_gsv_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_gsv_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_gsv_bbls" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_gsv_longton" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_gsv_metricton" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Net Standard Volume</td>
<td><input class="" style="width: 100px;" name="bl_nsv_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_nsv_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_nsv_bbls" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_nsv_longton" type="text" /></td>
<td><input class="" style="width: 100px;" name="bl_nsv_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>BL Figure based on</td>
<td colspan="10"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td>density@15&deg;C</td>
<td colspan="10"><input class="" style="width: 100%;" name="bl_15_derajat_celcius" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;" colspan="2">&nbsp;</td>
</tr>
<tr>
<td>Shore Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Shore Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Gross Standard Volume</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_gsv_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_gsv_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_gsv_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_gsv_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_gsv_metricton" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Net Standard Volume</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_nsv_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_nsv_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_nsv_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_nsv_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_nsv_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Shore Tanks Nomination</td>
<td colspan="5"><input onkeyup="hitung(this)" class="" name="sf_shore_tanks_nomination_klobs" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;" colspan="2">&nbsp;</td>
</tr>
<tr>
<td>Ship Figure</td>
<td>
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Onboard Quantity (OBQ)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="obq_quantity_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="obq_quantity_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="obq_quantity_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="obq_quantity_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="obq_quantity_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Ships Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_sfal_tov_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_sfal_tov_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_sfal_tov_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_sfal_tov_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_sfal_tov_metricton" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Free Water</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_free_water_al_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_free_water_al_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_free_water_al_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_free_water_al_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sf_free_water_al_metricton" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 150px;">Ships Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_gsv_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_gsv_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_gsv_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_gsv_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_gsv_metricton" type="text" /></td>
</tr>
<tr>
<td>e)</td>
<td style="width: 150px;">Ships Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_nsv_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_nsv_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_nsv_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_nsv_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sfal_nsv_metricton" type="text" /></td>
</tr>
<tr>
<td>f)</td>
<td style="width: 150px;">Vessel Experience Factor</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="vefl_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="vefl_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="vefl_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="vefl_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="vefl_metricton" type="text" /></td>
</tr>
<tr>
<td>g)</td>
<td style="width: 150px;">Ships Loaded (applied VEF-L)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_applied_vefl_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_applied_vefl_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_applied_vefl_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_applied_vefl_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_applied_vefl_metricton" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;" colspan="2">&nbsp;</td>
</tr>
<tr>
<td>Discrepancy</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Ships Loaded vs Bill of Lading (R1)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vs_bol_r1_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vs_bol_r1_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vs_bol_r1_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vs_bol_r1_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vs_bol_r1_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Ships Loaded (VEF applied) vs Bill of Lading (R1)</td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vef_applied_vs_bol_r1_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vef_applied_vs_bol_r1_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vef_applied_vs_bol_r1_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vef_applied_vs_bol_r1_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" class="" style="width: 100px;" name="sl_vef_applied_vs_bol_r1_metricton" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;" colspan="2">&nbsp;</td>
</tr>
<tr>
<td>Quality</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input class="" style="width: 100%;" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px;" name="date_of_analysis" data-date-format="dd/mm/yyyy" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a id="id_tb_surveyor" onclick="add_tb_certificate()" style="margin-bottom: 3px;" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width:100%;margin-bottom:2px;"></table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('18', 'quantity_crude_discharge', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 250px;">&nbsp;</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td colspan="6">BL Quantity</td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Gross Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_gsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Net Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_nsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_nsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_nsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_nsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_nsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">BL Figure based on</td>
<td colspan="10"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Shore Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Shore Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sq_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Gross Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_gsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="width: 150px;">Net Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_nsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_nsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_nsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_nsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_nsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sfal_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sfal_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sfal_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sfal_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_sfal_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td><!-- DIV -->
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Ship Figure Before Discharge</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Free Water</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Remaining On Board Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 150px;">Ship Figure Before Discharge</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>f)</td>
<td style="width: 150px;">Ship Figure Before Discharge</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_nsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_nsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_nsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_nsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_nsv_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Ship''s Loaded vs Bill of Lading (R1)</td>
<td><input style="width: 100px;" name="slvs_bol_r1_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="slvs_bol_r1_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="slvs_bol_r1_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="slvs_bol_r1_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="slvs_bol_r1_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
<td><input style="width: 100px;" name="sfal_vs_sfbd_r2_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sfbd_r2_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sfbd_r2_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sfbd_r2_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sfbd_r2_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
<td><input style="width: 100px;" class="" name="sfbd_vs_sr_r3_klobs" type="text" /></td>
<td><input style="width: 100px;" class="" name="sfbd_vs_sr_r3_kl15" type="text" /></td>
<td><input style="width: 100px;" class="" name="sfbd_vs_sr_r3_bbls" type="text" /></td>
<td><input style="width: 100px;" class="" name="sfbd_vs_sr_r3_longton" type="text" /></td>
<td><input style="width: 100px;" class="" name="sfbd_vs_sr_r3_metricton" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Shore Received vs Bill of Lading (R4)</td>
<td><input style="width: 100px;" class="" name="sr_vs_bol_r4_klobs" type="text" /></td>
<td><input style="width: 100px;" class="" name="sr_vs_bol_r4_kl15" type="text" /></td>
<td><input style="width: 100px;" class="" name="sr_vs_bol_r4_bbls" type="text" /></td>
<td><input style="width: 100px;" class="" name="sr_vs_bol_r4_longton" type="text" /></td>
<td><input style="width: 100px;" class="" name="sr_vs_bol_r4_metricton" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input style="width: 100%;" class="" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input style="min-width: 100px !important; width: 100px;" data-date-format="dd/mm/yyyy" class="datepicker" name="date_of_analysis" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a style="margin-bottom: 2px;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width: 100%; margin-left: -20px;"></table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}
	
	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>
</td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('19', 'quantity_product_loading', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 160px; text-align: left;"></th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td>BL Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td>density@15&deg;C</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="bl_15_derajat_celcius" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Shore Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Shore Quantity</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_metricton	" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Shore Tanks Nomination</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="st_nomination" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td><!-- DIV -->
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Onboard Quantity (OBQ)</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">b)</td>
<td style="width: 135px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">c)</td>
<td style="width: 135px;">Free Water After Loading</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">d)</td>
<td style="width: 135px;">Ship''s Loaded - GSV</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">e)</td>
<td style="width: 135px;">Vessel Experience Factor</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="vef_loading_bbls" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">f)</td>
<td style="width: 135px;">Ship''s Loaded (applied VEF-L)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sl_applied_vefl_bbls" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vs_bol_r1_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input style="width: 100%;" class="" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input style="min-width: 100px !important; width: 100px;" data-date-format="dd/mm/yyyy" class="datepicker" name="date_of_analysis" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a style="margin-bottom: 2px;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width: 100%; margin-left: -20px;"></table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>
</td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('20', 'quantity_product_discharge', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 160px; text-align: left;"></th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td style="width: 135px;">BL Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_metricton" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Shore Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Shore Received</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Shore Tanks Used</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="sf_stu" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">density@15&deg;C</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="sf_density_15c" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td><!-- DIV -->
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship Figure Before Discharge</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">b)</td>
<td style="width: 135px;">Free Water</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">c)</td>
<td style="width: 135px;">Remaining On Board Quantity (ROB)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">d)</td>
<td style="width: 135px;">Ship Figure Before Discharge</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vs_bol_r1_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
<td><input style="width: 100px;" name="sfal_vs_sf_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
<td><input style="width: 100px;" name="sfbd_vs_sr_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 135px;">Shore Received vs Bill of Lading (R4)</td>
<td><input style="width: 100px;" name="sr_vs_bol_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input style="width: 100%;" class="" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input style="min-width: 100px !important; width: 100px;" data-date-format="dd/mm/yyyy" class="datepicker" name="date_of_analysis" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a style="margin-bottom: 2px;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width: 100%; margin-left: -20px;"></table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>
</td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('21', 'quantity_crude_bunker_pipe', '<table>
<tbody>
<tr>
<td>Delivery Order (DO)</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 180px;">&nbsp;</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obsv</th>
<th style="width: 150px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="text-align: left;">&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td style="width: 150px;">Initial Readout</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="initial_readout_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="initial_readout_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="initial_readout_metric_tons" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 150px;">Final Readout</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="final_readout_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="final_readout_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="final_readout_metric_tons" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 150px;">Difference</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="difference_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="difference_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="difference_metric_tons" class="" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 150px;">Meter Factor</td>
<td colspan="3"><input onkeyup="hitung(this)" style="width: 100px;" name="meter_factor_klobs" class="" type="text" /></td>
</tr>
<tr>
<td>e)</td>
<td style="width: 150px;">Cord. Vol.Delivered</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="cord_vol_delivered_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="cord_vol_delivered_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="cord_vol_delivered_metric_tons" class="" type="text" /></td>
</tr>
<tr>
<td>f)</td>
<td style="width: 150px;">Density @15deg C</td>
<td colspan="3"><input onkeyup="hitung(this)" style="width: 100px;" name="density15deg_klobs" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">e)</td>
<td style="width: 180px;">Supply Loss (R4)</td>
<td style="width: 150px; text-align: left;"><input style="width: 100px;" name="supply_loss_klobs" class="" type="text" /></td>
<td style="width: 150px; text-align: left;"><input style="width: 100px;" name="supply_loss_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="supply_loss_metric_tons" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td>In Any</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('22', 'quantity_gas_loading', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 420px;">&nbsp;</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Gross Vol.</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Nett. Vol</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Calorie/MMBTU</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;GHV (Btu/kg)</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td>BL Quantity, Gross Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_gross_vol" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_nett_vol" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_metric_ton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_calorie_mmbtu" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_ghv" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td>Density</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="density" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Figure Before Loading, Tank Volume Corrected (m3)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbl_tank_volume_corrected" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>Ship''s Figure After Loading, Tank Volume Corrected (m3)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tank_volume_corrected" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td>Gauging Type</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="density" class="" type="text" /> <input name="gauging_type_capacitance" value="capacitance" type="checkbox" /> Capacitance <input name="gauging_type_float_gauge" value="float_gauge" type="checkbox" /> Float Gauge <input name="gauging_type_radar" value="radar" type="checkbox" /> Radar <input name="gauging_type_laser" value="laser" type="checkbox" /> Laser</td>
</tr>
<tr>
<td>d)</td>
<td>Transferred Volume)</td>
<td colspan="5">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Gross Standard Volume Loaded</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="gros_standard_volume_loaded" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Net Standard Volume Loaded</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="net_standard_volume_loaded" class="" type="text" /></td>
</tr>
<tr>
<td>e)</td>
<td>Thermal Expansion Factor</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="thermal_expansion_volume_loading" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Volume Of Gas Consumed During Loading</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Volume Gas During Loading (m3)</td>
<td><input style="width: 100px;" name="volume_gas_during_loading" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Energy of Gas Consummed (MMBTU)</td>
<td><input style="width: 100px;" name="energy_gas_consumed_during_loading" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Sample Source</td>
<td><input style="width: 100px;" name="quality_sample_source" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>Date Of Analysis</td>
<td><input style="width: 100px;" name="quality_date_of_analisys" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td>Sampling Method</td>
<td><input style="width: 100px;" name="quality_sampling_method" class="" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td>Analysis Results</td>
<td>
<table style="width: 500px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th>No.</th>
<th>Parameters</th>
<th>Mol %</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>C1</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_c1" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>2</td>
<td>C2</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_c2" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>3</td>
<td>C3</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_c3" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>4</td>
<td>i-C4</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_ic4" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>5</td>
<td>n-C4</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_nc4" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>6</td>
<td>i-C5</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_ic5" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>7</td>
<td>n-C5</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_nc5" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>8</td>
<td>N2</td>
<td><input onkeyup="hitung_total(this)" name="analysis_result_n2" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Total</td>
<td><input name="analysis_result_total" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>H2S</td>
<td><input onkeyup="hitung_total_sulfur(this)" name="analysis_result_h2s" style="width: 200px;" type="number" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Total Sulfur</td>
<td><input name="analysis_result_total_sulfur" style="width: 200px;" type="number" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function hitung_total(e) {
		// element value
		var analysis_result_c1  = parseInt(document.getElementsByName("analysis_result_c1")[0].value);
		var analysis_result_c2  = parseInt(document.getElementsByName("analysis_result_c2")[0].value);
		var analysis_result_c3  = parseInt(document.getElementsByName("analysis_result_c3")[0].value);
		var analysis_result_ic4 = parseInt(document.getElementsByName("analysis_result_ic4")[0].value);
		var analysis_result_nc4 = parseInt(document.getElementsByName("analysis_result_nc4")[0].value);
		var analysis_result_ic5 = parseInt(document.getElementsByName("analysis_result_ic5")[0].value);
		var analysis_result_nc5 = parseInt(document.getElementsByName("analysis_result_nc5")[0].value);
		var analysis_result_n2  = parseInt(document.getElementsByName("analysis_result_n2")[0].value);

		analysis_result_c1  = isNaN(analysis_result_c1) ? 0 : analysis_result_c1;
		analysis_result_c2  = isNaN(analysis_result_c2) ? 0 : analysis_result_c2;
		analysis_result_c3  = isNaN(analysis_result_c3) ? 0 : analysis_result_c3;
		analysis_result_ic4 = isNaN(analysis_result_ic4) ? 0 : analysis_result_ic4;
		analysis_result_nc4 = isNaN(analysis_result_nc4) ? 0 : analysis_result_nc4;
		analysis_result_ic5 = isNaN(analysis_result_ic5) ? 0 : analysis_result_ic5;
		analysis_result_nc5 = isNaN(analysis_result_nc5) ? 0 : analysis_result_nc5;
		analysis_result_n2  = isNaN(analysis_result_n2) ? 0 : analysis_result_n2;

		// total
		var analysis_result_total = document.getElementsByName("analysis_result_total")[0];
		var total = analysis_result_c1+analysis_result_c2+analysis_result_c3+analysis_result_ic4+analysis_result_nc4+analysis_result_ic5+analysis_result_nc5+analysis_result_n2;
		analysis_result_total.value = total;
	}

	function hitung_total_sulfur(e) {
		// total sulfur
		var analysis_result_h2s = document.getElementsByName("analysis_result_h2s")[0].value;
		var analysis_result_total_sulfur = document.getElementsByName("analysis_result_total_sulfur")[0];
		analysis_result_total_sulfur.value = isNaN(analysis_result_h2s) ? 0 : analysis_result_h2s;
	}

	function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('23', 'quantity_gas_discharge', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 420px;">&nbsp;</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Gross Vol.</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Nett. Vol</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Calorie/MMBTU</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;GHV (Btu/kg)</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td>BL Quantity, Gross Standard Volume</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_gross_vol" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_nett_vol" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_metric_ton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_calorie_mmbtu" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="gsv_ghv" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td>Density</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="density" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>Ship Figure</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Figure Before UnLoading, Tank Volume Corrected (m3)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbul_tank_volume_corrected" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>Ship''s Figure After UnLoading, Tank Volume Corrected (m3)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sfaul_tank_volume_corrected" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td>Gauging Type</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="density" class="" type="text" /> <input name="gauging_type_capacitance" value="capacitance" type="checkbox" /> Capacitance <input name="gauging_type_float_gauge" value="float_gauge" type="checkbox" /> Float Gauge <input name="gauging_type_radar" value="radar" type="checkbox" /> Radar <input name="gauging_type_laser" value="laser" type="checkbox" /> Laser</td>
</tr>
<tr>
<td>d)</td>
<td>Transferred Volume)</td>
<td colspan="5">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Gross Standard Volume UnLoaded</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="gros_standard_volume_unloaded" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Net Standard Volume UnLoaded</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="net_standard_volume_unloaded" class="" type="text" /></td>
</tr>
<tr>
<td>e)</td>
<td>Thermal Expansion Factor - UnLoading</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="thermal_expansion_factor_unloading" class="" type="text" /></td>
</tr>
<tr>
<td>f)</td>
<td>Nominated Ship''s Tanks used</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="nominated_ship_tank_used" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Volume Of Gas Consumed During UnLoading</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Volume Gas During UnLoading (m3)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="volume_gas_during_unloading" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>Energy of Gas Consummed (MMBTU)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="energy_gas_consumed_during_unloading" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Volume Gas Consummed Voyage</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Volume After Loaded (m3)</td>
<td><input style="width: 100px;" name="volume_after_loaded" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>Volume before Unloaded (m3)</td>
<td><input style="width: 100px;" name="volume_before_unloaded" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td>Voyage Consumption (m3)</td>
<td><input style="width: 100px;" name="voyage_consumption" class="" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><b>Total BOG Consummed Voyage (m3)</b></td>
<td><input style="width: 100px;" name="voyage_consumption" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('24', 'quantity_petrokimia_loading', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 160px; text-align: left;"></th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td>BL Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td>BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td>density@15&deg;C</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="bl_15_derajat_celcius" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Shore Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Shore Quantity</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_quantity_metricton	" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Shore Tanks Nomination</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="st_nomination" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td><!-- DIV -->
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Onboard Quantity (OBQ)</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="obq_quantity_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">b)</td>
<td style="width: 135px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfal_tov_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">c)</td>
<td style="width: 135px;">Free Water After Loading</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="fwal_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">d)</td>
<td style="width: 135px;">Ship''s Loaded</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sl_gsv_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">e)</td>
<td style="width: 135px;">Vessel Experience Factor</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="vef_loading_bbls" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">f)</td>
<td style="width: 135px;">Ship''s Loaded (applied VEF-L)</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100px;" name="sl_applied_vefl_bbls" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vs_bol_r1_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Ship''s Loaded (VEF applied) vs Bill of Lading (R1)</td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vef_applied_vs_bol_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input style="width: 100%;" class="" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input style="min-width: 100px !important; width: 100px;" data-date-format="dd/mm/yyyy" class="datepicker" name="date_of_analysis" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a style="margin-bottom: 2px;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width: 100%; margin-left: -20px;"></table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
	$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
}

function delete_tb_certificate(e) {
	$(e).parent().parent().parent().parent().remove();
}
// ]]></script>
</td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('25', 'quantity_petrokimia_discharge', '<table>
<tbody>
<tr>
<td>BL Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 160px; text-align: left;"></th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obs</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;BBLS @60&deg;F</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;Long Ton</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td style="width: 135px;">BL Quantity</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_quantity_metricton" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">BL Figure based on</td>
<td colspan="5"><input name="bl_flow_meter" value="Y" type="checkbox" /> Flow Meter <input name="bl_shore_tank" value="Y" type="checkbox" /> Shore Tank <input name="bl_ship_tank" value="Y" type="checkbox" /> Ship Tank</td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Ship''s Figure After Loading (SFAL)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_klobs" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_kl15" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_bbls" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_longton" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="bl_sfal_metricton" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Shore Figure</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Shore Received</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sf_shore_received_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Shore Tanks Used</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="sf_stu" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">density@15&deg;C</td>
<td colspan="5"><input onkeyup="hitung(this)" style="width: 100%;" name="sf_density_15c" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Ship Figure</td>
<td><!-- DIV -->
<table style="width: 900px !important; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship Figure Before Discharge - TOV</td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_tov_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">b)</td>
<td style="width: 135px;">Free Water</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="free_water_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">c)</td>
<td style="width: 135px;">Remaining On Board Quantity (ROB)</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="robq_metricton" class="" type="text" /></td>
</tr>
<tr>
<td style="width: 10px;">d)</td>
<td style="width: 135px;">Ship Figure Before Discharge</td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_klobs" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_kl15" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_bbls" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_longton" class="" type="text" /></td>
<td><input onkeyup="hitung(this)" style="width: 100px;" name="sfbd_gsv_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Discrepancy</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 160px;">Ship''s Loaded vs Bill of Lading (R1)</td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_klobs" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_kl15" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_bbls" class="" type="text" /></td>
<td style="width: 160px;"><input style="width: 100px;" name="sl_vs_bol_r1_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sl_vs_bol_r1_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Ship''s Fig. After Loading vs Ship''s Fig. Before Discharge (R2)</td>
<td><input style="width: 100px;" name="sfal_vs_sf_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfal_vs_sf_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Ship''s Fig. Before Discharge vs Shore Received (R3)</td>
<td><input style="width: 100px;" name="sfbd_vs_sr_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sfbd_vs_sr_metricton" class="" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 135px;">Shore Received vs Bill of Lading (R4)</td>
<td><input style="width: 100px;" name="sr_vs_bol_klobs" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_kl15" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_bbls" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_longton" class="" type="text" /></td>
<td><input style="width: 100px;" name="sr_vs_bol_metricton" class="" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 10px;"></td>
</tr>
<tr>
<td>Quality</td>
<td><!-- DIV -->
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 135px;">Sample Source</td>
<td><input style="width: 100%;" class="" name="sample_source" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Date of Analysis</td>
<td><input style="min-width: 100px !important; width: 100px;" data-date-format="dd/mm/yyyy" class="datepicker" name="date_of_analysis" type="text" /></td>
</tr>
<tr>
<td style="width: 135px;">Certificate Of Quality</td>
<td><a style="margin-bottom: 2px;" class="btn btn-success btn-xs" onclick="add_tb_certificate()"><i class="fa fa-plus"></i></a>
<table id="tb_certificate" style="width: 100%; margin-left: -20px;"></table>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
	$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
}

function delete_tb_certificate(e) {
	$(e).parent().parent().parent().parent().remove();
}
// ]]></script>
</td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('26', 'quantity_crude_bunker_vessel', '<table>
<tbody>
<tr>
<td>Delivery Order (DO)</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<thead>
<tr>
<th style="width: 5px;">&nbsp;</th>
<th style="width: 135px;">&nbsp;</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @obsv</th>
<th style="width: 160px; text-align: left;">&nbsp;&nbsp;&nbsp;KL @15&deg; C</th>
<th style="text-align: left;">&nbsp;&nbsp;&nbsp;Metric Ton</th>
</tr>
</thead>
<tbody>
<tr>
<td>a)</td>
<td style="width: 135px;">Initial Readout</td>
<td><input class="" style="width: 100px;" name="initial_readout_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="initial_readout_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="initial_readout_metric_tons" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Final Readout</td>
<td><input class="" style="width: 100px;" name="final_readout_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="final_readout_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="final_readout_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Difference</td>
<td><input class="" style="width: 100px;" name="difference_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="difference_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="difference_metric_tons" type="text" /></td>
</tr>
<tr>
<td>d)</td>
<td style="width: 135px;">Meter Factor</td>
<td colspan="3"><input class="" style="width: 100px;" name="meter_factor_klobs" type="text" /></td>
</tr>
<tr>
<td>e)</td>
<td style="width: 135px;">Cord. Vol.Delivered</td>
<td><input class="" style="width: 100px;" name="cord_vol_delivered_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="cord_vol_delivered_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="cord_vol_delivered_metric_tons" type="text" /></td>
</tr>
<tr>
<td>f)</td>
<td style="width: 135px;">Density @15deg C</td>
<td colspan="3"><input class="" style="width: 100px;" name="density15deg_klobs" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;">&nbsp;</td>
</tr>
<tr>
<td>Transporter (Barge Quantity)</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 135px;">@loading - Barge Before Loading</td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="barge_before_loading_klobs" type="text" /></td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="barge_before_loading_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_before_loading_metric_tons" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">@loading - Barge After Loading</td>
<td><input class="" style="width: 100px;" name="barge_after_loading_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_loading_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_loading_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">@loading - Barge Loaded</td>
<td><input class="" style="width: 100px;" name="barge_loaded_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_loaded_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_loaded_metric_tons" type="text" /></td>
</tr>
<tr>
<td>a)</td>
<td style="width: 135px;">@discharge - Barge Before discharge</td>
<td><input class="" style="width: 100px;" name="barge_before_discharge_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_before_discharge_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_before_discharge_metric_tons" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">@discharge - Barge After discharge</td>
<td><input class="" style="width: 100px;" name="barge_after_discharge_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_discharge_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_discharge_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">@discharge - Barge Discharged</td>
<td><input class="" style="width: 100px;" name="barge_discharge_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_discharge_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_discharge_metric_tons" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;">&nbsp;</td>
</tr>
<tr>
<td>Outturn (Ship''''s Quantity)</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 135px;">Ship Before Receive</td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="barge_before_receive_klobs" type="text" /></td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="barge_before_receive_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_before_receive_metric_tons" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Ship After Receive</td>
<td><input class="" style="width: 100px;" name="barge_after_receive_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_receive_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_after_receive_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Ship Received</td>
<td><input class="" style="width: 100px;" name="barge_receive_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_receive_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="barge_receive_metric_tons" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;">&nbsp;</td>
</tr>
<tr>
<td>Discrepancy</td>
<td>
<table style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<td style="width: 5px;">a)</td>
<td style="width: 135px;">Loading Loss (R1)</td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="loading_loss_r1_klobs" type="text" /></td>
<td style="width: 160px;"><input class="" style="width: 100px;" name="loading_loss_r1_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="loading_loss_r1_metric_tons" type="text" /></td>
</tr>
<tr>
<td>b)</td>
<td style="width: 135px;">Transportation Loss (R2)</td>
<td><input class="" style="width: 100px;" name="transportation_loss_r2_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="transportation_loss_r2_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="transportation_loss_r2_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Discharge Loss (R3)</td>
<td><input class="" style="width: 100px;" name="discharge_loss_r3_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="discharge_loss_r3_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="discharge_loss_r3_metric_tons" type="text" /></td>
</tr>
<tr>
<td>c)</td>
<td style="width: 135px;">Supply Loss (R4)</td>
<td><input class="" style="width: 100px;" name="supply_loss_r4_klobs" type="text" /></td>
<td><input class="" style="width: 100px;" name="supply_loss_r4_kl15" type="text" /></td>
<td><input class="" style="width: 100px;" name="supply_loss_r4_metric_tons" type="text" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style="height: 10px;">&nbsp;</td>
</tr>
<tr>
<td>Quality</td>
<td>In Any</td>
</tr>
</tbody>
</table>
<script type="text/javascript">// <![CDATA[
function add_tb_certificate() {
		$("#tb_certificate").append(''<tr><td><table style="width:100%;margin-bottom:2px;"><tr><td style="width:100px;"><input type="file" name="fsoq[]" /></td><td><a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr></table></td></tr>'');
	}

	function delete_tb_certificate(e) {
		$(e).parent().parent().parent().parent().remove();
	}
// ]]></script>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('27', 'Timelog Product Discharge', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Pilot On Board (for Berthing)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_pob" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_pob" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_pob" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Anchors Aweigh</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_a_aweigh" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_a_aweigh" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_a_aweigh" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Vessel Berthing</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthing" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthing" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthing" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Tanks Inspection and Calc. Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inpection_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inpection_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inpection_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Tanks Inspection and Calc. Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspection_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspection_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspection_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Sampling Before Discharge Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Sampling Before Discharge Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_completed" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Discharge commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_commenced" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Discharge completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_completed" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_disconnected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_disconnected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_disconnected" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Tanks Inspection Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_commenced" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_completed" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>Surveyour Left Vessel</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_svy_left_vessel" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_svy_left_vessel" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_svy_left_vessel" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>Vessel sail</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sail" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sail" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sail" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('28', 'Timelog Petrokimia Loading', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Vessel Berthed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Tanks Inspection commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_commenced" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_completed" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Hose Connected commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Loading commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Loading completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Sampling Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_commenced" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Sampling Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_completed" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Cargo measurement Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_measurement_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_measurement_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_measurement_commenced" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Cargo measurement Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_measurement_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_measurement_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_measurement_completed" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Vessel sailed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sailed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sailed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sailed" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('29', 'Timelog Petrokimia Discharge', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Pilot On Board (for Berthing)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_pob" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_pob" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_pob" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Anchors Aweigh</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_a_aweigh" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_a_aweigh" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_a_aweigh" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Vessel Berthing</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthing" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthing" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthing" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Tanks Inspection and Calc. Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inpection_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inpection_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inpection_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Tanks Inspection and Calc. Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspection_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspection_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspection_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Sampling Before Discharge Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Sampling Before Discharge Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_completed" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Discharge commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_commenced" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Discharge completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_completed" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_disconnected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_disconnected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_disconnected" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Tanks Inspection Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_commenced" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_completed" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>Surveyour Left Vessel</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_svy_left_vessel" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_svy_left_vessel" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_svy_left_vessel" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>Vessel sail</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sail" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sail" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sail" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('30', 'Timelog Gas Loading', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>@Loading - Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>@Loading - Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_vessel_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_vessel_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_vessel_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>@Loading - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>@Loading - NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_nor_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_nor_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_nor_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>@Loading - Vessel Berthed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_vessel_berthed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_vessel_berthed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_vessel_berthed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>@Loading - Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>@Loading - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_key_meeting" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>@Loading - Connection of Vapor Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_connection_of_vapor_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_connection_of_vapor_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_connection_of_vapor_arms_commence" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>@Loading - Connection of Vapor Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_connection_of_vapor_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_connection_of_vapor_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_connection_of_vapor_arms_completed" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>@Loading - Connection of Liquid Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_connection_of_liquid_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_connection_of_liquid_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_connection_of_liquid_arms_commence" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>@Loading - Connection of Liquid Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_connection_of_liquid_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_connection_of_liquid_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_connection_of_liquid_arms_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>@Loading - Cool down of Loading Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_cool_down_of_loading_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_cool_down_of_loading_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_cool_down_of_loading_arms_commence" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>@Loading - Cool down of Loading Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_cool_down_of_loading_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_cool_down_of_loading_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_cool_down_of_loading_arms_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>@Loading - Opening Custody Transfer Inspection</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_opening_custody_transfer_inspection" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_opening_custody_transfer_inspection" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_opening_custody_transfer_inspection" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>@Loading - Commenced Loading of Cargo</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_commenced_loading_of_cargo" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_commenced_loading_of_cargo" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_commenced_loading_of_cargo" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>@Loading - Completed Loading of Cargo</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_completed_loading_of_cargo" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_completed_loading_of_cargo" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_completed_loading_of_cargo" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>@Loading - Disconnection of Vapor Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_disconnection_of_vapor_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_disconnection_of_vapor_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_disconnection_of_vapor_arms_commence" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>@Loading - Disconnection of Vapor Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_disconnection_of_vapor_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_disconnection_of_vapor_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_disconnection_of_vapor_arms_completed" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>@Loading - Disconnection of Liquid Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_disconnection_of_liquid_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_disconnection_of_liquid_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_disconnection_of_liquid_arms_commence" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>@Loading - Disconnection of Liquid Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_disconnection_of_liquid_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_disconnection_of_liquid_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_disconnection_of_liquid_arms_completed" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>@Loading - Closing Custody Transfer Inspection</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_closing_custody_transfer_inspection" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_closing_custody_transfer_inspection" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_closing_custody_transfer_inspection" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>@Loading - Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>@Loading - Vessel sailed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_gas_vessel_sailed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_gas_vessel_sailed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_gas_vessel_sailed" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('31', 'Timelog Gas Discharge', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>@Discharge - Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>@Discharge - Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_vessel_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_vessel_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_vessel_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>@Discharge - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>@Discharge - NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_nor_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_nor_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_nor_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>@Discharge - Vessel Berthed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_vessel_berthed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_vessel_berthed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_vessel_berthed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>@Discharge - Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>@Discharge - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_key_meeting" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>@Discharge - Connection of Vapor Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_connection_of_vapor_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_connection_of_vapor_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_connection_of_vapor_arms_commence" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>@Discharge - Connection of Vapor Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_connection_of_vapor_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_connection_of_vapor_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_connection_of_vapor_arms_completed" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>@Discharge - Connection of Liquid Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_connection_of_liquid_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_connection_of_liquid_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_connection_of_liquid_arms_commence" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>@Discharge - Connection of Liquid Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_connection_of_liquid_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_connection_of_liquid_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_connection_of_liquid_arms_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>@Discharge - Cool down of Loading Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_cool_down_of_discharge_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_cool_down_of_discharge_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_cool_down_of_discharge_arms_commence" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>@Discharge - Cool down of Loading Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_cool_down_of_discharge_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_cool_down_of_discharge_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_cool_down_of_discharge_arms_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>@Discharge - Opening Custody Transfer Inspection</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_opening_custody_transfer_inspection" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_opening_custody_transfer_inspection" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_opening_custody_transfer_inspection" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>@Discharge - Commenced Loading of Cargo</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_commenced_discharge_of_cargo" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_commenced_discharge_of_cargo" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_commenced_discharge_of_cargo" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>@Discharge - Completed Loading of Cargo</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_completed_discharge_of_cargo" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_completed_discharge_of_cargo" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_completed_discharge_of_cargo" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>@Discharge - Disconnection of Vapor Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_disconnection_of_vapor_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_disconnection_of_vapor_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_disconnection_of_vapor_arms_commence" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>@Discharge - Disconnection of Vapor Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_disconnection_of_vapor_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_disconnection_of_vapor_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_disconnection_of_vapor_arms_completed" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>@Discharge - Disconnection of Liquid Arms Commence</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_disconnection_of_liquid_arms_commence" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_disconnection_of_liquid_arms_commence" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_disconnection_of_liquid_arms_commence" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>@Discharge - Disconnection of Liquid Arms Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_disconnection_of_liquid_arms_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_disconnection_of_liquid_arms_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_disconnection_of_liquid_arms_completed" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>@Discharge - Closing Custody Transfer Inspection</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_closing_custody_transfer_inspection" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_closing_custody_transfer_inspection" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_closing_custody_transfer_inspection" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>@Discharge - Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>@Discharge - Vessel sailed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_gas_vessel_sailed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_gas_vessel_sailed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_gas_vessel_sailed" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('32', 'Timelog Crude Loading', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Vessel Berthed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Tanks Inspection Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inpection_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inpection_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inpection_commenced" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspection_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspection_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspection_completed" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Hose Connected Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Loading commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Loading completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_disconnected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_disconnected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_disconnected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Sampling Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_commenced" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Sampling Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_completed" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Cargo measurement Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_cargo_measurement_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_cargo_measurement_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_cargo_measurement_commenced" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Cargo measurement Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_cargo_measurement_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_cargo_measurement_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_cargo_measurement_completed" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Vessel sailed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sailed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sailed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sailed" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('34', 'TImelog Crude Discharge', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Pilot On Board (for Berthing)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_pob" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_pob" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_pob" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Anchors Aweigh</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_a_aweigh" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_a_aweigh" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_a_aweigh" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Vessel Berthing</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthing" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthing" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthing" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Tanks Inspection and Calc. Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inpection_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inpection_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inpection_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Tanks Inspection and Calc. Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspection_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspection_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspection_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Sampling Before Discharge Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Sampling Before Discharge Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sbd_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sbd_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sbd_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_completed" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Discharge commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_commenced" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Discharge completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_completed" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_disconnected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_disconnected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_disconnected" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Tanks Inspection Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_commenced" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_ins_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_ins_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_ins_completed" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>Surveyour Left Vessel</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_svy_left_vessel" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_svy_left_vessel" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_svy_left_vessel" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>Vessel sail</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sail" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sail" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sail" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('35', 'Timelog Crude Bunker Vessel', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>@Loading - Barge Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_barge_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_barge_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_barge_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>@Loading - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>@Loading - Barge All Fast / Alongside</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_barge_all_fast_alongside" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_barge_all_fast_alongside" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_barge_all_fast_alongside" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>@Loading - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_key_meeting" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>@Loading - Valve Seealed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_valve_seealed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_valve_seealed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_valve_seealed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>@Loading - Tank Inspection and Measurement - Initial @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_measure" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_measure" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_measure" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>@Loading - Tank Inspection and Meter Verification - Initial @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_meter_verf" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_meter_verf" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_meter_verf" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>@Loading - Hose(s) Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_host_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_host_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_host_connected" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>@Loading - Loading Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_loading_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>@Loading - Loading Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_loading_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_loading_completed" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>@Loading - Hose(s) Arms Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_date_loading_hose_arms_disconnect" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_hose_arms_disconnect" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_date_loading_hose_arms_disconnect" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>@Loading - Visual Inspection &amp; Sampling - @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_visual_inspec_sampl" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_visual_inspec_sampl" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_visual_inspec_sampl" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>@Loading - Tank Inspection and Measurement - Final @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_measr_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_measr_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_measr_final" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>@Loading - Tank Inspection and Meter Verification - Final @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_meter_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_meter_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_meter_final" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>@Loading - Calculation completed &amp; Documents onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_calcul_completed_doc_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_calcul_completed_doc_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_calcul_completed_doc_onboard" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>@Loading - Barge Leave Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_barge_leave_depot" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_barge_leave_depot" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_barge_leave_depot" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>@discharge - Barge Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_barge_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_barge_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_barge_arrived" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>@discharge - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>@discharge - Barge All Fast / Alongside</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_barge_all_fast_alongside" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_barge_all_fast_alongside" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_barge_all_fast_alongside" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>@discharge - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_key_meeting" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>@discharge - Valve Seealed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_valve_seealed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_valve_seealed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_valve_seealed" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>@discharge - Tank Inspection and Measurement - Initial @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_measure" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_measure" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_measure" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>@discharge - Tank Inspection and Meter Verification - Initial @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_meter_verf" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_meter_verf" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_meter_verf" type="text" /></td>
</tr>
<tr>
<td>24</td>
<td>@discharge - Hose(s) Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_host_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_host_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_host_connected" type="text" /></td>
</tr>
<tr>
<td>25</td>
<td>@discharge - bunker Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_bunker_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_bunker_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_bunker_commenced" type="text" /></td>
</tr>
<tr>
<td>26</td>
<td>@discharge - bunker Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_bunker_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_bunker_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_bunker_completed" type="text" /></td>
</tr>
<tr>
<td>27</td>
<td>@discharge - Hose(s) Arms Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_date_discharge_hose_arms_disconnect" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_hose_arms_disconnect" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_date_discharge_hose_arms_disconnect" type="text" /></td>
</tr>
<tr>
<td>28</td>
<td>@discharge - Visual Inspection &amp; Sampling - @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_visual_inspec_sampl" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_visual_inspec_sampl" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_visual_inspec_sampl" type="text" /></td>
</tr>
<tr>
<td>29</td>
<td>@discharge - Tank Inspection and Measurement - Final @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_measr_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_measr_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_measr_final" type="text" /></td>
</tr>
<tr>
<td>30</td>
<td>@discharge - Tank Inspection and Meter Verification - Final @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_meter_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_meter_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_meter_final" type="text" /></td>
</tr>
<tr>
<td>31</td>
<td>@discharge - Calculation completed &amp; Documents onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_calcul_completed_doc_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_calcul_completed_doc_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_calcul_completed_doc_onboard" type="text" /></td>
</tr>
<tr>
<td>32</td>
<td>@discharge - Barge Leave Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_barge_leave_ship" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_barge_leave_ship" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_barge_leave_ship" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>
<div id="selenium-highlight">&nbsp;</div>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('36', 'Timelog Crude Bunker Pipe', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>@Loading - Barge Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_barge_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_barge_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_barge_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>@Loading - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>@Loading - Barge All Fast / Alongside</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_barge_all_fast_alongside" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_barge_all_fast_alongside" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_barge_all_fast_alongside" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>@Loading - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_key_meeting" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>@Loading - Nor Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_nor_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_nor_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_nor_accepted" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>@Loading - Valve Seealed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_valve_seealed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_valve_seealed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_valve_seealed" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>@Loading - Tank Inspection and Meter Verification - Initial @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_meter_verification" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_meter_verification" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_meter_verification" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>@Loading - Hose Connected - Initial @Depot</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>@Loading - Hose(s) Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_host_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_host_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_host_connected" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>@Loading - Loading Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_loading_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>@Loading - Loading Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_loading_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_loading_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>@Loading - Hose(s) Arms Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_date_loading_hose_arms_disconnect" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_hose_arms_disconnect" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_date_loading_hose_arms_disconnect" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>@Loading - Tank Inspection and Meter Verification - Final @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_tank_inspect_meter_verification_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_tank_inspect_meter_verification_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_tank_inspect_meter_verification_final" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>@Loading - Calculation completed &amp; Documents onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_calcul_completed_doc_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_calcul_completed_doc_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_calcul_completed_doc_onboard" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>@discharge - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_barge_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_barge_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_barge_arrived" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>@discharge - NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_nor_tendered" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_nor_tendered" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_nor_tendered" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>@discharge - Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_key_meeting" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>@discharge - NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_nor_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_nor_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_nor_accepted" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>@discharge - Valve Seealed @Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_valve_seealed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_valve_seealed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_valve_seealed" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>@discharge - Tank Inspection and Measurement - Initial @Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_measure" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_measure" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_measure" type="text" /></td>
</tr>
<tr>
<td>21</td>
<td>@discharge - Visual Inspection Sampling @Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_visual_inspection_sampling" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_visual_inspection_sampling" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_visual_inspection_sampling" type="text" /></td>
</tr>
<tr>
<td>22</td>
<td>@discharge - Hose(s) Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_host_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_host_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_host_connected" type="text" /></td>
</tr>
<tr>
<td>23</td>
<td>@discharge - bunker Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_bunker_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_bunker_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_bunker_commenced" type="text" /></td>
</tr>
<tr>
<td>24</td>
<td>@discharge - bunker Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_bunker_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_bunker_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_bunker_completed" type="text" /></td>
</tr>
<tr>
<td>25</td>
<td>@discharge - Hose(s) Arms Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_date_discharge_hose_disconnect" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_hose_disconnect" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_date_discharge_hose_disconnect" type="text" /></td>
</tr>
<tr>
<td>26</td>
<td>@discharge - Tank Inspection and Measurement - Final @Barge</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_tank_inspect_measr_final" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_tank_inspect_measr_final" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_tank_inspect_measr_final" type="text" /></td>
</tr>
<tr>
<td>27</td>
<td>@discharge - Visual Inspection &amp; Sampling @Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_visual_inspection_sampling" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_visual_inspection_sampling" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_visual_inspection_sampling" type="text" /></td>
</tr>
<tr>
<td>28</td>
<td>@discharge - Calculation completed &amp; Documents onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_calcul_completed_doc_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_calcul_completed_doc_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_calcul_completed_doc_onboard" type="text" /></td>
</tr>
<tr>
<td>29</td>
<td>@discharge - Barge Leave Ship</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_discharge_barge_leave_ship" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_discharge_barge_leave_ship" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_discharge_barge_leave_ship" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('37', 'Timelog Product Loading', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Vessel Arrived</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_arrived" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_arrived" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_arrived" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Vessel Anchoraged</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_anchoraged" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_anchoraged" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_anchoraged" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>NOR Tendered</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_nor" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_nor" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_nor" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>NOR Accepted</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_accepted" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_accepted" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_accepted" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Vessel Berthed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_berthed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_berthed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_berthed" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Surveyor on Board</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_surveyor_on_board" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_surveyor_on_board" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_surveyor_on_board" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Key Meeting</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_key_meeting" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_key_meeting" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_key_meeting" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Tanks Inspection commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_commenced" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Tanks Inspection Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_completed" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Hose Connected commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_commenced" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Hose Connected completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_connected_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_connected_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_connected_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Loading commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Loading completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_completed" type="text" /></td>
</tr>
<tr>
<td>14</td>
<td>Hose Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>15</td>
<td>Sampling Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_commenced" type="text" /></td>
</tr>
<tr>
<td>16</td>
<td>Sampling Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_completed" type="text" /></td>
</tr>
<tr>
<td>17</td>
<td>Cargo measurement Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_measurement_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_measurement_commenced" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_measurement_commenced" type="text" /></td>
</tr>
<tr>
<td>18</td>
<td>Cargo measurement Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_measurement_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_measurement_completed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_measurement_completed" type="text" /></td>
</tr>
<tr>
<td>19</td>
<td>Documents Onboard</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_documents_onboard" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_documents_onboard" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_documents_onboard" type="text" /></td>
</tr>
<tr>
<td>20</td>
<td>Vessel sailed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_vessel_sailed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_vessel_sailed" type="text" data-date-format="dd/mm/yyyy" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_vessel_sailed" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('38', 'Timelog Crude Trucking Loading', '<table id="table_list_timelog" style="width: 900px; border-collapse: separate; border-spacing: 8px; border: 4px solid #ccc; border-radius: 5px;">
<tbody>
<tr>
<th style="width: 25px;"><center>No</center></th>
<th style="width: 250px;">&nbsp;&nbsp;Activities</th>
<th style="width: 80px;">Time</th>
<th style="width: 100px;">Date</th>
<th>Remarks/Delays/Etc</th>
</tr>
<tr>
<td>1</td>
<td>Tank Truck on Terminal</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_truck_on_terminal" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_truck_on_terminal" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_truck_on_terminal" type="text" /></td>
</tr>
<tr>
<td>2</td>
<td>Inspector On Terminal</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspector_on_terminal" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspector_on_terminal" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspector_on_terminal" type="text" /></td>
</tr>
<tr>
<td>3</td>
<td>Tank Inspection (Loading)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tanks_inspection_loading" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tanks_inspection_loading" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tanks_inspection_loading" type="text" /></td>
</tr>
<tr>
<td>4</td>
<td>Hoses Connected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_connected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_connected" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_connected" type="text" /></td>
</tr>
<tr>
<td>5</td>
<td>Sampling (Unloading)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_unloading" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_unloading" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_unloading" type="text" /></td>
</tr>
<tr>
<td>6</td>
<td>Ullages / Dips Commenced (Loading)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_ullages_commenced_loading" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_ullages_commenced_loading" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_ullages_commenced_loading" type="text" /></td>
</tr>
<tr>
<td>7</td>
<td>Loading Commenced</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_commenced" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_commenced" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_commenced" type="text" /></td>
</tr>
<tr>
<td>8</td>
<td>Loading Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_loading_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_loading_completed" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_loading_completed" type="text" /></td>
</tr>
<tr>
<td>9</td>
<td>Hoses Disconnected</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_hose_disconnected" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_hose_disconnected" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_hose_disconnected" type="text" /></td>
</tr>
<tr>
<td>10</td>
<td>Sampling (Loading)</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_sampling_loading" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_sampling_loading" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_sampling_loading" type="text" /></td>
</tr>
<tr>
<td>11</td>
<td>Document Completed</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_document_completed" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_document_completed" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_document_completed" type="text" /></td>
</tr>
<tr>
<td>12</td>
<td>Tank Truck Left Terminal</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_tank_truck_left_terminal" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_tank_truck_left_terminal" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_tank_truck_left_terminal" type="text" /></td>
</tr>
<tr>
<td>13</td>
<td>Inspector Left Terminal</td>
<td><input class="timepicker" style="margin-left: -10px; width: 60px;" name="time_inspector_left_terminal" type="text" /></td>
<td><input class="datepicker" style="min-width: 100px !important; width: 100px; margin-left: -10px;" name="date_inspector_left_terminal" data-date-format="dd/mm/yyyy" type="text" /></td>
<td><input class="" style="margin-left: -10px; width: 100%;" name="remarks_inspector_left_terminal" type="text" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Remarks</td>
<td colspan="3"><input style="margin-left: -10px; width: 100%;" name="activities_remarks" type="text" /></td>
</tr>
</tbody>
</table>', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_HTML" VALUES ('39', 'Quantity Product Trucking Loading', '', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."KOMPONEN_JSON"
-- ----------------------------
DROP TABLE "public"."KOMPONEN_JSON";
CREATE TABLE "public"."KOMPONEN_JSON" (
"ID" int4 DEFAULT nextval('"KOMPONEN_JSON_ID_seq"'::regclass) NOT NULL,
"NAME" text,
"DATA" jsonb,
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
-- Records of KOMPONEN_JSON
-- ----------------------------
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('1', 'timelog_product_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_commenced", "time": "time_commenced", "tr_css": "", "remarks": "remarks_commenced", "activities": "Tanks Inspection commenced "}, {"date": "date_completed", "time": "time_completed", "tr_css": "", "remarks": "remarks_completed", "activities": "Tanks Inspection Completed "}, {"date": "date_connected_commenced", "time": "time_connected_commenced", "tr_css": "", "remarks": "remarks_connected_commenced", "activities": "Hose Connected commenced"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_measurement_commenced", "time": "time_measurement_commenced", "tr_css": "", "remarks": "remarks_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_measurement_completed", "time": "time_measurement_completed", "tr_css": "", "remarks": "remarks_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('2', 'timelog_product_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('3', 'timelog_crude_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_hose_connected_commenced", "time": "time_hose_connected_commenced", "tr_css": "", "remarks": "remarks_hose_connected_commenced", "activities": "Hose Connected Commenced"}, {"date": "date_hose_connected_completed", "time": "time_hose_connected_completed", "tr_css": "", "remarks": "remarks_hose_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_cargo_measurement_commenced", "time": "time_cargo_measurement_commenced", "tr_css": "", "remarks": "remarks_cargo_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_cargo_measurement_completed", "time": "time_cargo_measurement_completed", "tr_css": "", "remarks": "remarks_cargo_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('4', 'timelog_crude_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('5', 'timelog_crude_bunker_pipe', '[{"date": "date_loading_barge_arrived", "time": "time_loading_barge_arrived", "tr_css": "", "remarks": "remarks_loading_barge_arrived", "activities": "@Loading - Barge Arrived"}, {"date": "date_loading_nor_tendered", "time": "time_loading_nor_tendered", "tr_css": "", "remarks": "remarks_loading_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_barge_all_fast_alongside", "time": "time_loading_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_loading_barge_all_fast_alongside", "activities": "@Loading - Barge All Fast / Alongside"}, {"date": "date_loading_key_meeting", "time": "time_loading_key_meeting", "tr_css": "", "remarks": "remarks_loading_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_nor_accepted", "time": "time_loading_nor_accepted", "tr_css": "", "remarks": "remarks_loading_nor_accepted", "activities": "@Loading - Nor Accepted"}, {"date": "date_loading_valve_seealed", "time": "time_loading_valve_seealed", "tr_css": "", "remarks": "remarks_loading_valve_seealed", "activities": "@Loading - Valve Seealed"}, {"date": "date_loading_tank_inspect_meter_verification", "time": "time_loading_tank_inspect_meter_verification", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verification", "activities": "@Loading - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "@Loading - Hose Connected - Initial @Depot"}, {"date": "date_loading_host_connected", "time": "time_loading_host_connected", "tr_css": "", "remarks": "remarks_loading_host_connected", "activities": "@Loading - Hose(s) Connected"}, {"date": "date_loading_loading_commenced", "time": "time_loading_loading_commenced", "tr_css": "", "remarks": "remarks_loading_loading_commenced", "activities": "@Loading - Loading Commenced"}, {"date": "date_loading_loading_completed", "time": "time_loading_loading_completed", "tr_css": "", "remarks": "remarks_loading_loading_completed", "activities": "@Loading - Loading Completed"}, {"date": "date_loading_hose_arms_disconnect", "time": "time_date_loading_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_loading_hose_arms_disconnect", "activities": "@Loading - Hose(s) Arms Disconnected"}, {"date": "date_loading_tank_inspect_meter_verification_final", "time": "time_loading_tank_inspect_meter_verification_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verification_final", "activities": "@Loading - Tank Inspection and Meter Verification - Final @Barge"}, {"date": "date_loading_calcul_completed_doc_onboard", "time": "time_loading_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_loading_calcul_completed_doc_onboard", "activities": "@Loading - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_arrived", "time": "time_discharge_barge_arrived", "tr_css": "", "remarks": "remarks_discharge_barge_arrived", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_nor_tendered", "time": "time_discharge_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_nor_tendered", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_key_meeting", "time": "time_discharge_key_meeting", "tr_css": "", "remarks": "remarks_discharge_key_meeting", "activities": "@discharge - Key Meeting"}, {"date": "date_discharge_nor_accepted", "time": "time_discharge_nor_accepted", "tr_css": "", "remarks": "remarks_discharge_nor_accepted", "activities": "@discharge - NOR Accepted"}, {"date": "date_discharge_valve_seealed", "time": "time_discharge_valve_seealed", "tr_css": "", "remarks": "remarks_discharge_valve_seealed", "activities": "@discharge - Valve Seealed @Ship"}, {"date": "date_discharge_tank_inspect_measure", "time": "time_discharge_tank_inspect_measure", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measure", "activities": "@discharge - Tank Inspection and Measurement - Initial @Ship"}, {"date": "date_visual_inspection_sampling", "time": "time_visual_inspection_sampling", "tr_css": "", "remarks": "remarks_visual_inspection_sampling", "activities": "@discharge - Visual Inspection Sampling @Ship"}, {"date": "date_discharge_host_connected", "time": "time_discharge_host_connected", "tr_css": "", "remarks": "remarks_discharge_host_connected", "activities": "@discharge - Hose(s) Connected"}, {"date": "date_discharge_bunker_commenced", "time": "time_discharge_bunker_commenced", "tr_css": "", "remarks": "remarks_discharge_bunker_commenced", "activities": "@discharge - bunker Commenced"}, {"date": "date_discharge_bunker_completed", "time": "time_discharge_bunker_completed", "tr_css": "", "remarks": "remarks_discharge_bunker_completed", "activities": "@discharge - bunker Completed"}, {"date": "date_discharge_hose_disconnect", "time": "time_date_discharge_hose_disconnect", "tr_css": "", "remarks": "remarks_date_discharge_hose_disconnect", "activities": "@discharge - Hose(s) Arms Disconnected"}, {"date": "date_discharge_tank_inspect_measr_final", "time": "time_discharge_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measr_final", "activities": "@discharge - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_discharge_visual_inspection_sampling", "time": "time_discharge_visual_inspection_sampling", "tr_css": "", "remarks": "remarks_discharge_visual_inspection_sampling", "activities": "@discharge - Visual Inspection & Sampling @Ship"}, {"date": "date_discharge_calcul_completed_doc_onboard", "time": "time_discharge_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_discharge_calcul_completed_doc_onboard", "activities": "@discharge - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_leave_ship", "time": "time_discharge_barge_leave_ship", "tr_css": "", "remarks": "remarks_discharge_barge_leave_ship", "activities": "@discharge - Barge Leave Ship"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('6', 'timelog_gas_loading', '[{"date": "date_loading_gas_vessel_arrived", "time": "time_loading_gas_vessel_arrived", "tr_css": "", "remarks": "remarks_loading_gas_vessel_arrived", "activities": "@Loading - Vessel Arrived"}, {"date": "date_loading_gas_vessel_anchoraged", "time": "time_loading_gas_vessel_anchoraged", "tr_css": "", "remarks": "remarks_loading_gas_vessel_anchoraged", "activities": "@Loading - Vessel Anchoraged"}, {"date": "date_loading_gas_nor_tendered", "time": "time_loading_gas_nor_tendered", "tr_css": "", "remarks": "remarks_loading_gas_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_gas_nor_accepted", "time": "time_loading_gas_nor_accepted", "tr_css": "", "remarks": "remarks_loading_gas_nor_accepted", "activities": "@Loading - NOR Accepted"}, {"date": "date_loading_gas_vessel_berthed", "time": "time_loading_gas_vessel_berthed", "tr_css": "", "remarks": "remarks_loading_gas_vessel_berthed", "activities": "@Loading - Vessel Berthed"}, {"date": "date_loading_gas_surveyor_on_board", "time": "time_loading_gas_surveyor_on_board", "tr_css": "", "remarks": "remarks_loading_gas_surveyor_on_board", "activities": "@Loading - Surveyor on Board"}, {"date": "date_loading_gas_key_meeting", "time": "time_loading_gas_key_meeting", "tr_css": "", "remarks": "remarks_loading_gas_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_gas_connection_of_vapor_arms_commence", "time": "time_loading_gas_connection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_vapor_arms_commence", "activities": "@Loading - Connection of Vapor Arms Commence"}, {"date": "date_loading_gas_connection_of_vapor_arms_completed", "time": "time_loading_gas_connection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_vapor_arms_completed", "activities": "@Loading - Connection of Vapor Arms Completed"}, {"date": "date_loading_gas_connection_of_liquid_arms_commence", "time": "time_loading_gas_connection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_liquid_arms_commence", "activities": "@Loading - Connection of Liquid Arms Commence"}, {"date": "date_loading_gas_connection_of_liquid_arms_completed", "time": "time_loading_gas_connection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_connection_of_liquid_arms_completed", "activities": "@Loading - Connection of Liquid Arms Completed"}, {"date": "date_loading_gas_cool_down_of_loading_arms_commence", "time": "time_loading_gas_cool_down_of_loading_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_cool_down_of_loading_arms_commence", "activities": "@Loading - Cool down of Loading Arms Commence"}, {"date": "date_loading_gas_cool_down_of_loading_arms_completed", "time": "time_loading_gas_cool_down_of_loading_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_cool_down_of_loading_arms_completed", "activities": "@Loading - Cool down of Loading Arms Completed"}, {"date": "date_loading_gas_opening_custody_transfer_inspection", "time": "time_loading_gas_opening_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_loading_gas_opening_custody_transfer_inspection", "activities": "@Loading - Opening Custody Transfer Inspection"}, {"date": "date_loading_gas_commenced_loading_of_cargo", "time": "time_loading_gas_commenced_loading_of_cargo", "tr_css": "", "remarks": "remarks_loading_gas_commenced_loading_of_cargo", "activities": "@Loading - Commenced Loading of Cargo"}, {"date": "date_loading_gas_completed_loading_of_cargo", "time": "time_loading_gas_completed_loading_of_cargo", "tr_css": "", "remarks": "remarks_loading_gas_completed_loading_of_cargo", "activities": "@Loading - Completed Loading of Cargo"}, {"date": "date_loading_gas_disconnection_of_vapor_arms_commence", "time": "time_loading_gas_disconnection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_vapor_arms_commence", "activities": "@Loading - Disconnection of Vapor Arms Commence"}, {"date": "date_loading_gas_disconnection_of_vapor_arms_completed", "time": "time_loading_gas_disconnection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_vapor_arms_completed", "activities": "@Loading - Disconnection of Vapor Arms Completed"}, {"date": "date_loading_gas_disconnection_of_liquid_arms_commence", "time": "time_loading_gas_disconnection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_liquid_arms_commence", "activities": "@Loading - Disconnection of Liquid Arms Commence"}, {"date": "date_loading_gas_disconnection_of_liquid_arms_completed", "time": "time_loading_gas_disconnection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_loading_gas_disconnection_of_liquid_arms_completed", "activities": "@Loading - Disconnection of Liquid Arms Completed"}, {"date": "date_loading_gas_closing_custody_transfer_inspection", "time": "time_loading_gas_closing_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_loading_gas_closing_custody_transfer_inspection", "activities": "@Loading - Closing Custody Transfer Inspection"}, {"date": "date_loading_gas_documents_onboard", "time": "time_loading_gas_documents_onboard", "tr_css": "", "remarks": "remarks_loading_gas_documents_onboard", "activities": "@Loading - Documents Onboard"}, {"date": "date_loading_gas_vessel_sailed", "time": "time_loading_gas_vessel_sailed", "tr_css": "", "remarks": "remarks_loading_gas_vessel_sailed", "activities": "@Loading - Vessel sailed"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('7', 'timelog_gas_discharge', '[{"date": "date_discharge_gas_vessel_arrived", "time": "time_discharge_gas_vessel_arrived", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_arrived", "activities": "@Discharge - Vessel Arrived"}, {"date": "date_discharge_gas_vessel_anchoraged", "time": "time_discharge_gas_vessel_anchoraged", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_anchoraged", "activities": "@Discharge - Vessel Anchoraged"}, {"date": "date_discharge_gas_nor_tendered", "time": "time_discharge_gas_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_gas_nor_tendered", "activities": "@Discharge - NOR Tendered"}, {"date": "date_discharge_gas_nor_accepted", "time": "time_discharge_gas_nor_accepted", "tr_css": "", "remarks": "remarks_discharge_gas_nor_accepted", "activities": "@Discharge - NOR Accepted"}, {"date": "date_discharge_gas_vessel_berthed", "time": "time_discharge_gas_vessel_berthed", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_berthed", "activities": "@Discharge - Vessel Berthed"}, {"date": "date_discharge_gas_surveyor_on_board", "time": "time_discharge_gas_surveyor_on_board", "tr_css": "", "remarks": "remarks_discharge_gas_surveyor_on_board", "activities": "@Discharge - Surveyor on Board"}, {"date": "date_discharge_gas_key_meeting", "time": "time_discharge_gas_key_meeting", "tr_css": "", "remarks": "remarks_discharge_gas_key_meeting", "activities": "@Discharge - Key Meeting"}, {"date": "date_discharge_gas_connection_of_vapor_arms_commence", "time": "time_discharge_gas_connection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_vapor_arms_commence", "activities": "@Discharge - Connection of Vapor Arms Commence"}, {"date": "date_discharge_gas_connection_of_vapor_arms_completed", "time": "time_discharge_gas_connection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_vapor_arms_completed", "activities": "@Discharge - Connection of Vapor Arms Completed"}, {"date": "date_discharge_gas_connection_of_liquid_arms_commence", "time": "time_discharge_gas_connection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_liquid_arms_commence", "activities": "@Discharge - Connection of Liquid Arms Commence"}, {"date": "date_discharge_gas_connection_of_liquid_arms_completed", "time": "time_discharge_gas_connection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_connection_of_liquid_arms_completed", "activities": "@Discharge - Connection of Liquid Arms Completed"}, {"date": "date_discharge_gas_cool_down_of_discharge_arms_commence", "time": "time_discharge_gas_cool_down_of_discharge_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_cool_down_of_discharge_arms_commence", "activities": "@Discharge - Cool down of Loading Arms Commence"}, {"date": "date_discharge_gas_cool_down_of_discharge_arms_completed", "time": "time_discharge_gas_cool_down_of_discharge_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_cool_down_of_discharge_arms_completed", "activities": "@Discharge - Cool down of Loading Arms Completed"}, {"date": "date_discharge_gas_opening_custody_transfer_inspection", "time": "time_discharge_gas_opening_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_discharge_gas_opening_custody_transfer_inspection", "activities": "@Discharge - Opening Custody Transfer Inspection"}, {"date": "date_discharge_gas_commenced_discharge_of_cargo", "time": "time_discharge_gas_commenced_discharge_of_cargo", "tr_css": "", "remarks": "remarks_discharge_gas_commenced_discharge_of_cargo", "activities": "@Discharge - Commenced Loading of Cargo"}, {"date": "date_discharge_gas_completed_discharge_of_cargo", "time": "time_discharge_gas_completed_discharge_of_cargo", "tr_css": "", "remarks": "remarks_discharge_gas_completed_discharge_of_cargo", "activities": "@Discharge - Completed Loading of Cargo"}, {"date": "date_discharge_gas_disconnection_of_vapor_arms_commence", "time": "time_discharge_gas_disconnection_of_vapor_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_vapor_arms_commence", "activities": "@Discharge - Disconnection of Vapor Arms Commence"}, {"date": "date_discharge_gas_disconnection_of_vapor_arms_completed", "time": "time_discharge_gas_disconnection_of_vapor_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_vapor_arms_completed", "activities": "@Discharge - Disconnection of Vapor Arms Completed"}, {"date": "date_discharge_gas_disconnection_of_liquid_arms_commence", "time": "time_discharge_gas_disconnection_of_liquid_arms_commence", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_liquid_arms_commence", "activities": "@Discharge - Disconnection of Liquid Arms Commence"}, {"date": "date_discharge_gas_disconnection_of_liquid_arms_completed", "time": "time_discharge_gas_disconnection_of_liquid_arms_completed", "tr_css": "", "remarks": "remarks_discharge_gas_disconnection_of_liquid_arms_completed", "activities": "@Discharge - Disconnection of Liquid Arms Completed"}, {"date": "date_discharge_gas_closing_custody_transfer_inspection", "time": "time_discharge_gas_closing_custody_transfer_inspection", "tr_css": "", "remarks": "remarks_discharge_gas_closing_custody_transfer_inspection", "activities": "@Discharge - Closing Custody Transfer Inspection"}, {"date": "date_discharge_gas_documents_onboard", "time": "time_discharge_gas_documents_onboard", "tr_css": "", "remarks": "remarks_discharge_gas_documents_onboard", "activities": "@Discharge - Documents Onboard"}, {"date": "date_discharge_gas_vessel_sailed", "time": "time_discharge_gas_vessel_sailed", "tr_css": "", "remarks": "remarks_discharge_gas_vessel_sailed", "activities": "@Discharge - Vessel sailed"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('8', 'timelog_petrokimia_loading', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_berthed", "time": "time_berthed", "tr_css": "", "remarks": "remarks_berthed", "activities": "Vessel Berthed"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_commenced", "time": "time_commenced", "tr_css": "", "remarks": "remarks_commenced", "activities": "Tanks Inspection commenced "}, {"date": "date_completed", "time": "time_completed", "tr_css": "", "remarks": "remarks_completed", "activities": "Tanks Inspection Completed "}, {"date": "date_connected_commenced", "time": "time_connected_commenced", "tr_css": "", "remarks": "remarks_connected_commenced", "activities": "Hose Connected commenced"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_loading_commenced", "time": "time_loading_commenced", "tr_css": "", "remarks": "remarks_loading_commenced", "activities": "Loading commenced"}, {"date": "date_loading_completed", "time": "time_loading_completed", "tr_css": "", "remarks": "remarks_loading_completed", "activities": "Loading completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Disconnected"}, {"date": "date_sampling_commenced", "time": "time_sampling_commenced", "tr_css": "", "remarks": "remarks_sampling_commenced", "activities": "Sampling Commenced"}, {"date": "date_sampling_completed", "time": "time_sampling_completed", "tr_css": "", "remarks": "remarks_sampling_completed", "activities": "Sampling Completed"}, {"date": "date_measurement_commenced", "time": "time_measurement_commenced", "tr_css": "", "remarks": "remarks_measurement_commenced", "activities": "Cargo measurement Commenced"}, {"date": "date_measurement_completed", "time": "time_measurement_completed", "tr_css": "", "remarks": "remarks_measurement_completed", "activities": "Cargo measurement Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_vessel_sailed", "time": "time_vessel_sailed", "tr_css": "", "remarks": "remarks_vessel_sailed", "activities": "Vessel sailed"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('9', 'timelog_petrokimia_discharge', '[{"date": "date_vessel_arrived", "time": "time_vessel_arrived", "tr_css": "", "remarks": "remarks_vessel_arrived", "activities": "Vessel Arrived"}, {"date": "date_anchoraged", "time": "time_anchoraged", "tr_css": "", "remarks": "remarks_anchoraged", "activities": "Vessel Anchoraged"}, {"date": "date_nor", "time": "time_nor", "tr_css": "", "remarks": "remarks_nor", "activities": "NOR Tendered"}, {"date": "date_accepted", "time": "time_accepted", "tr_css": "", "remarks": "remarks_accepted", "activities": "NOR Accepted"}, {"date": "date_pob", "time": "time_pob", "tr_css": "", "remarks": "remarks_pob", "activities": "Pilot On Board (for Berthing)"}, {"date": "date_a_aweigh", "time": "time_a_aweigh", "tr_css": "", "remarks": "remarks_a_aweigh", "activities": "Anchors Aweigh"}, {"date": "date_berthing", "time": "time_berthing", "tr_css": "", "remarks": "remarks_berthing", "activities": "Vessel Berthing"}, {"date": "date_surveyor_on_board", "time": "time_surveyor_on_board", "tr_css": "", "remarks": "remarks_surveyor_on_board", "activities": "Surveyor on Board"}, {"date": "date_key_meeting", "time": "time_key_meeting", "tr_css": "", "remarks": "remarks_key_meeting", "activities": "Key Meeting"}, {"date": "date_inpection_commenced", "time": "time_inpection_commenced", "tr_css": "", "remarks": "remarks_inpection_commenced", "activities": "Tanks Inspection and Calc. Commenced "}, {"date": "date_inspection_completed", "time": "time_inspection_completed", "tr_css": "", "remarks": "remarks_inspection_completed", "activities": "Tanks Inspection and Calc. Completed"}, {"date": "date_sbd_commenced", "time": "time_sbd_commenced", "tr_css": "", "remarks": "remarks_sbd_commenced", "activities": "Sampling Before Discharge Commenced"}, {"date": "date_sbd_completed", "time": "time_sbd_completed", "tr_css": "", "remarks": "remarks_sbd_completed", "activities": "Sampling Before Discharge Completed"}, {"date": "date_hose_connected", "time": "time_hose_connected", "tr_css": "", "remarks": "remarks_hose_connected", "activities": "Hose Connected"}, {"date": "date_connected_completed", "time": "time_connected_completed", "tr_css": "", "remarks": "remarks_connected_completed", "activities": "Hose Connected completed"}, {"date": "date_discharge_commenced", "time": "time_discharge_commenced", "tr_css": "", "remarks": "remarks_discharge_commenced", "activities": "Discharge commenced"}, {"date": "date_discharge_completed", "time": "time_discharge_completed", "tr_css": "", "remarks": "remarks_discharge_completed", "activities": "Discharge completed"}, {"date": "date_hose_disconnected", "time": "time_hose_disconnected", "tr_css": "", "remarks": "remarks_hose_disconnected", "activities": "Hose Disconnected"}, {"date": "date_tanks_ins_commenced", "time": "time_tanks_ins_commenced", "tr_css": "", "remarks": "remarks_tanks_ins_commenced", "activities": "Tanks Inspection Commenced"}, {"date": "date_tanks_ins_completed", "time": "time_tanks_ins_completed", "tr_css": "", "remarks": "remarks_tanks_ins_completed", "activities": "Tanks Inspection Completed"}, {"date": "date_documents_onboard", "time": "time_documents_onboard", "tr_css": "", "remarks": "remarks_documents_onboard", "activities": "Documents Onboard"}, {"date": "date_svy_left_vessel", "time": "time_svy_left_vessel", "tr_css": "", "remarks": "remarks_svy_left_vessel", "activities": "Surveyour Left Vessel"}, {"date": "date_vessel_sail", "time": "time_vessel_sail", "tr_css": "", "remarks": "remarks_vessel_sail", "activities": "Vessel sail"}]', '0', null, null, null, null, null);
INSERT INTO "public"."KOMPONEN_JSON" VALUES ('10', 'timelog_crude_bunker_vessel', '[{"date": "date_loading_barge_arrived", "time": "time_loading_barge_arrived", "tr_css": "", "remarks": "remarks_loading_barge_arrived", "activities": "@Loading - Barge Arrived"}, {"date": "date_loading_nor_tendered", "time": "time_loading_nor_tendered", "tr_css": "", "remarks": "remarks_loading_nor_tendered", "activities": "@Loading - NOR Tendered"}, {"date": "date_loading_barge_all_fast_alongside", "time": "time_loading_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_loading_barge_all_fast_alongside", "activities": "@Loading - Barge All Fast / Alongside"}, {"date": "date_loading_key_meeting", "time": "time_loading_key_meeting", "tr_css": "", "remarks": "remarks_loading_key_meeting", "activities": "@Loading - Key Meeting"}, {"date": "date_loading_valve_seealed", "time": "time_loading_valve_seealed", "tr_css": "", "remarks": "remarks_loading_valve_seealed", "activities": "@Loading - Valve Seealed"}, {"date": "date_loading_tank_inspect_measure", "time": "time_loading_tank_inspect_measure", "tr_css": "", "remarks": "remarks_loading_tank_inspect_measure", "activities": "@Loading - Tank Inspection and Measurement - Initial @Barge"}, {"date": "date_loading_tank_inspect_meter_verf", "time": "time_loading_tank_inspect_meter_verf", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_verf", "activities": "@Loading - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_loading_host_connected", "time": "time_loading_host_connected", "tr_css": "", "remarks": "remarks_loading_host_connected", "activities": "@Loading - Hose(s) Connected"}, {"date": "date_loading_loading_commenced", "time": "time_loading_loading_commenced", "tr_css": "", "remarks": "remarks_loading_loading_commenced", "activities": "@Loading - Loading Commenced"}, {"date": "date_loading_loading_completed", "time": "time_loading_loading_completed", "tr_css": "", "remarks": "remarks_loading_loading_completed", "activities": "@Loading - Loading Completed"}, {"date": "date_loading_hose_arms_disconnect", "time": "time_date_loading_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_loading_hose_arms_disconnect", "activities": "@Loading - Hose(s) Arms Disconnected"}, {"date": "date_loading_visual_inspec_sampl", "time": "time_loading_visual_inspec_sampl", "tr_css": "", "remarks": "remarks_loading_visual_inspec_sampl", "activities": "@Loading - Visual Inspection & Sampling - @Barge"}, {"date": "date_loading_tank_inspect_measr_final", "time": "time_loading_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_measr_final", "activities": "@Loading - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_loading_tank_inspect_meter_final", "time": "time_loading_tank_inspect_meter_final", "tr_css": "", "remarks": "remarks_loading_tank_inspect_meter_final", "activities": "@Loading - Tank Inspection and Meter Verification - Final @Depot"}, {"date": "date_loading_calcul_completed_doc_onboard", "time": "time_loading_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_loading_calcul_completed_doc_onboard", "activities": "@Loading - Calculation completed & Documents onboard"}, {"date": "date_loading_barge_leave_depot", "time": "time_loading_barge_leave_depot", "tr_css": "", "remarks": "remarks_loading_barge_leave_depot", "activities": "@Loading - Barge Leave Depot"}, {"date": "date_discharge_barge_arrived", "time": "time_discharge_barge_arrived", "tr_css": "", "remarks": "remarks_discharge_barge_arrived", "activities": "@discharge - Barge Arrived"}, {"date": "date_discharge_nor_tendered", "time": "time_discharge_nor_tendered", "tr_css": "", "remarks": "remarks_discharge_nor_tendered", "activities": "@discharge - NOR Tendered"}, {"date": "date_discharge_barge_all_fast_alongside", "time": "time_discharge_barge_all_fast_alongside", "tr_css": "", "remarks": "remarks_discharge_barge_all_fast_alongside", "activities": "@discharge - Barge All Fast / Alongside"}, {"date": "date_discharge_key_meeting", "time": "time_discharge_key_meeting", "tr_css": "", "remarks": "remarks_discharge_key_meeting", "activities": "@discharge - Key Meeting"}, {"date": "date_discharge_valve_seealed", "time": "time_discharge_valve_seealed", "tr_css": "", "remarks": "remarks_discharge_valve_seealed", "activities": "@discharge - Valve Seealed"}, {"date": "date_discharge_tank_inspect_measure", "time": "time_discharge_tank_inspect_measure", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measure", "activities": "@discharge - Tank Inspection and Measurement - Initial @Barge"}, {"date": "date_discharge_tank_inspect_meter_verf", "time": "time_discharge_tank_inspect_meter_verf", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_meter_verf", "activities": "@discharge - Tank Inspection and Meter Verification - Initial @Depot"}, {"date": "date_discharge_host_connected", "time": "time_discharge_host_connected", "tr_css": "", "remarks": "remarks_discharge_host_connected", "activities": "@discharge - Hose(s) Connected"}, {"date": "date_discharge_bunker_commenced", "time": "time_discharge_bunker_commenced", "tr_css": "", "remarks": "remarks_discharge_bunker_commenced", "activities": "@discharge - bunker Commenced"}, {"date": "date_discharge_bunker_completed", "time": "time_discharge_bunker_completed", "tr_css": "", "remarks": "remarks_discharge_bunker_completed", "activities": "@discharge - bunker Completed"}, {"date": "date_discharge_hose_arms_disconnect", "time": "time_date_discharge_hose_arms_disconnect", "tr_css": "", "remarks": "remarks_date_discharge_hose_arms_disconnect", "activities": "@discharge - Hose(s) Arms Disconnected"}, {"date": "date_discharge_visual_inspec_sampl", "time": "time_discharge_visual_inspec_sampl", "tr_css": "", "remarks": "remarks_discharge_visual_inspec_sampl", "activities": "@discharge - Visual Inspection & Sampling - @Barge"}, {"date": "date_discharge_tank_inspect_measr_final", "time": "time_discharge_tank_inspect_measr_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_measr_final", "activities": "@discharge - Tank Inspection and Measurement - Final @Barge"}, {"date": "date_discharge_tank_inspect_meter_final", "time": "time_discharge_tank_inspect_meter_final", "tr_css": "", "remarks": "remarks_discharge_tank_inspect_meter_final", "activities": "@discharge - Tank Inspection and Meter Verification - Final @Depot"}, {"date": "date_discharge_calcul_completed_doc_onboard", "time": "time_discharge_calcul_completed_doc_onboard", "tr_css": "", "remarks": "remarks_discharge_calcul_completed_doc_onboard", "activities": "@discharge - Calculation completed & Documents onboard"}, {"date": "date_discharge_barge_leave_ship", "time": "time_discharge_barge_leave_ship", "tr_css": "", "remarks": "remarks_discharge_barge_leave_ship", "activities": "@discharge - Barge Leave Ship"}]', '0', null, null, null, null, null);

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
"SESS_SITE_ID" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MAP_POINT
-- ----------------------------
INSERT INTO "public"."MAP_POINT" VALUES ('8', 'Balikpapan', '-0.711716694992859', '116.8635733125', 'vessel', null, null, null, null, null, null, '1', '3', null, null);
INSERT INTO "public"."MAP_POINT" VALUES ('10', 'Port Baru', '-7.89675935980107', '112.161424960616', 'port', null, null, null, null, null, null, '7', '1', null, null);
INSERT INTO "public"."MAP_POINT" VALUES ('11', 'Test', '-0.65935255667668', '117.456834822381', 'port', null, null, null, null, null, null, '2', '1', null, null);
INSERT INTO "public"."MAP_POINT" VALUES ('12', 'Vessel', '0.746861738138179', '107.129686384881', 'vessel', null, null, null, null, null, null, '1', '1', null, null);
INSERT INTO "public"."MAP_POINT" VALUES ('15', 'Riau', '1.00208109758232', '101.90019440625', '0', null, null, null, null, null, null, '8', '1', '22', null);
INSERT INTO "public"."MAP_POINT" VALUES ('16', 'PLN', '0.95814221566873', '112.5569326875', 'port', null, null, null, null, null, null, '8', '2', '13', null);
INSERT INTO "public"."MAP_POINT" VALUES ('17', 'PLN Bunker', '0.474783004979002', '114.095018625', 'barge', null, null, null, null, null, null, '8', '2', '15', null);
INSERT INTO "public"."MAP_POINT" VALUES ('20', 'Kalimantan Barat', '-1.10717389983593', '110.491503', 'port', null, null, null, null, null, null, '8', '2', '2', null);
INSERT INTO "public"."MAP_POINT" VALUES ('21', 'Kalimatan Barat 2', '-1.27694592961598', '109.931753221017', 'port', null, null, null, null, null, null, '8', '2', '13', null);
INSERT INTO "public"."MAP_POINT" VALUES ('23', 'PLN Cabang Medan', '3.59207337482438', '98.6750414243956', 'port', null, null, null, null, null, null, '8', '2', '29', null);
INSERT INTO "public"."MAP_POINT" VALUES ('24', 'Cabang Jakarta', '-6.30201680032827', '106.898973703125', 'cabang', null, null, null, null, null, null, '8', '2', '8', null);
INSERT INTO "public"."MAP_POINT" VALUES ('25', 'PLN Cabang Semarang', '-7.08984923048898', '111.058507719698', 'cabang', null, null, null, null, null, null, '8', '2', '11', null);
INSERT INTO "public"."MAP_POINT" VALUES ('26', 'PLN Cabang Balikpapan', '-0.865510673643769', '116.57792878125', 'cabang', null, null, null, null, null, null, '8', '2', '16', null);
INSERT INTO "public"."MAP_POINT" VALUES ('27', 'PLN Cabang Medan', '3.78989284775483', '98.4285147187501', 'cabang', null, null, null, null, null, null, '8', '2', '29', null);
INSERT INTO "public"."MAP_POINT" VALUES ('28', 'PLN Cabang Pontianak', '-0.0745279465447197', '109.403856515625', 'cabang', null, null, null, null, null, null, '8', '2', '13', null);
INSERT INTO "public"."MAP_POINT" VALUES ('29', 'PLN Cabang Banjarmasin', '-3.1710523814582', '114.677294015625', 'cabang', null, null, null, null, null, null, '8', '2', '15', null);
INSERT INTO "public"."MAP_POINT" VALUES ('30', 'PLN Cabang Sorong', '-0.9533902182758', '131.442430734375', 'cabang', null, null, null, null, null, null, '8', '2', '21', null);
INSERT INTO "public"."MAP_POINT" VALUES ('31', 'PT. Sucofindo Cab Sorong', '-1.26094960471268', '131.332567453125', 'cabang', null, null, null, null, null, null, '8', '2', '21', null);
INSERT INTO "public"."MAP_POINT" VALUES ('32', 'PT. Sucofindo Cab Semarang', '-6.86953369889765', '111.249559640625', 'cabang', null, null, null, null, null, null, '8', '2', '11', null);
INSERT INTO "public"."MAP_POINT" VALUES ('33', 'SCI Papua', '-4.21322594569253', '136.800074490152', '0', null, null, null, null, null, null, '8', '0', '21', null);
INSERT INTO "public"."MAP_POINT" VALUES ('34', 'Cabang Balikpapan', '0.0467697721309577', '116.508336645393', 'cabang', null, null, null, null, null, null, '8', '1', '0', null);
INSERT INTO "public"."MAP_POINT" VALUES ('35', 'PLN Unit Makassar', '-4.54185383762977', '120.166773708902', 'cabang', null, null, null, null, null, null, '8', '2', '2', null);
INSERT INTO "public"."MAP_POINT" VALUES ('36', 'PLN Cabang Jakarta', '-6.49853808274906', '107.0198233125', 'cabang', null, null, null, null, null, null, '8', '2', '0', '2');
INSERT INTO "public"."MAP_POINT" VALUES ('37', 'Pertamina Cab Medan', '3.46096304652045', '98.6921865937501', 'cabang', null, null, null, null, null, null, '8', '1', '27', '1');
INSERT INTO "public"."MAP_POINT" VALUES ('38', 'Pelni Cabang Balikpapan', '-1.22799839494625', '116.8635733125', 'cabang', null, null, null, null, null, null, '8', '3', '16', '3');
INSERT INTO "public"."MAP_POINT" VALUES ('39', 'PLN Cabang Surabaya', '-7.47662523372232', '112.601994997554', 'cabang', null, null, null, null, null, null, '8', '2', '12', '2');
INSERT INTO "public"."MAP_POINT" VALUES ('40', 'PLN Cabang Banjarmasin', '-3.27739605361893', '114.579534060054', 'cabang', null, null, null, null, null, null, '8', '2', '15', '2');

-- ----------------------------
-- Table structure for "public"."MASTER_AREA"
-- ----------------------------
DROP TABLE "public"."MASTER_AREA";
CREATE TABLE "public"."MASTER_AREA" (
"AREA_ID" text DEFAULT gen_random_uuid() NOT NULL,
"AREA_NAME" text,
"AREA_DESCRIPTION" text,
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
-- Records of MASTER_AREA
-- ----------------------------
INSERT INTO "public"."MASTER_AREA" VALUES ('3e1a934d-7a20-4991-a068-3e02b189ed6f', 'Medan', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('4d48001b-3e6e-498c-8bc4-b6cd92e2ac8d', 'Makasar', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('6b3a98da-9b75-42f5-9160-540cd2532e04', 'Semarang', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('829a29bb-b64f-4c75-811d-d4d301101ac2', 'Riau', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('d3ed99f5-09be-407a-949f-d8f9e4bec6a1', 'Ambon', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('dc609703-c7b8-47b7-8797-170e39bb3020', 'Jakarta', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('edcd4cc8-e3be-4aa8-8e20-d7fd839dd470', 'Balikpapan', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_AREA" VALUES ('f3361af7-c3dc-43c4-b519-ac2e1f1f931d', 'Surabaya', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_BARGE"
-- ----------------------------
DROP TABLE "public"."MASTER_BARGE";
CREATE TABLE "public"."MASTER_BARGE" (
"BARGE_ID" int4 DEFAULT nextval('"MASTER_BARGE_BARGE_ID_seq"'::regclass) NOT NULL,
"BARGE_NAME" name,
"BARGE_TYPE" text,
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
-- Records of MASTER_BARGE
-- ----------------------------
INSERT INTO "public"."MASTER_BARGE" VALUES ('2', 'Wilayah Balikpapan', 'Induk', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('4', 'LCT Celine 01', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('5', 'SPOB Berkat Anugerah 06', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('6', 'LCT Dwi Bayu', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('7', 'LCT Wira I', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('8', 'SPOB Trans Bilgit', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('9', 'SPOB Penajam', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('10', 'TK Bina III', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('11', 'TK Insam 02', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('12', 'MT Ferimas Akbar', 'Standard', '0', null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_BARGE" VALUES ('13', 'TK KBT I', 'Standard', '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_BBM"
-- ----------------------------
DROP TABLE "public"."MASTER_BBM";
CREATE TABLE "public"."MASTER_BBM" (
"BBM_ID" int4 DEFAULT nextval('"MASTER_BBM_BBM_ID_seq"'::regclass) NOT NULL,
"BBM_NAME" text,
"BBM_DESCRIPTION" text,
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
-- Records of MASTER_BBM
-- ----------------------------
INSERT INTO "public"."MASTER_BBM" VALUES ('1', 'Solar', '<p>Grade A</p>', '0', null, null, null, null, null);

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
-- Table structure for "public"."MASTER_CONTRACT"
-- ----------------------------
DROP TABLE "public"."MASTER_CONTRACT";
CREATE TABLE "public"."MASTER_CONTRACT" (
"ID" int4 DEFAULT nextval('"MASTER_CONTRACT_ID_seq"'::regclass) NOT NULL,
"CONTRACT" text,
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
-- Records of MASTER_CONTRACT
-- ----------------------------
INSERT INTO "public"."MASTER_CONTRACT" VALUES ('1', 'K0001/03/2017/SUC', '20170907_1434201.jpg', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CONTRACT" VALUES ('2', 'K0002/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-00.png', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CONTRACT" VALUES ('3', 'K0003/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-001.png', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CONTRACT" VALUES ('4', 'K0004/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-002.png', '0', null, null, null, null, null);
INSERT INTO "public"."MASTER_CONTRACT" VALUES ('5', 'K0005/03/2017/SUC', 'Screenshot_from_2017-12-12_16-50-003.png', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_CV"
-- ----------------------------
DROP TABLE "public"."MASTER_CV";
CREATE TABLE "public"."MASTER_CV" (
"ID" int4 DEFAULT nextval('"MASTER_CV_ID_seq"'::regclass) NOT NULL,
"NAMA" text,
"UPLOAD_FILE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"POSISI" int4,
"CONTACT_1" varchar(30),
"CONTACT_2" varchar(30),
"ADDRESS" text,
"BIRTHDATE" date,
"PLACE_BIRTHDATE" varchar(100),
"GENDER" char(1),
"REGION" int4,
"PHOTO_FILE" text,
"EMAIL" varchar(150),
"TYPE_LOCATION" int2,
"ID_SBU" int4,
"ID_CABANG" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."MASTER_CV"."GENDER" IS 'L = Male, P = Female';

-- ----------------------------
-- Records of MASTER_CV
-- ----------------------------
INSERT INTO "public"."MASTER_CV" VALUES ('1', 'Bagos W', '180416082526_cv_5ad4a4460c58e_sea_1.jpg', '0', null, null, null, null, null, '9', '08348328', '0214243', 'Gandaria 3', '1995-06-07', 'Jakarta', 'L', null, '180516111203_photo_5afbaf935d79e_corporate.png', 'bagos24@gmail.com', '1', '5', null);
INSERT INTO "public"."MASTER_CV" VALUES ('2', 'Indra', null, '0', null, null, null, null, null, '9', null, null, null, '1990-05-01', 'Jakarta', 'L', null, null, 'indra@gmail.com', '1', '5', null);
INSERT INTO "public"."MASTER_CV" VALUES ('3', 'Tugiman', null, '0', null, null, null, null, null, '9', '081234459021', '', 'Jalan Batubara No. 13', '1979-01-03', 'Temanggung', 'L', null, '180523035046_photo_5b0482a6ce684_Jason-Gregoire-headshot-77ed5261.jpeg', 'tugitugi@gmail.com', '1', '2', null);
INSERT INTO "public"."MASTER_CV" VALUES ('8', 'Lukmanur Hakim', null, '0', null, null, null, null, null, '4', null, null, null, '1970-01-01', 'Jakarta', 'L', null, null, 'hakim@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('9', 'Aris D Mario', null, '0', null, null, null, null, null, null, '082182684918', '', 'JL Pancoran Barat 4A no 81', '1990-01-17', 'Makassar', 'L', null, '180522084807_photo_5b0376d7e476c_GOKUU.JPG', 'aris.mario@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('10', 'Widiarto', null, '0', null, null, null, null, null, '7', null, null, null, '1970-01-01', 'Pontianak', 'L', null, null, 'widiarto@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('11', 'M. Sudarmadji', null, '0', null, null, null, null, null, '9', null, null, null, '1964-01-12', 'Ngawi', 'L', null, null, 'sudarmadji@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('13', 'Irsal Mukhtar', null, '0', null, null, null, null, null, '8', null, null, null, '1973-11-18', 'Batu Sangkar', 'L', null, null, 'irsal@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('14', 'Benny Ismayuadi', null, '0', null, null, null, null, null, '9', null, null, null, '1984-07-08', 'Subang', 'L', null, null, 'ismayadi@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('15', 'Daung Hadinata', null, '0', null, null, null, null, null, '4', null, null, null, '1981-04-23', 'Magetan', 'L', null, null, 'hadinata@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('16', 'Ahmad Mahsuny', null, '0', null, null, null, null, null, '9', null, null, null, '1985-01-04', 'Jakarta', 'L', null, null, 'amahsuny@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('17', 'Gani Irawan', null, '0', null, null, null, null, null, '4', null, null, null, '1965-02-05', 'Palembang', 'L', null, null, 'gani@sucofindo.co.id', '1', '7', null);
INSERT INTO "public"."MASTER_CV" VALUES ('18', 'Pupung Bahari', null, '0', null, null, null, null, null, '9', null, null, null, '1965-03-13', 'Karawang', 'L', null, null, 'pupung@sucofindo.co.id', '2', null, '8');

-- ----------------------------
-- Table structure for "public"."MASTER_CV_CERTIFICATE"
-- ----------------------------
DROP TABLE "public"."MASTER_CV_CERTIFICATE";
CREATE TABLE "public"."MASTER_CV_CERTIFICATE" (
"ID" int4 DEFAULT nextval('"MASTER_CV_CERTIFICATE_ID_seq"'::regclass) NOT NULL,
"ID_CV" int4,
"CERTIFICATE_NAME" varchar(150),
"CERITIFICATE_EXPIRED" date,
"CERITIFICATE_FROM" varchar(100),
"CERITIFICATE_FILE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CV_CERTIFICATE
-- ----------------------------
INSERT INTO "public"."MASTER_CV_CERTIFICATE" VALUES ('14', '5', 'Sertifikat A', '2022-03-23', 'Vendor A', '180416110415_certificate_5ad4c97f7d7d2_nature_1.jpg');
INSERT INTO "public"."MASTER_CV_CERTIFICATE" VALUES ('15', '5', '', '2011-01-27', '', '180416110415_certificate_5ad4c97f887a7_nature_2.jpg');
INSERT INTO "public"."MASTER_CV_CERTIFICATE" VALUES ('15', '9', '', '2011-01-27', '', '');

-- ----------------------------
-- Table structure for "public"."MASTER_CV_EDUCATION"
-- ----------------------------
DROP TABLE "public"."MASTER_CV_EDUCATION";
CREATE TABLE "public"."MASTER_CV_EDUCATION" (
"ID" int4 DEFAULT nextval('"MASTER_CV_EDUCATION_ID_seq"'::regclass) NOT NULL,
"ID_CV" int4,
"ID_REF_EDUCATION" int4,
"SCHOOL" varchar(150)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CV_EDUCATION
-- ----------------------------
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('101', '5', '4', 'SMKN 24');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('102', '5', '5', 'BSI Margonda Depok');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('123', '3', '6', 'ITB (Petroleum Enginering)');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('126', '1', '6', 'UI (Petroleum Engineering)');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('127', '9', '4', 'SMKN 24 TESTING');
INSERT INTO "public"."MASTER_CV_EDUCATION" VALUES ('128', '9', '6', 'Sriwijaya University');

-- ----------------------------
-- Table structure for "public"."MASTER_CV_EXPERIENCE"
-- ----------------------------
DROP TABLE "public"."MASTER_CV_EXPERIENCE";
CREATE TABLE "public"."MASTER_CV_EXPERIENCE" (
"ID" int4 DEFAULT nextval('"MASTER_CV_EXPERIENCE_ID_seq"'::regclass) NOT NULL,
"ID_CV" int4,
"ID_REF_EXPERIENCE" int4,
"LEVEL" int2
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."MASTER_CV_EXPERIENCE"."LEVEL" IS '1 = Beginner, 2 = Intermediate, 3 = Advance';

-- ----------------------------
-- Records of MASTER_CV_EXPERIENCE
-- ----------------------------
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('79', '5', '1', '1');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('80', '5', '2', '3');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('81', '5', '3', '2');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('93', '3', '5', '3');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('102', '1', '6', '1');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('103', '1', '2', '2');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('104', '1', '5', '1');
INSERT INTO "public"."MASTER_CV_EXPERIENCE" VALUES ('105', '1', '1', '3');

-- ----------------------------
-- Table structure for "public"."MASTER_CV_HISTORY_OF_WORK"
-- ----------------------------
DROP TABLE "public"."MASTER_CV_HISTORY_OF_WORK";
CREATE TABLE "public"."MASTER_CV_HISTORY_OF_WORK" (
"ID" int4 DEFAULT nextval('"MASTER_CV_HISTORY_OF_WORK_ID_seq"'::regclass),
"COMPANY_NAME" varchar(150),
"FROM" date,
"END" date,
"POSITION" varchar(100),
"DESCRIPTION" text,
"ID_CV" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CV_HISTORY_OF_WORK
-- ----------------------------
INSERT INTO "public"."MASTER_CV_HISTORY_OF_WORK" VALUES ('69', 'PT A', '2018-01-01', '2018-02-28', 'Web Programmer', 'Programmer', '5');
INSERT INTO "public"."MASTER_CV_HISTORY_OF_WORK" VALUES ('70', 'PT B', '2018-03-01', '2018-04-16', 'Desktop Programmer', 'System Analysist', '5');
INSERT INTO "public"."MASTER_CV_HISTORY_OF_WORK" VALUES ('78', 'Sucofindo', '2017-01-08', '2005-09-28', 'Technical Inspector 1', '', '9');

-- ----------------------------
-- Table structure for "public"."MASTER_CV_REGION"
-- ----------------------------
DROP TABLE "public"."MASTER_CV_REGION";
CREATE TABLE "public"."MASTER_CV_REGION" (
"ID" int4 DEFAULT nextval('"MASTER_CV_REGION_ID_seq"'::regclass) NOT NULL,
"ID_REF_REGION" int4,
"ID_CV" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_CV_REGION
-- ----------------------------
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('11', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('13', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('14', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('15', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('16', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('17', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('18', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('19', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('20', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('21', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('22', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('23', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('24', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('25', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('26', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('27', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('28', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('29', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('30', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('31', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('32', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('33', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('34', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('35', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('36', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('37', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('38', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('39', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('40', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('41', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('42', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('43', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('44', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('45', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('46', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('47', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('48', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('49', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('50', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('51', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('52', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('53', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('54', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('55', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('56', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('57', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('58', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('59', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('60', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('61', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('62', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('63', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('64', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('65', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('66', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('67', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('68', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('69', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('70', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('71', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('72', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('73', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('74', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('75', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('76', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('77', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('78', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('79', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('80', '15', '5');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('80', null, '3');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('81', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('82', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('83', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('84', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('85', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('86', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('87', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('88', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('89', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('90', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('91', null, '9');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('92', null, '3');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('93', null, '3');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('94', null, '3');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('95', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('96', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('97', null, '1');
INSERT INTO "public"."MASTER_CV_REGION" VALUES ('98', null, '9');

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
-- Table structure for "public"."MASTER_INTERVENTION"
-- ----------------------------
DROP TABLE "public"."MASTER_INTERVENTION";
CREATE TABLE "public"."MASTER_INTERVENTION" (
"ID" int4 DEFAULT nextval('"MASTER_INTERVENTION_ID_seq"'::regclass) NOT NULL,
"INTERVENTION_NAME" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"FILE_SOURCE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_INTERVENTION
-- ----------------------------
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('14', 'Loading', '0', null, null, null, null, null, 'loading');
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('15', 'Discharge', '0', null, null, null, null, null, 'discharge');
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('21', 'Bunker Pipe', '0', null, null, null, null, null, null);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('23', 'Trucking', '0', null, null, null, null, null, null);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('24', 'Transhipment', '0', null, null, null, null, null, null);
INSERT INTO "public"."MASTER_INTERVENTION" VALUES ('25', 'Bunker Vessel', '0', null, null, null, null, null, null);

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
-- Table structure for "public"."MASTER_PERSONIL"
-- ----------------------------
DROP TABLE "public"."MASTER_PERSONIL";
CREATE TABLE "public"."MASTER_PERSONIL" (
"ID" int4 DEFAULT nextval('"MASTER_PERSONIL_ID_seq"'::regclass) NOT NULL,
"POSISI" text,
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
-- Records of MASTER_PERSONIL
-- ----------------------------
INSERT INTO "public"."MASTER_PERSONIL" VALUES ('3', 'Jakarta', '10', 'Screenshot_from_2018-01-12_16-51-22.png', '0', null, null, null, null, null);

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
INSERT INTO "public"."MASTER_PORT" VALUES ('23', 'Tembilahan', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_PRODUCT"
-- ----------------------------
DROP TABLE "public"."MASTER_PRODUCT";
CREATE TABLE "public"."MASTER_PRODUCT" (
"PRODUCT_ID" int4 DEFAULT nextval('"MASTER_PRODUCT_ID_seq"'::regclass) NOT NULL,
"PRODUCT_LEVEL" int4,
"PRODUCT_REFERENCE" int4,
"PRODUCT_NAME" text,
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
"DELETE_USER" text,
"INTERVENTION_REFERENCE" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_PRODUCT
-- ----------------------------
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('6', '1', '0', 'Crude', '0', '1', null, null, '0', null, '', null, '', null, null, '["14","15","21","25"]');
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('7', '1', '0', 'Product', '1', '1', null, null, '0', null, '', null, '', null, null, '["14","15","21","25"]');
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('8', '1', '0', 'Petrokimia', '2', '1', null, null, '0', null, '', null, '', null, null, '["14","15"]');
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('9', '1', '0', 'Gas', '4', '1', null, null, '0', null, '', null, '', null, null, '["14","15"]');
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('10', '2', '9', 'LNG', '1', '1', null, null, '0', null, '', null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('11', '2', '9', 'LPG', '2', '1', null, null, '0', null, '', null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('12', '2', '9', 'Chem Gas', '3', '1', null, null, '0', null, '', null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('15', '2', '7', 'MFO', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('16', '2', '7', 'MMO', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('17', '2', '7', 'MHO', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('19', '2', '7', 'MDO', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('20', '2', '7', 'HSD', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('21', '2', '7', 'HSO', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('22', '2', '7', 'Solar', '1', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_PRODUCT" VALUES ('23', '2', '7', 'Premium', '1', '1', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."MASTER_SBU"
-- ----------------------------
DROP TABLE "public"."MASTER_SBU";
CREATE TABLE "public"."MASTER_SBU" (
"ID" int4 DEFAULT nextval('"MASTER_SBU_ID_seq"'::regclass),
"NAMA_SBU" varchar(150),
"CREATED_DATE" timestamp(6),
"UPDATE_DATE" timestamp(6),
"SBU_DESCRIPTION" varchar(255),
"IS_DELETE" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_SBU
-- ----------------------------
INSERT INTO "public"."MASTER_SBU" VALUES ('1', 'SBU KSP (Komoditi & Solusi Perdagangan)', '2018-04-21 23:09:14', '2018-04-21 23:19:31', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('2', 'SBU Batubara', '2018-04-21 23:14:45', '2018-04-21 23:20:31', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('5', 'SBU AE Migas', '2018-04-21 23:16:04', '2018-04-21 23:20:56', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('6', 'SBU Mineral', '2018-04-21 23:21:02', '2018-04-21 23:21:02', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('7', 'SBU HMPM (Hulu Migas dan Produk Migas)', '2018-04-21 23:21:11', '2018-04-21 23:21:11', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('8', 'SBU PIK (Perdagangan, Industri, dan Kelautan)', '2018-04-21 23:21:20', '2018-04-21 23:21:20', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('9', 'SBU Serco (Sertifikasi dan Eco-Framework)', '2018-04-21 23:21:28', '2018-04-21 23:21:28', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('10', 'SBU LSI (Layanan publik, Sumber daya, dan Informasi)', '2018-04-21 23:21:37', '2018-04-21 23:21:37', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('11', 'PMU Pertamina', '2018-04-21 23:21:46', '2018-04-21 23:21:46', '-', '0');
INSERT INTO "public"."MASTER_SBU" VALUES ('12', 'SBU Industri', '2018-04-21 23:21:56', '2018-04-21 23:21:56', '-', '0');

-- ----------------------------
-- Table structure for "public"."MASTER_STDREF"
-- ----------------------------
DROP TABLE "public"."MASTER_STDREF";
CREATE TABLE "public"."MASTER_STDREF" (
"ID" int4 DEFAULT nextval('"MASTER_STDREF_ID_seq"'::regclass) NOT NULL,
"STD_REF" text,
"UPLOAD_FILE" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"CONTENT_INFO" text
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of MASTER_STDREF
-- ----------------------------
INSERT INTO "public"."MASTER_STDREF" VALUES ('3', 'UNDANG UNDANG NEGARA REPUBLIK INDONESIA NO.20 TAHUN 2014', 'UU-20_TAHUN_2014_TENTANG_SPK1.pdf', '0', null, null, null, null, null, 'Undang-Undang Republik Indonesia Nomor 20 Tahun 2014 Tentang Standadisasi dan penilaian Kesesuaian ');
INSERT INTO "public"."MASTER_STDREF" VALUES ('5', 'PERATURAN PEMERINTAH NO.50 TAHUN 2012', 'PP_No__50_Tahun_2012_tentang_Penerapan_SMK3_1.pdf', '0', null, null, null, null, null, 'Peraturan Pemerintah Republik Indonesia No.50 Tahun 2012 Tentang Sistem Manajemen Keselamatan dan Kesehatan Kerja');

-- ----------------------------
-- Table structure for "public"."MASTER_TOOL"
-- ----------------------------
DROP TABLE "public"."MASTER_TOOL";
CREATE TABLE "public"."MASTER_TOOL" (
"ID" int4 DEFAULT nextval('"MASTER_TOOL_ID_seq"'::regclass) NOT NULL,
"JENIS" text,
"NAMA" text,
"JUMLAH" int4,
"UPLOAD_SERTIFIKAT" text,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6),
"ID_SBU" int4,
"ID_CABANG" int4,
"KONDISI" int2,
"TGL_END_KALIBRASI" date,
"TYPE_LOCATION" int2
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."MASTER_TOOL"."KONDISI" IS '1 = Sangat Baik 
2 = Baik 
3 = Buruk 
4 = Sangat Buruk ';
COMMENT ON COLUMN "public"."MASTER_TOOL"."TYPE_LOCATION" IS '1 = Kantor Pusat, 2 = Cabang';

-- ----------------------------
-- Records of MASTER_TOOL
-- ----------------------------
INSERT INTO "public"."MASTER_TOOL" VALUES ('3', 'Alat Komputer', 'LOGITECH GAMING', '70', 'g903-wireless-gaming-mouse.png', '0', null, null, null, null, null, '1', null, '2', '2017-11-30', '1');
INSERT INTO "public"."MASTER_TOOL" VALUES ('3', 'Alat Metering', 'Pressure Gauge', '12', 'SIIKA_Bourdon_Tube_Pressure_Gauge_Type_MFE.png', '0', null, null, null, null, null, null, null, '3', '2018-05-03', '1');
INSERT INTO "public"."MASTER_TOOL" VALUES ('4', '-', 'Ullage Temperature Interface', '6', 'index.jpg', '0', null, null, null, null, null, null, '8', '2', '2018-10-04', '2');

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
INSERT INTO "public"."MASTER_VESSEL" VALUES ('27', 'PELNI001', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('28', 'MT Nirbita', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('29', 'KM. Lambelu', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('30', 'KM. Binaiya', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('31', 'KM. Bukit Siguntang', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('32', 'MT Atlantic Point', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('33', 'MT Madonasun', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."MASTER_VESSEL" VALUES ('34', 'MV Viera', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."outbox"
-- ----------------------------
DROP TABLE "public"."outbox";
CREATE TABLE "public"."outbox" (
"UpdatedInDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
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
"SendingTimeOut" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
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
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:34:04', '2018-01-03 09:34:04', '2018-01-03 09:34:04', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', '-1', 'HELLO WORLD', '105', 'f', '255', '', '2018-01-03 09:34:04', 'default', 'Gammu 1.37.0', '0', '0', 'Reserved', '-1');
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:35:00', '2018-01-03 09:35:00', '2018-01-03 09:35:00', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', '-1', 'HELLO WORLD', '106', 'f', '255', '', '2018-01-03 09:35:00', 'default', 'Gammu 1.37.0', '0', '0', 'Reserved', '-1');
INSERT INTO "public"."outbox" VALUES ('2018-01-03 09:35:44', '2018-01-03 09:33:48', '2018-01-03 09:33:48', '23:59:59', '00:00:00', '00480045004C004C004F00200057004F0052004C0044', '089663159652', 'Default_No_Compression', '', '-1', 'HELLO WORLD', '104', 'f', '255', '', '2018-01-03 09:45:44', 'default', 'Gammu 1.37.0', '1', '0', 'Reserved', '-1');

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
"SequencePosition" int4 DEFAULT 1 NOT NULL
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
"UpdatedInDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"TimeOut" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"Send" bool DEFAULT false NOT NULL,
"Receive" bool DEFAULT false NOT NULL,
"IMEI" varchar(35) NOT NULL,
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
INSERT INTO "public"."phones" VALUES ('', '2018-01-03 09:35:49', '2018-01-03 09:35:42', '2018-01-03 09:35:59', 't', 't', '012345678901234', '', '', 'Gammu 1.37.0, Linux, kernel 4.4.14-040414-generic (#201606241434 SMP Fri Jun 24 18:36:45 UTC 2016), GCC 5.3', '0', '-1', '0', '0');

-- ----------------------------
-- Table structure for "public"."PORT_TERMINAL_DETAIL"
-- ----------------------------
DROP TABLE "public"."PORT_TERMINAL_DETAIL";
CREATE TABLE "public"."PORT_TERMINAL_DETAIL" (
"PORT_TERMINAL_DETAIL_ID" text DEFAULT gen_random_uuid() NOT NULL,
"FEF_ID" int4,
"PORT_ID" int4,
"IS_DELETE" int4,
"CREATE_TIME" timestamp(6) DEFAULT now(),
"CREATE_USER" text,
"MODIFY_TIME" timestamp(6),
"MODIFY_USER" text,
"DELETE_TIME" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of PORT_TERMINAL_DETAIL
-- ----------------------------
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('1c8c5678-576d-4a7d-8e0b-deef35eca2a9', '68', '0', null, '2018-06-25 03:14:07.630011', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('1d80751c-c6c3-426c-bd20-52f16ab89089', '75', '0', null, '2018-05-23 13:25:31.385995', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('21b5acc4-db81-4688-8a47-e660f73286b0', '83', '16', null, '2018-06-04 10:53:38.817976', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('233d4973-dddf-4d9e-b8f7-cebf2f8da9cb', '51', '0', null, '2018-05-23 11:54:35.817797', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('42856a09-55bc-4140-993b-0c71f5b3934d', '72', '0', null, '2018-05-23 11:09:27.834716', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('450e41c8-9a9e-4d65-918c-28eff1edff29', '78', '19', null, '2018-05-24 11:29:13.549789', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('5840302e-e4d6-4a38-9384-b52653970fa8', '71', '0', null, '2018-05-30 00:43:00.153069', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('59bff0d6-09b3-47b7-ae35-68bffad1cf89', '81', '0', null, '2018-05-30 01:04:08.156848', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('68c8a586-f0b0-4dd4-986d-3db674c0821c', '55', '0', null, '2018-05-23 11:52:17.867015', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('6e255e5a-6c35-4368-91f8-c03cb07b7f5d', '84', '0', null, '2018-06-08 09:21:30.973401', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('7319de69-7cd7-4ac3-8554-4759a45c3762', '74', '0', null, '2018-05-23 14:39:04.787858', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('7b0bfad9-a964-4836-9238-428bde38f08c', '86', '0', null, '2018-06-25 01:40:37.637666', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('96e6c395-b5fa-4e12-b90d-48907fe0c731', '82', '18', null, '2018-05-31 00:10:42.376355', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('9b63447a-2327-44ab-a9ce-7ea6c9e67504', '69', '0', null, '2018-05-27 22:13:26.069846', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('a33d7d7b-82b9-4702-9f3f-07b47b60000c', '56', '12', null, '2018-05-22 14:56:46.921478', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('ce3779eb-8499-4ab2-9778-209e22a0643c', '79', '0', null, '2018-06-04 08:56:33.966941', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('d832f739-deab-453f-a49c-e0de6c8e6731', '51', '0', null, '2018-05-23 11:54:35.822293', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('e1dc1728-1896-43eb-a287-028303549272', '52', '0', null, '2018-06-04 08:48:46.338684', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('e9883a64-e848-4d99-96c3-fb4b7ca4ce15', '73', '0', null, '2018-05-23 11:50:36.199264', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('ea7724ef-3685-4a65-949f-c34b9153d085', '80', '0', null, '2018-05-30 00:50:46.423252', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('f356e29c-14fe-4bd3-9837-7c69861b27ea', '77', '0', null, '2018-05-23 14:49:29.058433', null, null, null, null);
INSERT INTO "public"."PORT_TERMINAL_DETAIL" VALUES ('fbf08da0-5737-481f-89b6-e5809a7caaa8', '87', '0', null, '2018-06-25 11:42:20.190249', null, null, null, null);

-- ----------------------------
-- Table structure for "public"."REF_EDUCATION"
-- ----------------------------
DROP TABLE "public"."REF_EDUCATION";
CREATE TABLE "public"."REF_EDUCATION" (
"ID_REF_EDUCATION" int4 NOT NULL,
"EDUCATION_TYPE" varchar(50)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of REF_EDUCATION
-- ----------------------------
INSERT INTO "public"."REF_EDUCATION" VALUES ('1', 'SD');
INSERT INTO "public"."REF_EDUCATION" VALUES ('2', 'SMP/MTS');
INSERT INTO "public"."REF_EDUCATION" VALUES ('3', 'SMA/MA');
INSERT INTO "public"."REF_EDUCATION" VALUES ('4', 'SMK');
INSERT INTO "public"."REF_EDUCATION" VALUES ('5', 'D3');
INSERT INTO "public"."REF_EDUCATION" VALUES ('6', 'S1');
INSERT INTO "public"."REF_EDUCATION" VALUES ('7', 'S2');
INSERT INTO "public"."REF_EDUCATION" VALUES ('8', 'S3');

-- ----------------------------
-- Table structure for "public"."REF_EXP"
-- ----------------------------
DROP TABLE "public"."REF_EXP";
CREATE TABLE "public"."REF_EXP" (
"ID_REF_EXP" int4 DEFAULT nextval('"REF_EXP_ID_seq"'::regclass) NOT NULL,
"EXP_TYPE" varchar(50)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of REF_EXP
-- ----------------------------
INSERT INTO "public"."REF_EXP" VALUES ('1', 'Designer');
INSERT INTO "public"."REF_EXP" VALUES ('2', 'Programmer');
INSERT INTO "public"."REF_EXP" VALUES ('3', 'Photography');
INSERT INTO "public"."REF_EXP" VALUES ('5', 'Writer');
INSERT INTO "public"."REF_EXP" VALUES ('6', 'Inspection');

-- ----------------------------
-- Table structure for "public"."REF_POSITION"
-- ----------------------------
DROP TABLE "public"."REF_POSITION";
CREATE TABLE "public"."REF_POSITION" (
"ID_REF_POSITION" int4 DEFAULT nextval('"REF_POSITION_ID_seq"'::regclass) NOT NULL,
"POSITION" varchar(100)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of REF_POSITION
-- ----------------------------
INSERT INTO "public"."REF_POSITION" VALUES ('4', 'Project Manager');
INSERT INTO "public"."REF_POSITION" VALUES ('6', 'Administration Officer');
INSERT INTO "public"."REF_POSITION" VALUES ('7', 'Surveyor');
INSERT INTO "public"."REF_POSITION" VALUES ('8', 'Junior Superintendent');
INSERT INTO "public"."REF_POSITION" VALUES ('9', 'Technical Inspector');

-- ----------------------------
-- Table structure for "public"."REF_REGION"
-- ----------------------------
DROP TABLE "public"."REF_REGION";
CREATE TABLE "public"."REF_REGION" (
"ID_REF_REGION" int4 DEFAULT nextval('"REF_REGION_ID_seq"'::regclass),
"REGION" varchar(100)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of REF_REGION
-- ----------------------------
INSERT INTO "public"."REF_REGION" VALUES ('1', 'Bandar Lampung');
INSERT INTO "public"."REF_REGION" VALUES ('2', 'Bandung');
INSERT INTO "public"."REF_REGION" VALUES ('3', 'Bengkulu');
INSERT INTO "public"."REF_REGION" VALUES ('4', 'Batam');
INSERT INTO "public"."REF_REGION" VALUES ('5', 'Writer');
INSERT INTO "public"."REF_REGION" VALUES ('6', 'Cilacap');
INSERT INTO "public"."REF_REGION" VALUES ('7', 'Balikpapan');
INSERT INTO "public"."REF_REGION" VALUES ('8', 'Cilegon');
INSERT INTO "public"."REF_REGION" VALUES ('9', 'Cirebon');
INSERT INTO "public"."REF_REGION" VALUES ('10', 'Bekasi');
INSERT INTO "public"."REF_REGION" VALUES ('11', 'Batu Licin (BJM)');
INSERT INTO "public"."REF_REGION" VALUES ('12', 'Bontang');
INSERT INTO "public"."REF_REGION" VALUES ('13', 'Dumai');
INSERT INTO "public"."REF_REGION" VALUES ('14', 'Semarang');
INSERT INTO "public"."REF_REGION" VALUES ('15', 'Jakarta');
INSERT INTO "public"."REF_REGION" VALUES ('16', 'Denpasar');
INSERT INTO "public"."REF_REGION" VALUES ('17', 'Jambi');
INSERT INTO "public"."REF_REGION" VALUES ('18', 'Makassar');
INSERT INTO "public"."REF_REGION" VALUES ('19', 'Medan');
INSERT INTO "public"."REF_REGION" VALUES ('20', 'Pontianak');
INSERT INTO "public"."REF_REGION" VALUES ('21', 'Padang');
INSERT INTO "public"."REF_REGION" VALUES ('22', 'Samarinda');
INSERT INTO "public"."REF_REGION" VALUES ('23', 'Palembang');
INSERT INTO "public"."REF_REGION" VALUES ('24', 'Pekanbaru');
INSERT INTO "public"."REF_REGION" VALUES ('25', 'Surabaya');
INSERT INTO "public"."REF_REGION" VALUES ('26', 'Sangatta');
INSERT INTO "public"."REF_REGION" VALUES ('27', 'Tarakan');
INSERT INTO "public"."REF_REGION" VALUES ('28', 'Dondang');
INSERT INTO "public"."REF_REGION" VALUES ('29', 'Timika');
INSERT INTO "public"."REF_REGION" VALUES ('30', 'Duri (Riau)');
INSERT INTO "public"."REF_REGION" VALUES ('31', 'Gresik');

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
INSERT INTO "public"."RUNNING_TEXT" VALUES ('86', '<p>Alert Loss</p>
<div id=\"\\&quot;selenium-highlight\\&quot;\">&nbsp;</div>', '2018-05-14 06:08:00', '2018-05-14 07:04:00', '0', null, null, null, null, null, '2');
INSERT INTO "public"."RUNNING_TEXT" VALUES ('87', '<p>PLN Losses 312 litter hari ini</p>
<div id=\"selenium-highlight\">&nbsp;</div>', '2018-03-03 18:07:00', '2018-05-13 18:07:00', '0', null, null, null, null, null, '2');
INSERT INTO "public"."RUNNING_TEXT" VALUES ('87', 'Semarang,[\"HSD\"],KM Umsini,25-04-2018 01:23:21,sl_vs_bol_r1_bbls:-0.01,sl_vs_bol_r1_metricton:-0.01,sl_vef_applied_vs_bol_bbls:-0.01,sl_vef_applied_vs_bol_metricton:-0.01', '2018-05-14 10:56:23', '2018-05-15 10:56:23', '0', null, null, null, null, null, null);
INSERT INTO "public"."RUNNING_TEXT" VALUES ('88', 'Semarang,[\"HSD\"],KM Umsini,25-04-2018 01:23:21,sl_vs_bol_r1_bbls:-0.01,sl_vs_bol_r1_metricton:-0.01,sl_vef_applied_vs_bol_bbls:-0.01,sl_vef_applied_vs_bol_metricton:-0.01', '2018-05-14 10:56:24', '2018-05-15 10:56:24', '0', null, null, null, null, null, null);
INSERT INTO "public"."RUNNING_TEXT" VALUES ('89', 'Medan,["Premium"],MT Madonasun,23-05-2018 11:09:27,sl_vs_bol_r1_bbls:-12.01,sl_vs_bol_r1_kl15:-12.01,sl_vs_bol_r1_klobs:-11.92,sl_vs_bol_r1_longton:-0.33,sl_vs_bol_r1_metricton:-0.33,sl_vef_applied_vs_bol_bbls:-12.01,sl_vef_applied_vs_bol_kl15:-12.01,sl_vef_applied_vs_bol_klobs:-11.92,sl_vef_applied_vs_bol_longton:-0.33,sl_vef_applied_vs_bol_metricton:-0.33', '2018-05-28 13:42:11', '2018-05-29 13:42:11', '0', null, null, null, null, null, null);
INSERT INTO "public"."RUNNING_TEXT" VALUES ('90', 'Semarang,["MFO"],KM Gunung Dempo,22-05-2018 08:16:41,sl_vs_bol_r1_bbls:-0.08,sl_vs_bol_r1_kl15:-0.07,sl_vs_bol_r1_klobs:-0.06,sl_vs_bol_r1_longton:-0.07,sl_vs_bol_r1_metricton:-0.07', '2018-05-31 07:57:15', '2018-06-01 07:57:15', '0', null, null, null, null, null, null);
INSERT INTO "public"."RUNNING_TEXT" VALUES ('91', 'Balikpapan,["HSD"],MT Madonasun,25-06-2018 02:39:06,sl_vs_bol_r1_bbls:-93.79,sl_vs_bol_r1_kl15:-212,693.86,sl_vs_bol_r1_klobs:-21,063,949.97,sl_vs_bol_r1_longton:-209.03,sl_vs_bol_r1_metricton:-211.09,sl_vef_applied_vs_bol_bbls:-93.79,sl_vef_applied_vs_bol_kl15:-212,693.86,sl_vef_applied_vs_bol_klobs:-21,063,949.97,sl_vef_applied_vs_bol_longton:-209.03,sl_vef_applied_vs_bol_metricton:-211.09', '2018-06-28 15:49:21', '2018-06-29 15:49:21', '0', null, null, null, null, null, null);
INSERT INTO "public"."RUNNING_TEXT" VALUES ('92', 'Semarang,["HSD","MFO"],KM Kelud,23-05-2018 11:54:35,sl_vs_bol_r1_bbls:-0.01', '2018-07-09 10:22:03', '2018-07-10 10:22:03', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for "public"."sentitems"
-- ----------------------------
DROP TABLE "public"."sentitems";
CREATE TABLE "public"."sentitems" (
"UpdatedInDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"InsertIntoDB" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"SendingDateTime" timestamp(6) DEFAULT ('now'::text)::timestamp(0) without time zone NOT NULL,
"DeliveryDateTime" timestamp(6),
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
"CreatorID" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sentitems
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."WA"
-- ----------------------------
DROP TABLE "public"."WA";
CREATE TABLE "public"."WA" (
"ID" int4 DEFAULT nextval('"WA_ID_seq"'::regclass) NOT NULL,
"CONTACT" varchar(255),
"MESSAGE" varchar(255),
"STATUS" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of WA
-- ----------------------------
INSERT INTO "public"."WA" VALUES ('1', 'Ridwansyah', 'Db Connect', '1');
INSERT INTO "public"."WA" VALUES ('2', 'mas rizal', 'Db Connect', '1');
INSERT INTO "public"."WA" VALUES ('3', 'mas rizal', 'Bot Wa', '1');
INSERT INTO "public"."WA" VALUES ('4', 'mas rizal', 'Db Disconnect', '1');
INSERT INTO "public"."WA" VALUES ('5', 'Ridwansyah', 'DUNKIN DONUTS, BAYAR 9 UNTUK 12 DONUT! HANYA SAMPAI 17-18 APRIL DENGAN MENGGUNAKAN APLIKASI LINE!', '1');
INSERT INTO "public"."WA" VALUES ('6', 'mas rizal', 'Bot Wa', '1');
INSERT INTO "public"."WA" VALUES ('7', 'mas rizal', 'Db Connect', '1');
INSERT INTO "public"."WA" VALUES ('8', 'mas rizal', 'DUNKIN DONUTS, BAYAR 9 UNTUK 12 DONUT! HANYA SAMPAI 17-18 APRIL DENGAN MENGGUNAKAN APLIKASI LINE!', '1');
INSERT INTO "public"."WA" VALUES ('9', 'Pak Ewing', 'DUNKIN DONUTS, BAYAR 9 UNTUK 12 DONUT! HANYA SAMPAI 17-18 APRIL DENGAN MENGGUNAKAN APLIKASI LINE!', '1');
INSERT INTO "public"."WA" VALUES ('10', 'Pak Ewing', 'DUNKIN DONUTS, BAYAR 9 UNTUK 12 DONUT! HANYA SAMPAI 17-18 APRIL DENGAN MENGGUNAKAN APLIKASI LINE!', '1');
INSERT INTO "public"."WA" VALUES ('11', 'Pak Ewing', 'DUNKIN DONUTS, BAYAR 9 UNTUK 12 DONUT! HANYA SAMPAI 17-18 APRIL DENGAN MENGGUNAKAN APLIKASI LINE!', '1');

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
INSERT INTO "public"."WEBSITE_MENU" VALUES ('21', '2', '5', 'HMPM & SBU', 'http://103.43.46.75/uploads/file_manager/KD_20-2015-Penetapan_Portofolio-Spesifikasi_Jasa.pdf', 'HMPM', '_self', '', '1', '1', null, null, '0', null, '', null, '', null, null);

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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
<div class=\"thumbnail-image\"><img src=\"http://103.43.46.75/assets/public/public/sucofindo/images/direksi/xx.jpg\" alt=\"\" width=\"189\" height=\"189\" />
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
// ]]></script>
<div id=\"selenium-highlight\">&nbsp;</div>', 'Y', '0', null, null, null, null, null, null, 'tentang-kami', 'tentang-kami');
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
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('9', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. SUCOFINDO (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai dari tahap desain,</strong><br /><strong>fabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', '0', null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_47.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_47.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('10', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>- Supervisi Loading, Unloading dan Transhipment Produk Migas dan Petrokimia</strong><br /><strong>- Survey Bunker&nbsp;</strong><br /><strong>- Cargo Reconcilliation dan Loss Audit</strong><br /><strong>- Kalibrasi Peralatan Custody Transfer Migas</strong><br /><strong>- Inspeksi dan Audit Sistem Peralatan Custody Transfer Migas</strong><br /><strong>- Security Surveillance Services (SSS)</strong><br /><strong>-&nbsp;Verifikasi dan Penulusuran Teknis Ekspor/Impor Produk Migas (Permendag No. 03/2015)</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_49.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_49.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('11', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>- Supervisi Loading, Unloading dan Transhipment Produk Migas dan Petrokimia</strong><br /><strong>- Survey Bunker&nbsp;</strong><br /><strong>- Cargo Reconcilliation dan Loss Audit</strong><br /><strong>- Kalibrasi Peralatan Custody Transfer Migas</strong><br /><strong>- Inspeksi dan Audit Sistem Peralatan Custody Transfer Migas</strong><br /><strong>- Security Surveillance Services (SSS)</strong><br /><strong>-&nbsp;Verifikasi dan Penulusuran Teknis Ekspor/Impor Produk Migas (Permendag No. 03/2015)</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_48.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_48.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('12', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. SUCOFINDO (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai tahap dari desain,</strong><br /><strong>fabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan.</strong>
<div id="selenium-highlight">&nbsp;</div>
<div id="selenium-highlight">&nbsp;</div>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_55.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_55.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('13', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_54.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_54.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('16', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_52.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_52.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('17', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>Inspeksi dapat dilakukan dengan berbagai cara sesuai dengan </strong><br /><strong>kebutuhan dan diutamakan dengan pengujian tanpa rusak sehingga </strong><br /><strong>tidak membawa dampak bagi kegiatan operasional perusahaan</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_51.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_51.jpeg', 'Y');
INSERT INTO "public"."WEBSITE_SLIDER_DETAIL" VALUES ('18', '4', 'SUCOFINDO | <small>Assure Your Confidence</small>', '<strong>PT. SUCOFINDO (Persero) | SUCOFINDO melakukan verifikasi, </strong><br /><strong>review, pemeriksaan dan evaluasi terhadap fasilitas produksi </strong><br /><strong>migas hulu,seperti pada fasilitas ekstrasi, mulai dari tahap desain,</strong><br /><strong>fabrikasi, instalasi, operasional sampai dengan pemeliharaannya </strong><br /><strong>untuk memastikan peralatan dan fasilitas bekerja sesuai dengan </strong><br /><strong>spesifikasi dan aman untuk dioperasikan</strong>', null, null, null, null, null, null, null, 'uploads/slider/WhatsApp_Image_2017-11-13_at_06_05_491.jpeg', 'WhatsApp_Image_2017-11-13_at_06_05_491.jpeg', 'Y');

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
ALTER SEQUENCE "public"."pelni_info_id_info_seq1" OWNED BY "INFO_CLIENT"."ID_INFO";
ALTER SEQUENCE "public"."sentitems_ID_seq" OWNED BY "sentitems"."ID";

-- ----------------------------
-- Primary Key structure for table "public"."ALERT_SUBSCRIBER"
-- ----------------------------
ALTER TABLE "public"."ALERT_SUBSCRIBER" ADD PRIMARY KEY ("ALERT_SUBSCRIBER_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_ACCESS"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_ACCESS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_FORM_UPLOAD_DETAIL"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_FORM_UPLOAD_DETAIL" ADD PRIMARY KEY ("FILE_UPLOAD_DETAIL_ID");

-- ----------------------------
-- Primary Key structure for table "public"."APP_CLIENT_HEADER_ACCESS"
-- ----------------------------
ALTER TABLE "public"."APP_CLIENT_HEADER_ACCESS" ADD PRIMARY KEY ("HEADER_ACCESS_ID");

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
-- Primary Key structure for table "public"."APP_SETTING"
-- ----------------------------
ALTER TABLE "public"."APP_SETTING" ADD PRIMARY KEY ("SETTING_ID");

-- ----------------------------
-- Primary Key structure for table "public"."CLIENT_MESSAGE_TICKET"
-- ----------------------------
ALTER TABLE "public"."CLIENT_MESSAGE_TICKET" ADD PRIMARY KEY ("CLIENT_MESSAGE_ID");

-- ----------------------------
-- Primary Key structure for table "public"."CLIENT_TICKET"
-- ----------------------------
ALTER TABLE "public"."CLIENT_TICKET" ADD PRIMARY KEY ("CLIENT_TICKET_ID");

-- ----------------------------
-- Primary Key structure for table "public"."ELEMENT_CONNECTION"
-- ----------------------------
ALTER TABLE "public"."ELEMENT_CONNECTION" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."KOMPONEN_HTML"
-- ----------------------------
ALTER TABLE "public"."KOMPONEN_HTML" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table "public"."MASTER_AREA"
-- ----------------------------
ALTER TABLE "public"."MASTER_AREA" ADD PRIMARY KEY ("AREA_ID");

-- ----------------------------
-- Primary Key structure for table "public"."MASTER_CLIENT"
-- ----------------------------
ALTER TABLE "public"."MASTER_CLIENT" ADD PRIMARY KEY ("CLIENT_ID");

-- ----------------------------
-- Primary Key structure for table "public"."PORT_TERMINAL_DETAIL"
-- ----------------------------
ALTER TABLE "public"."PORT_TERMINAL_DETAIL" ADD PRIMARY KEY ("PORT_TERMINAL_DETAIL_ID");
