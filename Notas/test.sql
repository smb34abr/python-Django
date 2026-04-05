-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.0.19:3306
-- Tiempo de generación: 05-04-2026 a las 22:23:40
-- Versión del servidor: 11.4.8-MariaDB-log
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

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
(25, 'Can add escritor', 7, 'add_escritor'),
(26, 'Can change escritor', 7, 'change_escritor'),
(27, 'Can delete escritor', 7, 'delete_escritor'),
(28, 'Can view escritor', 7, 'view_escritor'),
(29, 'Can add usuario', 8, 'add_usuario'),
(30, 'Can change usuario', 8, 'change_usuario'),
(31, 'Can delete usuario', 8, 'delete_usuario'),
(32, 'Can view usuario', 8, 'view_usuario'),
(33, 'Can add libro', 9, 'add_libro'),
(34, 'Can change libro', 9, 'change_libro'),
(35, 'Can delete libro', 9, 'delete_libro'),
(36, 'Can view libro', 9, 'view_libro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$1ohzwJ3Y4FZ9AylPTxmV3x$QJS8jPjFII12ejl88esPXnHhJ173AGrPEDwW8m87qOM=', '2026-04-05 15:19:49.907243', 1, 'abernal', 'Alberto', 'Bernal Ramirez', 'smb34abr@gmail.com', 1, 1, '2026-04-05 08:08:21.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_escritor`
--

CREATE TABLE `biblioteca_escritor` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `nacionalidad` varchar(150) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_captura` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `biblioteca_escritor`
--

INSERT INTO `biblioteca_escritor` (`id`, `nombres`, `apellidos`, `nacionalidad`, `fecha_nacimiento`, `fecha_captura`) VALUES
(1, 'Kate', 'Stewart', 'Estadounidense', '1985-01-16', '2026-04-05 15:43:56.480419'),
(2, 'Gabriel', 'García Márquez', 'Colombiano', '1927-03-06', '2026-04-05 08:11:19.495508'),
(3, 'Julia', 'Navarro', 'Española', '1953-10-08', '2026-04-05 15:23:34.720160');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_libro`
--

CREATE TABLE `biblioteca_libro` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `editorial` varchar(150) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_captura` datetime(6) NOT NULL,
  `escritor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `biblioteca_libro`
--

INSERT INTO `biblioteca_libro` (`id`, `titulo`, `isbn`, `editorial`, `fecha_publicacion`, `existencia`, `precio`, `fecha_captura`, `escritor_id`) VALUES
(1, 'Cien año de soledad', '978-607-072-672-9', 'Diana', '2015-03-20', 1, 498.00, '2026-04-05 15:48:20.155850', 2),
(2, 'El niño que perdió la guerra', '978-607-384-876-3', 'Plaza Janés', '2024-09-05', 1, 549.00, '2026-04-05 15:39:08.552152', 3),
(3, 'Vuelo', '978-607-383-398-1', 'Plaza Janés', '2023-07-06', 1, 99.00, '2026-04-05 15:46:19.004861', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_usuario`
--

CREATE TABLE `biblioteca_usuario` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` longtext NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_captura` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `biblioteca_usuario`
--

INSERT INTO `biblioteca_usuario` (`id`, `nombres`, `apellidos`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `fecha_captura`) VALUES
(1, 'Sebatián', 'Bernal Tejeda', 'sbernalt@gmail.com', '5513323325', 'Ciudad de México', '2015-05-23', '2026-04-05 08:12:41.672541');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-04-05 08:09:15.688275', '1', 'Alberto Bernal Ramírez', 1, '[{\"added\": {}}]', 7, 1),
(2, '2026-04-05 08:09:29.892327', '1', 'abernal', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(3, '2026-04-05 08:11:19.497208', '2', 'Gabriel García Márquez', 1, '[{\"added\": {}}]', 7, 1),
(4, '2026-04-05 08:11:59.527740', '1', 'Cien año de soledad', 1, '[{\"added\": {}}]', 9, 1),
(5, '2026-04-05 08:12:41.674350', '1', 'Sebatián Bernal Tejeda', 1, '[{\"added\": {}}]', 8, 1),
(6, '2026-04-05 15:23:34.721679', '3', 'Julia Navarro', 1, '[{\"added\": {}}]', 7, 1),
(7, '2026-04-05 15:25:13.158367', '2', 'El niño que perdió la guerra', 1, '[{\"added\": {}}]', 9, 1),
(8, '2026-04-05 15:39:08.554288', '2', 'El niño que perdió la guerra', 2, '[{\"changed\": {\"fields\": [\"Isbn\"]}}]', 9, 1),
(9, '2026-04-05 15:43:56.482364', '1', 'Kate Stewart', 2, '[{\"changed\": {\"fields\": [\"Nombres\", \"Apellidos\", \"Nacionalidad\", \"Fecha nacimiento\"]}}]', 7, 1),
(10, '2026-04-05 15:46:19.006682', '3', 'Vuelo', 1, '[{\"added\": {}}]', 9, 1),
(11, '2026-04-05 15:48:20.158291', '1', 'Cien año de soledad', 2, '[{\"changed\": {\"fields\": [\"Isbn\", \"Fecha publicacion\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'biblioteca', 'escritor'),
(9, 'biblioteca', 'libro'),
(8, 'biblioteca', 'usuario'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-04-05 08:06:42.470675'),
(2, 'auth', '0001_initial', '2026-04-05 08:06:43.078201'),
(3, 'admin', '0001_initial', '2026-04-05 08:06:43.185862'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-04-05 08:06:43.206626'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-04-05 08:06:43.219640'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-04-05 08:06:43.297482'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-04-05 08:06:43.348751'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-04-05 08:06:43.407565'),
(9, 'auth', '0004_alter_user_username_opts', '2026-04-05 08:06:43.429815'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-04-05 08:06:43.491507'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-04-05 08:06:43.494754'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-04-05 08:06:43.502861'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-04-05 08:06:43.533102'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-04-05 08:06:43.562920'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-04-05 08:06:43.607744'),
(16, 'auth', '0011_update_proxy_permissions', '2026-04-05 08:06:43.624033'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-04-05 08:06:43.661963'),
(18, 'biblioteca', '0001_initial', '2026-04-05 08:06:43.754369'),
(19, 'sessions', '0001_initial', '2026-04-05 08:06:43.805318');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j1dkej343hlhfiteaqiwgyj462jkh2jb', '.eJxVjDsOwjAQRO_iGlk2rH-U9DmDtWtvcAA5UpxUiLvjSCmgnHlv5i0ibmuJW-MlTllchRan344wPbnuID-w3meZ5rouE8ldkQdtcpgzv26H-3dQsJW-hnxmBzCyo2C88xcKuudkR0KPzIpZK0ekXDBZkyEL0B0bHAGxB_H5AuZnN-s:1w9PGP:GUIyn0oYvrbrcZII-kRtcn52xzK80S9jEAQm2kCeh1w', '2026-04-19 15:19:49.911107'),
('sngen5cbq665eqp4r2m51lhbdwtqzbl4', '.eJxVjDsOwjAQRO_iGlk2rH-U9DmDtWtvcAA5UpxUiLvjSCmgnHlv5i0ibmuJW-MlTllchRan344wPbnuID-w3meZ5rouE8ldkQdtcpgzv26H-3dQsJW-hnxmBzCyo2C88xcKuudkR0KPzIpZK0ekXDBZkyEL0B0bHAGxB_H5AuZnN-s:1w9IXF:Hi7hDT9wiVxr1wwfgPkRi85JnNJSRByG2gYPMdqYw20', '2026-04-19 08:08:45.930076');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `biblioteca_escritor`
--
ALTER TABLE `biblioteca_escritor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca_libro`
--
ALTER TABLE `biblioteca_libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biblioteca_libro_escritor_id_a15ff95c_fk_biblioteca_escritor_id` (`escritor_id`);

--
-- Indices de la tabla `biblioteca_usuario`
--
ALTER TABLE `biblioteca_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `biblioteca_escritor`
--
ALTER TABLE `biblioteca_escritor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `biblioteca_libro`
--
ALTER TABLE `biblioteca_libro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `biblioteca_usuario`
--
ALTER TABLE `biblioteca_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `biblioteca_libro`
--
ALTER TABLE `biblioteca_libro`
  ADD CONSTRAINT `biblioteca_libro_escritor_id_a15ff95c_fk_biblioteca_escritor_id` FOREIGN KEY (`escritor_id`) REFERENCES `biblioteca_escritor` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
