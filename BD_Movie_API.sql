-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.7.1-MariaDB-1:10.7.1+maria~focal - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla apidatabase.api_actor: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `api_actor` DISABLE KEYS */;
INSERT INTO `api_actor` (`id`, `name`, `lastName`, `birthday`) VALUES
	(1, 'Tobey', 'Maguire', '27/04/1975'),
	(2, 'Kirsten', 'Dunst', '30/04/1982'),
	(3, 'Sally', 'Hawkins', '27/04/1976'),
	(4, 'Octavia', 'Spencer', '25/03/1970');
/*!40000 ALTER TABLE `api_actor` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_character: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `api_character` DISABLE KEYS */;
INSERT INTO `api_character` (`id`, `name`) VALUES
	(1, 'Peter Parker'),
	(2, 'Mary Jane'),
	(3, 'Zelda'),
	(4, 'Eliza Esposito');
/*!40000 ALTER TABLE `api_character` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_director: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `api_director` DISABLE KEYS */;
INSERT INTO `api_director` (`id`, `name`, `lastName`, `birthday`) VALUES
	(1, 'Sam', 'Raime', '23/10/1959'),
	(2, 'Guillermo', 'del Toro', '09/10/1964');
/*!40000 ALTER TABLE `api_director` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_movie: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `api_movie` DISABLE KEYS */;
INSERT INTO `api_movie` (`id`, `name`, `description`, `ranking`, `age`, `duration`) VALUES
	(1, 'Spider-man 1', 'The movie Spider-man 1', 8, 2002, '2:01:00'),
	(2, 'Spider-man 2', 'The movie Spider-man 2', 9, 2004, '2:07:00'),
	(3, 'The shape of watter', 'The movie The shape of watter', 8, 2017, '2:03:00');
/*!40000 ALTER TABLE `api_movie` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_moviecategories: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `api_moviecategories` DISABLE KEYS */;
INSERT INTO `api_moviecategories` (`id`, `genre`) VALUES
	(1, 'Action'),
	(2, 'Fiction'),
	(3, 'Adventure'),
	(4, 'Drama'),
	(5, 'Romance');
