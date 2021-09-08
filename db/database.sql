-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.37-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para backend
-- CREATE DATABASE IF NOT EXISTS `backend` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `backend`;

-- Volcando estructura para tabla backend.core_store
CREATE TABLE IF NOT EXISTS `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.core_store: ~26 rows (aproximadamente)
DELETE FROM `core_store`;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'model_def_strapi::core-store', '{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}', 'object', NULL, NULL),
	(2, 'model_def_strapi::webhooks', '{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}', 'object', NULL, NULL),
	(3, 'model_def_strapi::permission', '{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}', 'object', NULL, NULL),
	(4, 'model_def_strapi::role', '{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}', 'object', NULL, NULL),
	(5, 'model_def_strapi::user', '{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}', 'object', NULL, NULL),
	(6, 'model_def_plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(7, 'model_def_plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(8, 'model_def_plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(9, 'model_def_plugins::upload.file', '{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(10, 'model_def_plugins::i18n.locale', '{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(11, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true}', 'object', 'development', ''),
	(12, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}', 'object', '', ''),
	(13, 'plugin_content_manager_configuration_content_types::strapi::permission', '{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', '', ''),
	(14, 'plugin_content_manager_configuration_content_types::strapi::role', '{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', '', ''),
	(15, 'plugin_content_manager_configuration_content_types::strapi::user', '{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', '', ''),
	(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', '', ''),
	(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}', 'object', '', ''),
	(18, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', '', ''),
	(19, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}', 'object', '', ''),
	(20, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', '', ''),
	(21, 'plugin_i18n_default_locale', '"en"', 'string', '', ''),
	(22, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', '', ''),
	(23, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', '', ''),
	(24, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', '', ''),
	(25, 'model_def_application::frase.frase', '{"uid":"application::frase.frase","collectionName":"frases","kind":"singleType","info":{"name":"frase"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"frase":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(26, 'plugin_content_manager_configuration_content_types::application::frase.frase', '{"uid":"application::frase.frase","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"frase","defaultSortBy":"frase","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"frase":{"edit":{"label":"Frase","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Frase","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","frase","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"frase","size":6}]]}}', 'object', '', '');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;

-- Volcando estructura para tabla backend.frases
CREATE TABLE IF NOT EXISTS `frases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frase` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.frases: ~1 rows (aproximadamente)
DELETE FROM `frases`;
/*!40000 ALTER TABLE `frases` DISABLE KEYS */;
INSERT INTO `frases` (`id`, `frase`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'No des peces, enseña a pescar', '2021-08-28 14:13:12', 1, 1, '2021-08-28 14:13:10', '2021-08-28 14:49:52');
/*!40000 ALTER TABLE `frases` ENABLE KEYS */;

-- Volcando estructura para tabla backend.i18n_locales
CREATE TABLE IF NOT EXISTS `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.i18n_locales: ~1 rows (aproximadamente)
DELETE FROM `i18n_locales`;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'English (en)', 'en', NULL, NULL, '2021-08-28 14:06:34', '2021-08-28 14:06:34');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;

-- Volcando estructura para tabla backend.strapi_administrator
CREATE TABLE IF NOT EXISTS `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.strapi_administrator: ~1 rows (aproximadamente)
DELETE FROM `strapi_administrator`;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
	(1, 'Marcel', 'Soler', NULL, 'msoler75@yahoo.es', '$2a$10$ww8r6ntXfjFeGESJf1IRDOd0t5w3Pbt4oiTPn.mzN.lTmHJNvuHiW', NULL, NULL, 1, NULL, NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;

-- Volcando estructura para tabla backend.strapi_permission
CREATE TABLE IF NOT EXISTS `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.strapi_permission: ~59 rows (aproximadamente)
DELETE FROM `strapi_permission`;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
	(1, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(2, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(3, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(4, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(5, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(6, 'plugins::upload.read', NULL, '{}', '["admin::is-creator"]', 3, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(7, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(8, 'plugins::upload.assets.update', NULL, '{}', '["admin::is-creator"]', 3, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(9, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(10, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(15, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(16, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(17, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(18, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(19, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(20, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(21, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(22, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(23, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(24, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(25, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(26, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(27, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(28, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(29, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(30, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(31, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(32, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(33, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(34, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(35, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(36, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(37, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(38, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(39, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(40, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(43, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(44, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(45, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(46, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(47, 'admin::users.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(48, 'admin::users.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(49, 'admin::users.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(50, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-08-28 14:06:45', '2021-08-28 14:06:45'),
	(51, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-08-28 14:06:46', '2021-08-28 14:06:46'),
	(52, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-08-28 14:06:46', '2021-08-28 14:06:46'),
	(53, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-08-28 14:06:46', '2021-08-28 14:06:46'),
	(54, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-08-28 14:06:46', '2021-08-28 14:06:46'),
	(55, 'plugins::content-manager.explorer.create', 'application::frase.frase', '{"fields":["frase"]}', '[]', 1, '2021-08-28 14:10:19', '2021-08-28 14:10:19'),
	(56, 'plugins::content-manager.explorer.read', 'application::frase.frase', '{"fields":["frase"]}', '[]', 1, '2021-08-28 14:10:19', '2021-08-28 14:10:19'),
	(57, 'plugins::content-manager.explorer.update', 'application::frase.frase', '{"fields":["frase"]}', '[]', 1, '2021-08-28 14:10:19', '2021-08-28 14:10:19'),
	(61, 'plugins::content-manager.explorer.delete', 'application::frase.frase', '{}', '[]', 1, '2021-08-28 14:47:12', '2021-08-28 14:47:12'),
	(62, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-08-28 14:47:12', '2021-08-28 14:47:12'),
	(63, 'plugins::content-manager.explorer.publish', 'application::frase.frase', '{}', '[]', 1, '2021-08-28 14:47:12', '2021-08-28 14:47:12');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;

-- Volcando estructura para tabla backend.strapi_role
CREATE TABLE IF NOT EXISTS `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.strapi_role: ~3 rows (aproximadamente)
DELETE FROM `strapi_role`;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-08-28 14:06:43', '2021-08-28 14:06:43'),
	(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-08-28 14:06:44', '2021-08-28 14:06:44'),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-08-28 14:06:44', '2021-08-28 14:06:44');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;

-- Volcando estructura para tabla backend.strapi_users_roles
CREATE TABLE IF NOT EXISTS `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.strapi_users_roles: ~1 rows (aproximadamente)
DELETE FROM `strapi_users_roles`;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;

-- Volcando estructura para tabla backend.strapi_webhooks
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.strapi_webhooks: ~0 rows (aproximadamente)
DELETE FROM `strapi_webhooks`;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;

-- Volcando estructura para tabla backend.upload_file
CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.upload_file: ~0 rows (aproximadamente)
DELETE FROM `upload_file`;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;

-- Volcando estructura para tabla backend.upload_file_morph
CREATE TABLE IF NOT EXISTS `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.upload_file_morph: ~0 rows (aproximadamente)
DELETE FROM `upload_file_morph`;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;

-- Volcando estructura para tabla backend.users-permissions_permission
CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.users-permissions_permission: ~178 rows (aproximadamente)
DELETE FROM `users-permissions_permission`;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
	(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
	(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
	(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
	(4, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
	(5, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
	(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
	(7, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
	(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
	(9, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
	(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
	(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
	(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
	(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
	(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
	(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
	(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
	(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
	(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
	(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
	(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
	(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
	(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
	(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
	(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
	(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
	(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
	(29, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
	(30, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
	(31, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(32, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(33, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
	(34, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
	(35, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
	(36, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
	(37, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
	(38, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
	(39, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
	(40, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
	(41, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
	(42, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
	(43, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
	(44, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
	(45, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
	(46, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
	(47, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
	(48, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
	(49, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
	(50, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
	(51, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
	(52, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
	(53, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
	(54, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
	(55, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
	(56, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
	(57, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
	(58, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
	(59, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
	(60, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
	(61, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
	(62, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
	(63, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
	(64, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
	(65, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
	(66, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
	(67, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
	(68, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
	(69, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
	(70, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
	(71, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
	(72, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
	(73, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
	(74, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
	(75, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
	(76, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
	(77, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
	(78, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
	(79, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
	(80, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
	(81, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
	(82, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
	(83, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
	(84, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
	(85, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
	(86, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
	(87, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
	(88, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
	(89, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
	(90, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
	(91, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
	(92, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
	(93, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
	(94, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
	(95, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
	(96, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
	(97, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
	(98, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
	(99, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
	(100, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
	(101, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
	(102, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
	(103, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
	(104, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
	(105, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
	(106, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
	(107, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
	(108, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
	(109, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
	(110, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
	(111, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
	(112, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
	(113, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
	(114, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
	(115, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
	(116, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
	(117, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
	(118, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
	(119, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
	(120, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
	(121, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
	(122, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
	(123, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
	(124, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
	(125, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
	(126, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
	(127, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
	(128, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
	(129, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
	(130, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
	(131, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
	(132, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
	(133, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
	(134, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
	(135, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
	(136, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
	(137, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
	(138, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
	(139, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
	(140, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
	(141, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
	(142, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
	(143, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
	(144, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
	(145, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
	(146, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
	(147, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
	(148, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
	(149, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
	(150, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
	(151, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
	(152, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
	(153, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
	(154, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
	(155, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
	(156, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
	(157, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
	(158, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
	(159, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
	(160, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
	(161, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
	(162, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
	(163, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
	(164, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
	(165, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
	(166, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
	(167, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
	(168, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
	(169, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
	(170, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
	(171, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
	(172, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
	(173, 'application', 'frase', 'delete', 0, '', 1, NULL, NULL),
	(174, 'application', 'frase', 'delete', 0, '', 2, NULL, NULL),
	(175, 'application', 'frase', 'find', 0, '', 1, NULL, NULL),
	(176, 'application', 'frase', 'find', 1, '', 2, NULL, NULL),
	(177, 'application', 'frase', 'update', 0, '', 1, NULL, NULL),
	(178, 'application', 'frase', 'update', 0, '', 2, NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;

-- Volcando estructura para tabla backend.users-permissions_role
CREATE TABLE IF NOT EXISTS `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.users-permissions_role: ~2 rows (aproximadamente)
DELETE FROM `users-permissions_role`;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;

-- Volcando estructura para tabla backend.users-permissions_user
CREATE TABLE IF NOT EXISTS `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla backend.users-permissions_user: ~0 rows (aproximadamente)
DELETE FROM `users-permissions_user`;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