/*!40000 ALTER TABLE `api_moviecategories` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_movie_categories: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `api_movie_categories` DISABLE KEYS */;
INSERT INTO `api_movie_categories` (`id`, `movie_id`, `moviecategories_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 5);
/*!40000 ALTER TABLE `api_movie_categories` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_movie_characters: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `api_movie_characters` DISABLE KEYS */;
INSERT INTO `api_movie_characters` (`id`, `movie_id`, `character_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(4, 3, 3),
	(3, 3, 4);
/*!40000 ALTER TABLE `api_movie_characters` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.api_movie_director: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `api_movie_director` DISABLE KEYS */;
INSERT INTO `api_movie_director` (`id`, `movie_id`, `director_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 2);
/*!40000 ALTER TABLE `api_movie_director` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_permission: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add movie', 7, 'add_movie'),
	(26, 'Can change movie', 7, 'change_movie'),
	(27, 'Can delete movie', 7, 'delete_movie'),
	(28, 'Can view movie', 7, 'view_movie'),
	(29, 'Can add movie categories', 8, 'add_moviecategories'),
	(30, 'Can change movie categories', 8, 'change_moviecategories'),
	(31, 'Can delete movie categories', 8, 'delete_moviecategories'),
	(32, 'Can view movie categories', 8, 'view_moviecategories'),
	(33, 'Can add API key', 9, 'add_apikey'),
	(34, 'Can change API key', 9, 'change_apikey'),
	(35, 'Can delete API key', 9, 'delete_apikey'),
	(36, 'Can view API key', 9, 'view_apikey'),
	(37, 'Can add actor', 10, 'add_actor'),
	(38, 'Can change actor', 10, 'change_actor'),
	(39, 'Can delete actor', 10, 'delete_actor'),
	(40, 'Can view actor', 10, 'view_actor'),
	(41, 'Can add character', 11, 'add_character'),
	(42, 'Can change character', 11, 'change_character'),
	(43, 'Can delete character', 11, 'delete_character'),
	(44, 'Can view character', 11, 'view_character'),
	(45, 'Can add director', 12, 'add_director'),
	(46, 'Can change director', 12, 'change_director'),
	(47, 'Can delete director', 12, 'delete_director'),
	(48, 'Can view director', 12, 'view_director');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_user: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$320000$QFgJAtayau3aAtnCHgwWTv$GiB+SJIIyB5CBt7cKsv1b9XNrese2JOt8ttHtPyep+k=', '2022-02-10 02:31:36.399104', 1, 'admin', '', '', 'luis.alberto.sanchez.rios@live.com.mx', 1, 1, '2022-02-10 02:31:24.866886');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.django_admin_log: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-02-10 02:35:02.929106', 'yVD6HP2L.pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=', 'Api1', 1, '[{"added": {}}]', 9, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.django_content_type: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(10, 'api', 'actor'),
	(11, 'api', 'character'),
	(12, 'api', 'director'),
	(7, 'api', 'movie'),
	(8, 'api', 'moviecategories'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'rest_framework_api_key', 'apikey'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.django_migrations: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-02-10 01:47:36.578924'),
	(2, 'auth', '0001_initial', '2022-02-10 01:47:37.600976'),
	(3, 'admin', '0001_initial', '2022-02-10 01:47:37.859899'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-10 01:47:37.902121'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-10 01:47:37.946198'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-10 01:47:38.104277'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-10 01:47:38.225076'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-02-10 01:47:38.310760'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-02-10 01:47:38.351353'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-02-10 01:47:38.472177'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-02-10 01:47:38.501471'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-10 01:47:38.540676'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-02-10 01:47:38.614861'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-10 01:47:38.686074'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-02-10 01:47:38.774892'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-02-10 01:47:38.821770'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-10 01:47:38.904184'),
	(18, 'sessions', '0001_initial', '2022-02-10 01:47:39.026424'),
	(19, 'api', '0001_initial', '2022-02-10 02:09:35.615254'),
	(20, 'rest_framework_api_key', '0001_initial', '2022-02-10 02:24:24.757921'),
	(21, 'rest_framework_api_key', '0002_auto_20190529_2243', '2022-02-10 02:24:24.832930'),
	(22, 'rest_framework_api_key', '0003_auto_20190623_1952', '2022-02-10 02:24:24.856750'),
	(23, 'rest_framework_api_key', '0004_prefix_hashed_key', '2022-02-10 02:24:25.220674'),
	(24, 'api', '0002_actor_character_director_and_more', '2022-02-22 18:16:40.389308'),
	(25, 'api', '0003_remove_movie_movieactor_remove_movie_moviecategories_and_more', '2022-02-23 01:50:10.185626');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.django_session: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('6fmane9nul2s6viaih7lqsyyb0lx6pej', '.eJxVjDsOwjAQBe_iGln4FzuU9JzB2vWucQDZUpxUiLuTSCmgfTPz3iLCupS4dp7jROIilDj9bgjpyXUH9IB6bzK1uswTyl2RB-3y1ohf18P9OyjQy1Y7lTUkRkSfOWgkUB40WKVDID47NpitCcPIhMYyggeXxiFkCi5vsvh8ARiJOVA:1nHzFA:2NoWLwP9QElP8UbTpHb9mMdUgGA3I8GGZmepSPzbaDw', '2022-02-24 02:31:36.403568');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando datos para la tabla apidatabase.rest_framework_api_key_apikey: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` DISABLE KEYS */;
INSERT INTO `rest_framework_api_key_apikey` (`id`, `created`, `name`, `revoked`, `expiry_date`, `hashed_key`, `prefix`) VALUES
	('yVD6HP2L.pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=', '2022-02-10 02:35:02.926006', 'Api1', 0, NULL, 'pbkdf2_sha256$320000$RPrW4IlGDiIboZwt9F0Ha3$qQFteDCp/iEy+9V3s6kyLIkFgewbY8BCGWrdnHv7GTc=', 'yVD6HP2L');
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
