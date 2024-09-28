-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16-Out-2023 às 22:54
-- Versão do servidor: 10.5.17-MariaDB-cll-lve
-- versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dingolan_casadinamo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-10-12 18:21:55.724000', '2023-10-12 18:21:55.724000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-12 18:21:56.852000', '2023-10-12 18:21:56.852000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-12 18:21:58.011000', '2023-10-12 18:21:58.011000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-10-12 18:21:59.156000', '2023-10-12 18:21:59.156000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-12 18:22:00.293000', '2023-10-12 18:22:00.293000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-12 18:22:01.427000', '2023-10-12 18:22:01.427000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-10-12 18:22:02.578000', '2023-10-12 18:22:02.578000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-12 18:22:03.709000', '2023-10-12 18:22:03.709000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:04.852000', '2023-10-12 18:22:04.852000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-10-12 18:22:05.980000', '2023-10-12 18:22:05.980000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-12 18:22:07.115000', '2023-10-12 18:22:07.115000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-12 18:22:08.256000', '2023-10-12 18:22:08.256000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-12 18:22:10.167000', '2023-10-12 18:22:10.167000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-12 18:22:11.301000', '2023-10-12 18:22:11.301000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-12 18:22:12.442000', '2023-10-12 18:22:12.442000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2023-10-12 18:22:13.575000', '2023-10-12 18:22:13.575000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2023-10-12 18:22:14.716000', '2023-10-12 18:22:14.716000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2023-10-12 18:22:15.855000', '2023-10-12 18:22:15.855000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2023-10-12 18:22:16.987000', '2023-10-12 18:22:16.987000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:18.134000', '2023-10-12 18:22:18.134000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:19.281000', '2023-10-12 18:22:19.281000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:20.422000', '2023-10-12 18:22:20.422000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:21.571000', '2023-10-12 18:22:21.571000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:22.711000', '2023-10-12 18:22:22.711000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-12 18:22:23.857000', '2023-10-12 18:22:23.857000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-12 18:22:24.998000', '2023-10-12 18:22:24.998000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-12 18:22:26.132000', '2023-10-12 18:22:26.132000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:27.258000', '2023-10-12 18:22:27.258000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:28.391000', '2023-10-12 18:22:28.391000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:29.525000', '2023-10-12 18:22:29.525000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:30.658000', '2023-10-12 18:22:30.658000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:22:31.790000', '2023-10-12 18:22:31.790000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:32.938000', '2023-10-12 18:22:32.938000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:34.071000', '2023-10-12 18:22:34.071000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:35.220000', '2023-10-12 18:22:35.220000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:36.351000', '2023-10-12 18:22:36.351000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:37.505000', '2023-10-12 18:22:37.505000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:38.649000', '2023-10-12 18:22:38.649000', NULL, NULL),
(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:39.781000', '2023-10-12 18:22:39.781000', NULL, NULL),
(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:40.921000', '2023-10-12 18:22:40.921000', NULL, NULL),
(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:42.056000', '2023-10-12 18:22:42.056000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:22:43.193000', '2023-10-12 18:22:43.193000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:44.347000', '2023-10-12 18:22:44.347000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:45.486000', '2023-10-12 18:22:45.486000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:46.637000', '2023-10-12 18:22:46.637000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:47.776000', '2023-10-12 18:22:47.776000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:22:48.914000', '2023-10-12 18:22:48.914000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:50.052000', '2023-10-12 18:22:50.052000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:51.201000', '2023-10-12 18:22:51.201000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:52.331000', '2023-10-12 18:22:52.331000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:22:53.476000', '2023-10-12 18:22:53.476000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2023-10-12 18:22:54.623000', '2023-10-12 18:22:54.623000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2023-10-12 18:22:55.761000', '2023-10-12 18:22:55.761000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2023-10-12 18:22:56.931000', '2023-10-12 18:22:56.931000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:22:58.070000', '2023-10-12 18:22:58.070000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2023-10-12 18:22:59.207000', '2023-10-12 18:22:59.207000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2023-10-12 18:23:00.357000', '2023-10-12 18:23:00.357000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2023-10-12 18:23:01.500000', '2023-10-12 18:23:01.500000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2023-10-12 18:23:02.630000', '2023-10-12 18:23:02.630000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2023-10-12 18:23:03.763000', '2023-10-12 18:23:03.763000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:23:04.941000', '2023-10-12 18:23:04.941000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2023-10-12 18:23:06.076000', '2023-10-12 18:23:06.076000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2023-10-12 18:23:07.220000', '2023-10-12 18:23:07.220000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2023-10-12 18:23:08.365000', '2023-10-12 18:23:08.365000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2023-10-12 18:23:09.501000', '2023-10-12 18:23:09.501000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2023-10-12 18:23:10.643000', '2023-10-12 18:23:10.643000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2023-10-12 18:23:11.789000', '2023-10-12 18:23:11.789000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2023-10-12 18:23:12.930000', '2023-10-12 18:23:12.930000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2023-10-12 18:23:14.067000', '2023-10-12 18:23:14.067000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', '{}', 'api::menu-item.menu-item', '{}', '[]', '2023-10-13 05:58:31.506000', '2023-10-13 05:58:31.506000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', '{}', 'api::menu-item.menu-item', '{}', '[]', '2023-10-13 05:58:32.616000', '2023-10-13 05:58:32.616000', NULL, NULL),
(75, 'plugin::content-manager.explorer.create', '{}', 'api::tipo-link.tipo-link', '{\"fields\":[\"descricao\"]}', '[]', '2023-10-13 06:02:16.742000', '2023-10-13 06:02:16.742000', NULL, NULL),
(76, 'plugin::content-manager.explorer.read', '{}', 'api::tipo-link.tipo-link', '{\"fields\":[\"descricao\"]}', '[]', '2023-10-13 06:02:17.932000', '2023-10-13 06:02:17.932000', NULL, NULL),
(77, 'plugin::content-manager.explorer.update', '{}', 'api::tipo-link.tipo-link', '{\"fields\":[\"descricao\"]}', '[]', '2023-10-13 06:02:19.058000', '2023-10-13 06:02:19.058000', NULL, NULL),
(78, 'plugin::content-manager.explorer.delete', '{}', 'api::tipo-link.tipo-link', '{}', '[]', '2023-10-13 06:02:20.191000', '2023-10-13 06:02:20.191000', NULL, NULL),
(86, 'plugin::content-manager.explorer.delete', '{}', 'api::conteudo.conteudo', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-14 12:55:52.912000', '2023-10-14 12:55:52.912000', NULL, NULL),
(96, 'plugin::content-manager.explorer.create', '{}', 'api::menu-item.menu-item', '{\"fields\":[\"ordem\",\"descricao\",\"url\",\"ativo\",\"tipo_link\",\"conteudo\"]}', '[]', '2023-10-14 13:54:52.701000', '2023-10-14 13:54:52.701000', NULL, NULL),
(97, 'plugin::content-manager.explorer.read', '{}', 'api::menu-item.menu-item', '{\"fields\":[\"ordem\",\"descricao\",\"url\",\"ativo\",\"tipo_link\",\"conteudo\"]}', '[]', '2023-10-14 13:54:53.765000', '2023-10-14 13:54:53.765000', NULL, NULL),
(98, 'plugin::content-manager.explorer.update', '{}', 'api::menu-item.menu-item', '{\"fields\":[\"ordem\",\"descricao\",\"url\",\"ativo\",\"tipo_link\",\"conteudo\"]}', '[]', '2023-10-14 13:54:54.846000', '2023-10-14 13:54:54.846000', NULL, NULL),
(99, 'plugin::content-manager.explorer.create', '{}', 'api::configuracao.configuracao', '{\"fields\":[\"avisos\",\"bannerTexto\",\"textoRodape\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 01:34:37.563000', '2023-10-16 01:34:37.563000', NULL, NULL),
(100, 'plugin::content-manager.explorer.read', '{}', 'api::configuracao.configuracao', '{\"fields\":[\"avisos\",\"bannerTexto\",\"textoRodape\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 01:34:38.630000', '2023-10-16 01:34:38.630000', NULL, NULL),
(101, 'plugin::content-manager.explorer.update', '{}', 'api::configuracao.configuracao', '{\"fields\":[\"avisos\",\"bannerTexto\",\"textoRodape\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 01:34:39.694000', '2023-10-16 01:34:39.694000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', '{}', 'api::configuracao.configuracao', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 01:34:40.789000', '2023-10-16 01:34:40.789000', NULL, NULL),
(109, 'plugin::content-manager.explorer.delete', '{}', 'api::loja.loja', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 14:51:48.974000', '2023-10-16 14:51:48.974000', NULL, NULL),
(113, 'plugin::content-manager.explorer.delete', '{}', 'api::loja-marca.loja-marca', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 14:56:25.942000', '2023-10-16 14:56:25.942000', NULL, NULL),
(117, 'plugin::content-manager.explorer.delete', '{}', 'api::loja-peca.loja-peca', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 14:58:58.074000', '2023-10-16 14:58:58.074000', NULL, NULL),
(121, 'plugin::content-manager.explorer.delete', '{}', 'api::loja-categoria-aplicacao.loja-categoria-aplicacao', '{\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:01:53.971000', '2023-10-16 15:01:53.971000', NULL, NULL),
(122, 'plugin::content-manager.explorer.create', '{}', 'api::conteudo.conteudo', '{\"fields\":[\"midia\",\"titulo\",\"menu_items\",\"conteudo\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:30.509000', '2023-10-16 15:11:30.509000', NULL, NULL),
(123, 'plugin::content-manager.explorer.create', '{}', 'api::loja.loja', '{\"fields\":[\"tituloProduto\",\"preco\",\"quantidadeMinima\",\"descricao\",\"media\",\"loja_categoria_aplicacao\",\"loja_marca\",\"loja_peca\",\"opcional\",\"frete\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:31.570000', '2023-10-16 15:11:31.570000', NULL, NULL),
(124, 'plugin::content-manager.explorer.create', '{}', 'api::loja-categoria-aplicacao.loja-categoria-aplicacao', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:32.627000', '2023-10-16 15:11:32.627000', NULL, NULL),
(125, 'plugin::content-manager.explorer.create', '{}', 'api::loja-marca.loja-marca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:33.694000', '2023-10-16 15:11:33.694000', NULL, NULL),
(126, 'plugin::content-manager.explorer.create', '{}', 'api::loja-peca.loja-peca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:34.753000', '2023-10-16 15:11:34.753000', NULL, NULL),
(127, 'plugin::content-manager.explorer.read', '{}', 'api::conteudo.conteudo', '{\"fields\":[\"midia\",\"titulo\",\"menu_items\",\"conteudo\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:35.812000', '2023-10-16 15:11:35.812000', NULL, NULL),
(128, 'plugin::content-manager.explorer.read', '{}', 'api::loja.loja', '{\"fields\":[\"tituloProduto\",\"preco\",\"quantidadeMinima\",\"descricao\",\"media\",\"loja_categoria_aplicacao\",\"loja_marca\",\"loja_peca\",\"opcional\",\"frete\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:36.885000', '2023-10-16 15:11:36.885000', NULL, NULL),
(129, 'plugin::content-manager.explorer.read', '{}', 'api::loja-categoria-aplicacao.loja-categoria-aplicacao', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:37.946000', '2023-10-16 15:11:37.946000', NULL, NULL),
(130, 'plugin::content-manager.explorer.read', '{}', 'api::loja-marca.loja-marca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:39.003000', '2023-10-16 15:11:39.003000', NULL, NULL),
(131, 'plugin::content-manager.explorer.read', '{}', 'api::loja-peca.loja-peca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:40.063000', '2023-10-16 15:11:40.063000', NULL, NULL),
(132, 'plugin::content-manager.explorer.update', '{}', 'api::conteudo.conteudo', '{\"fields\":[\"midia\",\"titulo\",\"menu_items\",\"conteudo\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:41.122000', '2023-10-16 15:11:41.122000', NULL, NULL),
(133, 'plugin::content-manager.explorer.update', '{}', 'api::loja.loja', '{\"fields\":[\"tituloProduto\",\"preco\",\"quantidadeMinima\",\"descricao\",\"media\",\"loja_categoria_aplicacao\",\"loja_marca\",\"loja_peca\",\"opcional\",\"frete\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:42.186000', '2023-10-16 15:11:42.186000', NULL, NULL),
(134, 'plugin::content-manager.explorer.update', '{}', 'api::loja-categoria-aplicacao.loja-categoria-aplicacao', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:43.247000', '2023-10-16 15:11:43.247000', NULL, NULL),
(135, 'plugin::content-manager.explorer.update', '{}', 'api::loja-marca.loja-marca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:44.304000', '2023-10-16 15:11:44.304000', NULL, NULL),
(136, 'plugin::content-manager.explorer.update', '{}', 'api::loja-peca.loja-peca', '{\"fields\":[\"descricao\",\"lojas\"],\"locales\":[\"en\",\"pt-BR\",\"es\"]}', '[]', '2023-10-16 15:11:45.360000', '2023-10-16 15:11:45.360000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 61),
(74, 74, 1, 62),
(75, 75, 1, 63),
(76, 76, 1, 64),
(77, 77, 1, 65),
(78, 78, 1, 66),
(96, 86, 1, 81),
(100, 96, 1, 85),
(101, 97, 1, 86),
(102, 98, 1, 87),
(103, 99, 1, 88),
(104, 100, 1, 89),
(105, 101, 1, 90),
(106, 102, 1, 91),
(113, 109, 1, 98),
(117, 113, 1, 102),
(121, 117, 1, 106),
(125, 121, 1, 110),
(126, 122, 1, 111),
(127, 123, 1, 112),
(128, 124, 1, 113),
(129, 125, 1, 114),
(130, 126, 1, 115),
(131, 127, 1, 116),
(132, 128, 1, 117),
(133, 129, 1, 118),
(134, 130, 1, 119),
(135, 131, 1, 120),
(136, 132, 1, 121),
(137, 133, 1, 122),
(138, 134, 1, 123),
(139, 135, 1, 124),
(140, 136, 1, 125);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-10-12 18:21:52.864000', '2023-10-12 18:21:52.864000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-10-12 18:21:54.031000', '2023-10-12 18:21:54.031000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-10-12 18:21:54.973000', '2023-10-12 18:21:54.973000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Anderson', 'Pedro', NULL, 'dingolandia@gmail.com', '$2a$10$2cqTR/5709cvZc1JMBcF4u8gGl3itUkx6FF1iwbDqzi2K1VFrh3PC', NULL, NULL, 1, 0, NULL, '2023-10-12 18:24:13.831000', '2023-10-12 18:24:13.831000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracaos`
--

CREATE TABLE `configuracaos` (
  `id` int(10) UNSIGNED NOT NULL,
  `avisos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_texto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto_rodape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configuracaos`
--

INSERT INTO `configuracaos` (`id`, `avisos`, `banner_texto`, `texto_rodape`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'SEG. A SEX. 8:00 AS 18:00 - QUA. 8:00 AS 17:00 (11) 3207-3000 • (11) 3207-2668 • (11) 3207-2679', 'A CASA D&Iacute;NAMO &Eacute; CONFIAN&Ccedil;A#AGILIDADE E RESPEITO PELO CLIENTE#MAIS DE 50 ANOS DE DEDICA&Ccedil;&Atilde;O, TRANSPAR&Ecirc;NCIA E RESPONSABILIDADE', 'Casa Dínamo - Rua: Piratininga, 1076 - Brás, São Paulo - SP, 03042-000 - Tel: (11) 3207-2668', '2023-10-16 01:46:14.666000', '2023-10-16 01:46:14.666000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracaos_localizations_links`
--

CREATE TABLE `configuracaos_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `configuracao_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_configuracao_id` int(10) UNSIGNED DEFAULT NULL,
  `configuracao_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudos`
--

CREATE TABLE `conteudos` (
  `id` int(10) UNSIGNED NOT NULL,
  `conteudo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `conteudos`
--

INSERT INTO `conteudos` (`id`, `conteudo`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`, `titulo`) VALUES
(1, '<p><strong>Texto da empresa, e mais alguns detalhes para teste</strong></p><p><strong>E algum lipsum: </strong>Nullam ac urna est. Ut sodales purus sagittis accumsan suscipit. Aenean rutrum erat ac lorem accumsan condimentum. Maecenas tempor, tortor quis tincidunt ornare, neque mauris volutpat justo, id aliquet nulla mi vel sem. Ut sem purus, hendrerit et dignissim id, feugiat id est. Duis fringilla fermentum nisi vel venenatis. Donec nunc arcu, ultricies vel commodo cursus, blandit eu eros. Integer auctor, mauris non feugiat posuere, justo orci consectetur dui, nec elementum purus massa et mauris. Aliquam erat volutpat. Ut tempor molestie ligula, in porta tellus elementum sed. Etiam vel laoreet ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet erat vitae lectus hendrerit volutpat. Nam semper felis enim, sit amet fermentum libero auctor ut. Ut sem sem, aliquet vitae gravida id, luctus nec lacus. Etiam maximus, augue quis congue aliquam, lorem nunc mattis leo, a lacinia metus arcu id eros.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 15px;orphans:2;padding:0px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Cras at nisi justo. Phasellus tincidunt fringilla dui nec sodales. Praesent porttitor quam a est blandit mattis. Aenean sit amet quam porttitor, viverra metus vel, placerat dui. In a neque odio. Vestibulum at felis libero. Pellentesque efficitur porttitor accumsan. Aenean id leo a lectus imperdiet viverra nec lobortis ipsum. Donec vulputate metus at interdum tempor.</p>', '2023-10-14 06:54:37.986000', '2023-10-16 14:45:33.598000', 1, 1, 'pt-BR', 'Empresa'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed iaculis, odio non ultricies sodales, ligula purus semper elit, in feugiat elit erat ut lacus. Proin laoreet augue in nunc volutpat, ac faucibus odio euismod. Fusce non nibh at mi feugiat tempus egestas sed felis. Morbi blandit nisi dictum, consectetur elit et, pharetra sapien. Etiam volutpat, nibh id varius vestibulum, nisi lectus fringilla diam, sit amet pulvinar odio enim vitae odio. Nullam porttitor lorem non felis viverra suscipit. Praesent ex nulla, suscipit ac eleifend eu, consectetur at diam. Mauris laoreet fringilla libero, nec porta dui ornare ac. Suspendisse non purus id elit mollis sollicitudin auctor et ante. In convallis metus quis iaculis sagittis.\n\nPellentesque dapibus in erat quis fringilla. Sed pretium ullamcorper nibh, ut laoreet nisi viverra eu. Proin fringilla augue id tellus semper, eget laoreet nulla semper. Maecenas tincidunt iaculis ligula, elementum maximus diam iaculis et. Suspendisse ornare justo at mi molestie accumsan. Nulla sed sodales tellus. Fusce aliquam nisi ut tincidunt porttitor.\n\nNullam malesuada at nulla sit amet tempus. Nam sapien orci, vehicula sit amet arcu et, mollis posuere urna. Quisque finibus purus quis luctus egestas. Nullam tristique ante in dolor accumsan, luctus ultricies ipsum tincidunt. Aenean ultrices id odio ac rhoncus. Phasellus a auctor tellus. Donec eu elementum magna. Sed ornare a turpis ut vestibulum. Duis et est venenatis augue vehicula auctor quis quis diam. Cras eget magna sit amet tellus finibus pellentesque sed eu libero.', '2023-10-15 16:22:02.514000', '2023-10-15 16:22:02.514000', 1, 1, 'pt-BR', 'Serviço');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudos_localizations_links`
--

CREATE TABLE `conteudos_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `conteudo_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'istockphoto-1249654571-170667a.webp', NULL, NULL, 658, 263, '{\"thumbnail\":{\"name\":\"thumbnail_istockphoto-1249654571-170667a.webp\",\"hash\":\"thumbnail_istockphoto_1249654571_170667a_da0d949984\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":98,\"size\":4.22,\"url\":\"/uploads/thumbnail_istockphoto_1249654571_170667a_da0d949984.webp\"},\"small\":{\"name\":\"small_istockphoto-1249654571-170667a.webp\",\"hash\":\"small_istockphoto_1249654571_170667a_da0d949984\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":200,\"size\":11.84,\"url\":\"/uploads/small_istockphoto_1249654571_170667a_da0d949984.webp\"}}', 'istockphoto_1249654571_170667a_da0d949984', '.webp', 'image/webp', 19.71, '/uploads/istockphoto_1249654571_170667a_da0d949984.webp', NULL, 'local', NULL, '/', '2023-10-14 06:53:13.011000', '2023-10-14 06:53:13.011000', 1, 1),
(2, 'star-wars-jedi-knight-jedi-academy-switch-hero.jpg', NULL, NULL, 1920, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_star-wars-jedi-knight-jedi-academy-switch-hero.jpg\",\"hash\":\"thumbnail_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":138,\"size\":4.93,\"url\":\"/uploads/thumbnail_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067.jpg\"},\"medium\":{\"name\":\"medium_star-wars-jedi-knight-jedi-academy-switch-hero.jpg\",\"hash\":\"medium_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":422,\"size\":40.64,\"url\":\"/uploads/medium_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067.jpg\"},\"large\":{\"name\":\"large_star-wars-jedi-knight-jedi-academy-switch-hero.jpg\",\"hash\":\"large_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":563,\"size\":84.69,\"url\":\"/uploads/large_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067.jpg\"},\"small\":{\"name\":\"small_star-wars-jedi-knight-jedi-academy-switch-hero.jpg\",\"hash\":\"small_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":281,\"size\":16.29,\"url\":\"/uploads/small_star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067.jpg\"}}', 'star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067', '.jpg', 'image/jpeg', 380.56, '/uploads/star_wars_jedi_knight_jedi_academy_switch_hero_7154d63067.jpg', NULL, 'local', NULL, '/', '2023-10-15 16:21:32.972000', '2023-10-15 16:21:32.972000', 1, 1),
(3, '1610231697474415.jpg', NULL, NULL, 350, 280, '{\"thumbnail\":{\"name\":\"thumbnail_1610231697474415.jpg\",\"hash\":\"thumbnail_1610231697474415_ec736cf3f0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":195,\"height\":156,\"size\":6.12,\"url\":\"/uploads/thumbnail_1610231697474415_ec736cf3f0.jpg\"}}', '1610231697474415_ec736cf3f0', '.jpg', 'image/jpeg', 14.50, '/uploads/1610231697474415_ec736cf3f0.jpg', NULL, 'local', NULL, '/', '2023-10-16 15:22:35.304000', '2023-10-16 15:22:35.304000', 1, 1),
(4, '1610231697474437.jpg', NULL, NULL, 350, 280, '{\"thumbnail\":{\"name\":\"thumbnail_1610231697474437.jpg\",\"hash\":\"thumbnail_1610231697474437_e704013680\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":195,\"height\":156,\"size\":5.97,\"url\":\"/uploads/thumbnail_1610231697474437_e704013680.jpg\"}}', '1610231697474437_e704013680', '.jpg', 'image/jpeg', 14.01, '/uploads/1610231697474437_e704013680.jpg', NULL, 'local', NULL, '/', '2023-10-16 15:22:35.606000', '2023-10-16 15:22:35.606000', 1, 1),
(5, '1610231697474433.jpg', NULL, NULL, 350, 280, '{\"thumbnail\":{\"name\":\"thumbnail_1610231697474433.jpg\",\"hash\":\"thumbnail_1610231697474433_b4af67424d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":195,\"height\":156,\"size\":6.83,\"url\":\"/uploads/thumbnail_1610231697474433_b4af67424d.jpg\"}}', '1610231697474433_b4af67424d', '.jpg', 'image/jpeg', 16.55, '/uploads/1610231697474433_b4af67424d.jpg', NULL, 'local', NULL, '/', '2023-10-16 15:22:35.610000', '2023-10-16 15:22:35.610000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(3, 2, 2, 'api::conteudo.conteudo', 'midia', 1),
(4, 1, 1, 'api::conteudo.conteudo', 'midia', 1),
(5, 3, 1, 'api::loja.loja', 'media', 1),
(6, 4, 1, 'api::loja.loja', 'media', 2),
(7, 5, 1, 'api::loja.loja', 'media', 3),
(8, 3, 2, 'api::loja.loja', 'media', 1),
(9, 4, 2, 'api::loja.loja', 'media', 2),
(10, 5, 2, 'api::loja.loja', 'media', 3),
(14, 3, 3, 'api::loja.loja', 'media', 1),
(15, 4, 3, 'api::loja.loja', 'media', 2),
(16, 5, 3, 'api::loja.loja', 'media', 3),
(17, 3, 4, 'api::loja.loja', 'media', 1),
(18, 4, 4, 'api::loja.loja', 'media', 2),
(19, 5, 4, 'api::loja.loja', 'media', 3),
(20, 3, 5, 'api::loja.loja', 'media', 1),
(21, 4, 5, 'api::loja.loja', 'media', 2),
(22, 5, 5, 'api::loja.loja', 'media', 3),
(23, 3, 6, 'api::loja.loja', 'media', 1),
(24, 4, 6, 'api::loja.loja', 'media', 2),
(25, 5, 6, 'api::loja.loja', 'media', 3),
(26, 3, 7, 'api::loja.loja', 'media', 1),
(27, 4, 7, 'api::loja.loja', 'media', 2),
(28, 5, 7, 'api::loja.loja', 'media', 3),
(29, 3, 8, 'api::loja.loja', 'media', 1),
(30, 4, 8, 'api::loja.loja', 'media', 2),
(31, 5, 8, 'api::loja.loja', 'media', 3),
(32, 3, 9, 'api::loja.loja', 'media', 1),
(33, 4, 9, 'api::loja.loja', 'media', 2),
(34, 5, 9, 'api::loja.loja', 'media', 3),
(35, 3, 10, 'api::loja.loja', 'media', 1),
(36, 4, 10, 'api::loja.loja', 'media', 2),
(37, 5, 10, 'api::loja.loja', 'media', 3),
(38, 3, 11, 'api::loja.loja', 'media', 1),
(39, 4, 11, 'api::loja.loja', 'media', 2),
(40, 5, 11, 'api::loja.loja', 'media', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-10-12 18:21:50.758000', '2023-10-12 18:21:50.758000', NULL, NULL),
(2, 'Portuguese (Brazil) (pt-BR)', 'pt-BR', '2023-10-12 19:12:37.285000', '2023-10-12 19:12:52.189000', 1, 1),
(3, 'Spanish (es)', 'es', '2023-10-14 12:55:48.211000', '2023-10-14 12:55:48.211000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas`
--

CREATE TABLE `lojas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo_produto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quantidade_minima` int(11) DEFAULT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`id`, `titulo_produto`, `preco`, `quantidade_minima`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'MOTOR PARTIDA FIAT FIRE', 550.00, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 15:23:48.494000', '2023-10-16 15:23:48.494000', 1, 1, 'pt-BR'),
(2, 'MOTOR PARTIDA FIAT FIRE', 550.00, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:45:04.753000', '2023-10-16 23:45:04.753000', 1, 1, 'pt-BR'),
(3, 'MOTOR PARTIDA FIAT FIRE', 550.53, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:45:32.898000', '2023-10-16 23:45:47.467000', 1, 1, 'pt-BR'),
(4, 'MOTOR PARTIDA FIAT FIRE', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:46:19.599000', '2023-10-16 23:46:19.599000', 1, 1, 'pt-BR'),
(5, 'MOTOR PARTIDA', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:46:57.603000', '2023-10-16 23:46:57.603000', 1, 1, 'pt-BR'),
(6, 'MOTOR PARTIDA - 5', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:47:30.288000', '2023-10-16 23:47:30.288000', 1, 1, 'pt-BR'),
(7, 'MOTOR PARTIDA - 9', 222.99, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:48:16.848000', '2023-10-16 23:48:16.848000', 1, 1, 'pt-BR');
INSERT INTO `lojas` (`id`, `titulo_produto`, `preco`, `quantidade_minima`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(8, 'MOTOR PARTIDA FIAT FIRE', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:48:57.064000', '2023-10-16 23:48:57.064000', 1, 1, 'pt-BR'),
(9, 'MOTOR PARTIDA FIAT FIRE', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:49:20.911000', '2023-10-16 23:49:20.911000', 1, 1, 'pt-BR'),
(10, 'MOTOR PARTIDA FIAT FIRE', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:49:44.485000', '2023-10-16 23:49:44.485000', 1, 1, 'pt-BR'),
(11, 'MOTOR PARTIDA FIAT FIRE', 666.88, 1, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">MOTOR PARTIDA FIAT FIRE BOSCH ORIGINAL 12V 11 DENTES</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">APLICAÇÃO :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">UNO 2015 - 2018</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">GRAND SIENA</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">IDEA 1.4</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">PALIO 2012 1.4 FLEX</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">COD. ORIGINAIS E SIMILARES :</strong></i></em></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgba(255, 255, 255, 0.5);box-sizing:border-box;color:rgb(85, 85, 85);font-family:&quot;Source Sans Pro&quot;, sans-serif;font-size:medium;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:5px 5px 15px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><em style=\"box-sizing:border-box;\"><i><strong style=\"box-sizing:border-box;\">F000C60003 520027007 F000C60005 F000C60004</strong></i></em></p>', '2023-10-16 23:50:07.180000', '2023-10-16 23:50:07.180000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_frete_links`
--

CREATE TABLE `lojas_frete_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_localizations_links`
--

CREATE TABLE `lojas_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_loja_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_loja_categoria_aplicacao_links`
--

CREATE TABLE `lojas_loja_categoria_aplicacao_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_categoria_aplicacao_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `lojas_loja_categoria_aplicacao_links`
--

INSERT INTO `lojas_loja_categoria_aplicacao_links` (`id`, `loja_id`, `loja_categoria_aplicacao_id`, `loja_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(11, 11, 2, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_loja_marca_links`
--

CREATE TABLE `lojas_loja_marca_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_marca_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `lojas_loja_marca_links`
--

INSERT INTO `lojas_loja_marca_links` (`id`, `loja_id`, `loja_marca_id`, `loja_order`) VALUES
(1, 1, 5, 1),
(2, 2, 5, 2),
(3, 3, 5, 3),
(4, 4, 5, 4),
(5, 5, 5, 5),
(6, 6, 5, 6),
(7, 7, 5, 7),
(8, 8, 5, 8),
(9, 9, 5, 9),
(10, 10, 5, 10),
(11, 11, 5, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_loja_peca_links`
--

CREATE TABLE `lojas_loja_peca_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_peca_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `lojas_loja_peca_links`
--

INSERT INTO `lojas_loja_peca_links` (`id`, `loja_id`, `loja_peca_id`, `loja_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 5),
(6, 6, 1, 6),
(7, 7, 1, 7),
(8, 8, 1, 8),
(9, 9, 1, 9),
(10, 10, 1, 10),
(11, 11, 1, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas_opcional_links`
--

CREATE TABLE `lojas_opcional_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_id` int(10) UNSIGNED DEFAULT NULL,
  `conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_categoria_aplicacaos`
--

CREATE TABLE `loja_categoria_aplicacaos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `loja_categoria_aplicacaos`
--

INSERT INTO `loja_categoria_aplicacaos` (`id`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Ducato ,Boxer ,Jumper', '2023-10-16 15:14:14.930000', '2023-10-16 15:14:14.930000', 1, 1, 'pt-BR'),
(2, 'Promoções', '2023-10-16 15:14:32.405000', '2023-10-16 15:14:32.405000', 1, 1, 'pt-BR'),
(3, 'ONIX', '2023-10-16 15:14:46.829000', '2023-10-16 15:14:46.829000', 1, 1, 'pt-BR'),
(4, 'UNO PALIO SIENA IDEA', '2023-10-16 15:15:08.071000', '2023-10-16 15:15:08.071000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_categoria_aplicacaos_localizations_links`
--

CREATE TABLE `loja_categoria_aplicacaos_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_categoria_aplicacao_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_loja_categoria_aplicacao_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_categoria_aplicacao_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_marcas`
--

CREATE TABLE `loja_marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `loja_marcas`
--

INSERT INTO `loja_marcas` (`id`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'BOSCH', '2023-10-16 15:15:32.691000', '2023-10-16 15:15:32.691000', 1, 1, 'pt-BR'),
(2, 'DELCO', '2023-10-16 15:15:44.123000', '2023-10-16 15:15:44.123000', 1, 1, 'pt-BR'),
(3, 'VALEO', '2023-10-16 15:15:56.487000', '2023-10-16 15:15:56.487000', 1, 1, 'pt-BR'),
(4, 'MITSUBISHI', '2023-10-16 15:16:09.085000', '2023-10-16 15:16:09.085000', 1, 1, 'pt-BR'),
(5, 'DENSO', '2023-10-16 15:16:30.516000', '2023-10-16 15:16:30.516000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_marcas_localizations_links`
--

CREATE TABLE `loja_marcas_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_marca_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_loja_marca_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_marca_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_pecas`
--

CREATE TABLE `loja_pecas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `loja_pecas`
--

INSERT INTO `loja_pecas` (`id`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'MOTOR DE PARTIDA', '2023-10-16 15:16:53.787000', '2023-10-16 15:16:53.787000', 1, 1, 'pt-BR'),
(2, 'ALTERNADOR', '2023-10-16 15:17:07.261000', '2023-10-16 15:17:07.261000', 1, 1, 'pt-BR'),
(3, 'REGULADOR DE VOLTAGEM', '2023-10-16 15:17:26.464000', '2023-10-16 15:17:26.464000', 1, 1, 'pt-BR'),
(4, 'PLACA RETIFICADORA', '2023-10-16 15:17:40.761000', '2023-10-16 15:17:40.761000', 1, 1, 'pt-BR'),
(5, 'ESTATOR', '2023-10-16 15:17:51.767000', '2023-10-16 15:17:51.767000', 1, 1, 'pt-BR'),
(6, 'ROTOR', '2023-10-16 15:18:04.725000', '2023-10-16 15:18:04.725000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_pecas_localizations_links`
--

CREATE TABLE `loja_pecas_localizations_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `loja_peca_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_loja_peca_id` int(10) UNSIGNED DEFAULT NULL,
  `loja_peca_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `ordem`, `descricao`, `url`, `ativo`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 2, 'Empresa', '/empresa', 1, '2023-10-13 06:10:09.866000', '2023-10-14 12:50:39.410000', '2023-10-13 06:17:25.667000', 1, 1),
(2, 3, 'Serviços', '/servicos', 1, '2023-10-13 06:12:15.723000', '2023-10-13 06:12:15.723000', '2023-10-13 06:17:25.667000', 1, 1),
(3, 1, 'Home', '/home', 1, '2023-10-13 06:13:20.819000', '2023-10-13 06:13:20.819000', '2023-10-13 06:17:25.667000', 1, 1),
(4, 4, 'Contato', '/contato', 1, '2023-10-13 06:13:49.752000', '2023-10-13 06:13:49.752000', '2023-10-13 06:17:25.667000', 1, 1),
(5, 5, 'Loja', '/loja', 1, '2023-10-13 06:16:19.076000', '2023-10-14 06:30:42.382000', '2023-10-13 06:17:25.667000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items_conteudo_links`
--

CREATE TABLE `menu_items_conteudo_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED DEFAULT NULL,
  `conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `conteudo_order` double UNSIGNED DEFAULT NULL,
  `menu_item_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_items_conteudo_links`
--

INSERT INTO `menu_items_conteudo_links` (`id`, `menu_item_id`, `conteudo_id`, `conteudo_order`, `menu_item_order`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items_tipo_link_links`
--

CREATE TABLE `menu_items_tipo_link_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_link_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_items_tipo_link_links`
--

INSERT INTO `menu_items_tipo_link_links` (`id`, `menu_item_id`, `tipo_link_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'casadinamo-get', 'obter dados via get', 'read-only', '5c9885fea7ecdb69a111464c3271c59c3b457e8075931c95aac179cf05a437539a089953335f5d50266e1018f66f9b84ba3ee928b0a8c0457230a75eaf603554', NULL, NULL, NULL, '2023-10-13 06:34:09.816000', '2023-10-13 06:35:53.554000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::configuracao.configuracao\":{\"kind\":\"collectionType\",\"collectionName\":\"configuracaos\",\"info\":{\"singularName\":\"configuracao\",\"pluralName\":\"configuracaos\",\"displayName\":\"Configuracao\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"avisos\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"bannerTexto\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"textoRodape\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::configuracao.configuracao\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"configuracaos\",\"info\":{\"singularName\":\"configuracao\",\"pluralName\":\"configuracaos\",\"displayName\":\"Configuracao\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"avisos\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"bannerTexto\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"textoRodape\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"configuracao\",\"connection\":\"default\",\"uid\":\"api::configuracao.configuracao\",\"apiName\":\"configuracao\",\"globalId\":\"Configuracao\",\"actions\":{},\"lifecycles\":{}},\"api::conteudo.conteudo\":{\"kind\":\"collectionType\",\"collectionName\":\"conteudos\",\"info\":{\"singularName\":\"conteudo\",\"pluralName\":\"conteudos\",\"displayName\":\"Conteudo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"midia\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"titulo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"menu_items\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::menu-item.menu-item\",\"mappedBy\":\"conteudo\"},\"conteudo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"options\":{\"preset\":\"toolbar\"},\"customField\":\"plugin::ckeditor5.CKEditor\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"frete\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::conteudo.conteudo\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"conteudos\",\"info\":{\"singularName\":\"conteudo\",\"pluralName\":\"conteudos\",\"displayName\":\"Conteudo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"midia\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"titulo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"menu_items\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::menu-item.menu-item\",\"mappedBy\":\"conteudo\"},\"conteudo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"customField\",\"options\":{\"preset\":\"toolbar\"},\"customField\":\"plugin::ckeditor5.CKEditor\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"frete\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"conteudo\",\"connection\":\"default\",\"uid\":\"api::conteudo.conteudo\",\"apiName\":\"conteudo\",\"globalId\":\"Conteudo\",\"actions\":{},\"lifecycles\":{}},\"api::loja.loja\":{\"kind\":\"collectionType\",\"collectionName\":\"lojas\",\"info\":{\"singularName\":\"loja\",\"pluralName\":\"lojas\",\"displayName\":\"Loja\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"tituloProduto\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"preco\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"decimal\"},\"quantidadeMinima\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"integer\"},\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"options\":{\"preset\":\"toolbarBaloon\"},\"customField\":\"plugin::ckeditor5.CKEditor\"},\"media\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"loja_categoria_aplicacao\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\",\"inversedBy\":\"lojas\"},\"loja_marca\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-marca.loja-marca\",\"inversedBy\":\"lojas\"},\"loja_peca\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-peca.loja-peca\",\"inversedBy\":\"lojas\"},\"opcional\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"lojas\"},\"frete\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"lojas\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"lojas\",\"info\":{\"singularName\":\"loja\",\"pluralName\":\"lojas\",\"displayName\":\"Loja\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"tituloProduto\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"preco\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"decimal\"},\"quantidadeMinima\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"integer\"},\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"customField\",\"options\":{\"preset\":\"toolbarBaloon\"},\"customField\":\"plugin::ckeditor5.CKEditor\"},\"media\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"loja_categoria_aplicacao\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\",\"inversedBy\":\"lojas\"},\"loja_marca\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-marca.loja-marca\",\"inversedBy\":\"lojas\"},\"loja_peca\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::loja-peca.loja-peca\",\"inversedBy\":\"lojas\"},\"opcional\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"lojas\"},\"frete\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"lojas\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"loja\",\"connection\":\"default\",\"uid\":\"api::loja.loja\",\"apiName\":\"loja\",\"globalId\":\"Loja\",\"actions\":{},\"lifecycles\":{}},\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\":{\"kind\":\"collectionType\",\"collectionName\":\"loja_categoria_aplicacaos\",\"info\":{\"singularName\":\"loja-categoria-aplicacao\",\"pluralName\":\"loja-categoria-aplicacaos\",\"displayName\":\"LojaCategoriaAplicacao\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_categoria_aplicacao\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"loja_categoria_aplicacaos\",\"info\":{\"singularName\":\"loja-categoria-aplicacao\",\"pluralName\":\"loja-categoria-aplicacaos\",\"displayName\":\"LojaCategoriaAplicacao\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_categoria_aplicacao\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"loja-categoria-aplicacao\",\"connection\":\"default\",\"uid\":\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\",\"apiName\":\"loja-categoria-aplicacao\",\"globalId\":\"LojaCategoriaAplicacao\",\"actions\":{},\"lifecycles\":{}},\"api::loja-marca.loja-marca\":{\"kind\":\"collectionType\",\"collectionName\":\"loja_marcas\",\"info\":{\"singularName\":\"loja-marca\",\"pluralName\":\"loja-marcas\",\"displayName\":\"LojaMarca\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_marca\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja-marca.loja-marca\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"loja_marcas\",\"info\":{\"singularName\":\"loja-marca\",\"pluralName\":\"loja-marcas\",\"displayName\":\"LojaMarca\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_marca\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"loja-marca\",\"connection\":\"default\",\"uid\":\"api::loja-marca.loja-marca\",\"apiName\":\"loja-marca\",\"globalId\":\"LojaMarca\",\"actions\":{},\"lifecycles\":{}},\"api::loja-peca.loja-peca\":{\"kind\":\"collectionType\",\"collectionName\":\"loja_pecas\",\"info\":{\"singularName\":\"loja-peca\",\"pluralName\":\"loja-pecas\",\"displayName\":\"LojaPeca\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_peca\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja-peca.loja-peca\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"loja_pecas\",\"info\":{\"singularName\":\"loja-peca\",\"pluralName\":\"loja-pecas\",\"displayName\":\"LojaPeca\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"descricao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"lojas\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::loja.loja\",\"mappedBy\":\"loja_peca\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"loja-peca\",\"connection\":\"default\",\"uid\":\"api::loja-peca.loja-peca\",\"apiName\":\"loja-peca\",\"globalId\":\"LojaPeca\",\"actions\":{},\"lifecycles\":{}},\"api::menu-item.menu-item\":{\"kind\":\"collectionType\",\"collectionName\":\"menu_items\",\"info\":{\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"displayName\":\"menuItem\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"ordem\":{\"type\":\"integer\"},\"descricao\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"},\"ativo\":{\"type\":\"boolean\"},\"tipo_link\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-link.tipo-link\"},\"conteudo\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"menu_items\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"menu_items\",\"info\":{\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"displayName\":\"menuItem\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"ordem\":{\"type\":\"integer\"},\"descricao\":{\"type\":\"string\"},\"url\":{\"type\":\"string\"},\"ativo\":{\"type\":\"boolean\"},\"tipo_link\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-link.tipo-link\"},\"conteudo\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::conteudo.conteudo\",\"inversedBy\":\"menu_items\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"menu-item\",\"connection\":\"default\",\"uid\":\"api::menu-item.menu-item\",\"apiName\":\"menu-item\",\"globalId\":\"MenuItem\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-link.tipo-link\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_links\",\"info\":{\"singularName\":\"tipo-link\",\"pluralName\":\"tipo-links\",\"displayName\":\"tipoLink\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"descricao\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_links\",\"info\":{\"singularName\":\"tipo-link\",\"pluralName\":\"tipo-links\",\"displayName\":\"tipoLink\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"descricao\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-link\",\"connection\":\"default\",\"uid\":\"api::tipo-link.tipo-link\",\"apiName\":\"tipo-link\",\"globalId\":\"TipoLink\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"41 26 18 * * 4\",\"lastWeeklyUpdate\":1697146001593}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"pt-BR\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::menu-item.menu-item', '{\"uid\":\"api::menu-item.menu-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"ordem\":{\"edit\":{\"label\":\"ordem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ordem\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"tipo_link\":{\"edit\":{\"label\":\"tipo_link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"tipo_link\",\"searchable\":true,\"sortable\":true}},\"conteudo\":{\"edit\":{\"label\":\"conteudo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"titulo\"},\"list\":{\"label\":\"conteudo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"ordem\",\"descricao\",\"url\",\"tipo_link\",\"ativo\"],\"edit\":[[{\"name\":\"ordem\",\"size\":4},{\"name\":\"descricao\",\"size\":6}],[{\"name\":\"url\",\"size\":6},{\"name\":\"ativo\",\"size\":4}],[{\"name\":\"tipo_link\",\"size\":6},{\"name\":\"conteudo\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::tipo-link.tipo-link', '{\"uid\":\"api::tipo-link.tipo-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descricao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"descricao\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::conteudo.conteudo', '{\"uid\":\"api::conteudo.conteudo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"midia\":{\"edit\":{\"label\":\"midia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"midia\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"menu_items\":{\"edit\":{\"label\":\"menu_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"menu_items\",\"searchable\":false,\"sortable\":false}},\"conteudo\":{\"edit\":{\"label\":\"conteudo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conteudo\",\"searchable\":false,\"sortable\":false}},\"lojas\":{\"edit\":{\"label\":\"lojas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tituloProduto\"},\"list\":{\"label\":\"lojas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"midia\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"conteudo\",\"size\":12}],[{\"name\":\"midia\",\"size\":6},{\"name\":\"menu_items\",\"size\":6}],[{\"name\":\"lojas\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(26, 'plugin_content_manager_configuration_content_types::api::configuracao.configuracao', '{\"uid\":\"api::configuracao.configuracao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"avisos\",\"defaultSortBy\":\"avisos\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"avisos\":{\"edit\":{\"label\":\"avisos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avisos\",\"searchable\":true,\"sortable\":true}},\"bannerTexto\":{\"edit\":{\"label\":\"bannerTexto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bannerTexto\",\"searchable\":true,\"sortable\":true}},\"textoRodape\":{\"edit\":{\"label\":\"textoRodape\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"textoRodape\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"avisos\",\"size\":8}],[{\"name\":\"textoRodape\",\"size\":8}],[{\"name\":\"bannerTexto\",\"size\":8}]],\"list\":[\"id\",\"avisos\",\"bannerTexto\",\"textoRodape\"]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::loja.loja', '{\"uid\":\"api::loja.loja\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"tituloProduto\",\"defaultSortBy\":\"tituloProduto\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"tituloProduto\":{\"edit\":{\"label\":\"tituloProduto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tituloProduto\",\"searchable\":true,\"sortable\":true}},\"preco\":{\"edit\":{\"label\":\"preco\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preco\",\"searchable\":true,\"sortable\":true}},\"quantidadeMinima\":{\"edit\":{\"label\":\"quantidadeMinima\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantidadeMinima\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":false,\"sortable\":false}},\"media\":{\"edit\":{\"label\":\"media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"media\",\"searchable\":false,\"sortable\":false}},\"loja_categoria_aplicacao\":{\"edit\":{\"label\":\"loja_categoria_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"loja_categoria_aplicacao\",\"searchable\":true,\"sortable\":true}},\"loja_marca\":{\"edit\":{\"label\":\"loja_marca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"loja_marca\",\"searchable\":true,\"sortable\":true}},\"loja_peca\":{\"edit\":{\"label\":\"loja_peca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"loja_peca\",\"searchable\":true,\"sortable\":true}},\"opcional\":{\"edit\":{\"label\":\"opcional\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"titulo\"},\"list\":{\"label\":\"opcional\",\"searchable\":true,\"sortable\":true}},\"frete\":{\"edit\":{\"label\":\"frete\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"titulo\"},\"list\":{\"label\":\"frete\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tituloProduto\",\"preco\",\"quantidadeMinima\"],\"edit\":[[{\"name\":\"tituloProduto\",\"size\":6},{\"name\":\"preco\",\"size\":4}],[{\"name\":\"quantidadeMinima\",\"size\":4}],[{\"name\":\"descricao\",\"size\":12}],[{\"name\":\"media\",\"size\":6},{\"name\":\"loja_categoria_aplicacao\",\"size\":6}],[{\"name\":\"loja_marca\",\"size\":6},{\"name\":\"loja_peca\",\"size\":6}],[{\"name\":\"opcional\",\"size\":6},{\"name\":\"frete\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::loja-marca.loja-marca', '{\"uid\":\"api::loja-marca.loja-marca\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"lojas\":{\"edit\":{\"label\":\"lojas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tituloProduto\"},\"list\":{\"label\":\"lojas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descricao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"descricao\",\"size\":6},{\"name\":\"lojas\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::loja-peca.loja-peca', '{\"uid\":\"api::loja-peca.loja-peca\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"lojas\":{\"edit\":{\"label\":\"lojas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tituloProduto\"},\"list\":{\"label\":\"lojas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descricao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"descricao\",\"size\":6},{\"name\":\"lojas\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::loja-categoria-aplicacao.loja-categoria-aplicacao', '{\"uid\":\"api::loja-categoria-aplicacao.loja-categoria-aplicacao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"lojas\":{\"edit\":{\"label\":\"lojas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tituloProduto\"},\"list\":{\"label\":\"lojas\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descricao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"descricao\",\"size\":6},{\"name\":\"lojas\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(17, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracaos\",\"indexes\":[{\"name\":\"configuracaos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"configuracaos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"configuracaos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"configuracaos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"avisos\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"banner_texto\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"texto_rodape\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"conteudos\",\"indexes\":[{\"name\":\"conteudos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"conteudos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"conteudos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"conteudos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"titulo\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conteudo\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"lojas\",\"indexes\":[{\"name\":\"lojas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"lojas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"lojas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"lojas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"titulo_produto\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preco\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"quantidade_minima\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"loja_categoria_aplicacaos\",\"indexes\":[{\"name\":\"loja_categoria_aplicacaos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"loja_categoria_aplicacaos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"loja_categoria_aplicacaos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"loja_categoria_aplicacaos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"loja_marcas\",\"indexes\":[{\"name\":\"loja_marcas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"loja_marcas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"loja_marcas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"loja_marcas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"loja_pecas\",\"indexes\":[{\"name\":\"loja_pecas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"loja_pecas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"loja_pecas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"loja_pecas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"menu_items\",\"indexes\":[{\"name\":\"menu_items_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"menu_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"menu_items_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"menu_items_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"ordem\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ativo\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipo_links\",\"indexes\":[{\"name\":\"tipo_links_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"tipo_links_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"tipo_links_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"tipo_links_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"descricao\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracaos_localizations_links\",\"indexes\":[{\"name\":\"configuracaos_localizations_links_fk\",\"columns\":[\"configuracao_id\"]},{\"name\":\"configuracaos_localizations_links_inv_fk\",\"columns\":[\"inv_configuracao_id\"]},{\"name\":\"configuracaos_localizations_links_unique\",\"columns\":[\"configuracao_id\",\"inv_configuracao_id\"],\"type\":\"unique\"},{\"name\":\"configuracaos_localizations_links_order_fk\",\"columns\":[\"configuracao_order\"]}],\"foreignKeys\":[{\"name\":\"configuracaos_localizations_links_fk\",\"columns\":[\"configuracao_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"configuracaos\",\"onDelete\":\"CASCADE\"},{\"name\":\"configuracaos_localizations_links_inv_fk\",\"columns\":[\"inv_configuracao_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"configuracaos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"configuracao_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_configuracao_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"configuracao_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"conteudos_localizations_links\",\"indexes\":[{\"name\":\"conteudos_localizations_links_fk\",\"columns\":[\"conteudo_id\"]},{\"name\":\"conteudos_localizations_links_inv_fk\",\"columns\":[\"inv_conteudo_id\"]},{\"name\":\"conteudos_localizations_links_unique\",\"columns\":[\"conteudo_id\",\"inv_conteudo_id\"],\"type\":\"unique\"},{\"name\":\"conteudos_localizations_links_order_fk\",\"columns\":[\"conteudo_order\"]}],\"foreignKeys\":[{\"name\":\"conteudos_localizations_links_fk\",\"columns\":[\"conteudo_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"conteudos\",\"onDelete\":\"CASCADE\"},{\"name\":\"conteudos_localizations_links_inv_fk\",\"columns\":[\"inv_conteudo_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"conteudos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"conteudo_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_conteudo_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"conteudo_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_loja_categoria_aplicacao_links\",\"indexes\":[{\"name\":\"lojas_loja_categoria_aplicacao_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_loja_categoria_aplicacao_links_inv_fk\",\"columns\":[\"loja_categoria_aplicacao_id\"]},{\"name\":\"lojas_loja_categoria_aplicacao_links_unique\",\"columns\":[\"loja_id\",\"loja_categoria_aplicacao_id\"],\"type\":\"unique\"},{\"name\":\"lojas_loja_categoria_aplicacao_links_order_inv_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_loja_categoria_aplicacao_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_loja_categoria_aplicacao_links_inv_fk\",\"columns\":[\"loja_categoria_aplicacao_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_categoria_aplicacaos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_categoria_aplicacao_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_loja_marca_links\",\"indexes\":[{\"name\":\"lojas_loja_marca_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_loja_marca_links_inv_fk\",\"columns\":[\"loja_marca_id\"]},{\"name\":\"lojas_loja_marca_links_unique\",\"columns\":[\"loja_id\",\"loja_marca_id\"],\"type\":\"unique\"},{\"name\":\"lojas_loja_marca_links_order_inv_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_loja_marca_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_loja_marca_links_inv_fk\",\"columns\":[\"loja_marca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_marcas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_marca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_loja_peca_links\",\"indexes\":[{\"name\":\"lojas_loja_peca_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_loja_peca_links_inv_fk\",\"columns\":[\"loja_peca_id\"]},{\"name\":\"lojas_loja_peca_links_unique\",\"columns\":[\"loja_id\",\"loja_peca_id\"],\"type\":\"unique\"},{\"name\":\"lojas_loja_peca_links_order_inv_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_loja_peca_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_loja_peca_links_inv_fk\",\"columns\":[\"loja_peca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_pecas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_peca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_opcional_links\",\"indexes\":[{\"name\":\"lojas_opcional_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_opcional_links_inv_fk\",\"columns\":[\"conteudo_id\"]},{\"name\":\"lojas_opcional_links_unique\",\"columns\":[\"loja_id\",\"conteudo_id\"],\"type\":\"unique\"},{\"name\":\"lojas_opcional_links_order_inv_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_opcional_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_opcional_links_inv_fk\",\"columns\":[\"conteudo_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"conteudos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"conteudo_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_frete_links\",\"indexes\":[{\"name\":\"lojas_frete_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_frete_links_inv_fk\",\"columns\":[\"conteudo_id\"]},{\"name\":\"lojas_frete_links_unique\",\"columns\":[\"loja_id\",\"conteudo_id\"],\"type\":\"unique\"},{\"name\":\"lojas_frete_links_order_inv_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_frete_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_frete_links_inv_fk\",\"columns\":[\"conteudo_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"conteudos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"conteudo_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"lojas_localizations_links\",\"indexes\":[{\"name\":\"lojas_localizations_links_fk\",\"columns\":[\"loja_id\"]},{\"name\":\"lojas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_id\"]},{\"name\":\"lojas_localizations_links_unique\",\"columns\":[\"loja_id\",\"inv_loja_id\"],\"type\":\"unique\"},{\"name\":\"lojas_localizations_links_order_fk\",\"columns\":[\"loja_order\"]}],\"foreignKeys\":[{\"name\":\"lojas_localizations_links_fk\",\"columns\":[\"loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"},{\"name\":\"lojas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"lojas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_loja_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"loja_categoria_aplicacaos_localizations_links\",\"indexes\":[{\"name\":\"loja_categoria_aplicacaos_localizations_links_fk\",\"columns\":[\"loja_categoria_aplicacao_id\"]},{\"name\":\"loja_categoria_aplicacaos_localizations_links_inv_fk\",\"columns\":[\"inv_loja_categoria_aplicacao_id\"]},{\"name\":\"loja_categoria_aplicacaos_localizations_links_unique\",\"columns\":[\"loja_categoria_aplicacao_id\",\"inv_loja_categoria_aplicacao_id\"],\"type\":\"unique\"},{\"name\":\"loja_categoria_aplicacaos_localizations_links_order_fk\",\"columns\":[\"loja_categoria_aplicacao_order\"]}],\"foreignKeys\":[{\"name\":\"loja_categoria_aplicacaos_localizations_links_fk\",\"columns\":[\"loja_categoria_aplicacao_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_categoria_aplicacaos\",\"onDelete\":\"CASCADE\"},{\"name\":\"loja_categoria_aplicacaos_localizations_links_inv_fk\",\"columns\":[\"inv_loja_categoria_aplicacao_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_categoria_aplicacaos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_categoria_aplicacao_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_loja_categoria_aplicacao_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_categoria_aplicacao_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"loja_marcas_localizations_links\",\"indexes\":[{\"name\":\"loja_marcas_localizations_links_fk\",\"columns\":[\"loja_marca_id\"]},{\"name\":\"loja_marcas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_marca_id\"]},{\"name\":\"loja_marcas_localizations_links_unique\",\"columns\":[\"loja_marca_id\",\"inv_loja_marca_id\"],\"type\":\"unique\"},{\"name\":\"loja_marcas_localizations_links_order_fk\",\"columns\":[\"loja_marca_order\"]}],\"foreignKeys\":[{\"name\":\"loja_marcas_localizations_links_fk\",\"columns\":[\"loja_marca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_marcas\",\"onDelete\":\"CASCADE\"},{\"name\":\"loja_marcas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_marca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_marcas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_marca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_loja_marca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_marca_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"loja_pecas_localizations_links\",\"indexes\":[{\"name\":\"loja_pecas_localizations_links_fk\",\"columns\":[\"loja_peca_id\"]},{\"name\":\"loja_pecas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_peca_id\"]},{\"name\":\"loja_pecas_localizations_links_unique\",\"columns\":[\"loja_peca_id\",\"inv_loja_peca_id\"],\"type\":\"unique\"},{\"name\":\"loja_pecas_localizations_links_order_fk\",\"columns\":[\"loja_peca_order\"]}],\"foreignKeys\":[{\"name\":\"loja_pecas_localizations_links_fk\",\"columns\":[\"loja_peca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_pecas\",\"onDelete\":\"CASCADE\"},{\"name\":\"loja_pecas_localizations_links_inv_fk\",\"columns\":[\"inv_loja_peca_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"loja_pecas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"loja_peca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_loja_peca_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"loja_peca_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"menu_items_tipo_link_links\",\"indexes\":[{\"name\":\"menu_items_tipo_link_links_fk\",\"columns\":[\"menu_item_id\"]},{\"name\":\"menu_items_tipo_link_links_inv_fk\",\"columns\":[\"tipo_link_id\"]},{\"name\":\"menu_items_tipo_link_links_unique\",\"columns\":[\"menu_item_id\",\"tipo_link_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"menu_items_tipo_link_links_fk\",\"columns\":[\"menu_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"menu_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"menu_items_tipo_link_links_inv_fk\",\"columns\":[\"tipo_link_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"tipo_links\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"menu_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"tipo_link_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"menu_items_conteudo_links\",\"indexes\":[{\"name\":\"menu_items_conteudo_links_fk\",\"columns\":[\"menu_item_id\"]},{\"name\":\"menu_items_conteudo_links_inv_fk\",\"columns\":[\"conteudo_id\"]},{\"name\":\"menu_items_conteudo_links_unique\",\"columns\":[\"menu_item_id\",\"conteudo_id\"],\"type\":\"unique\"},{\"name\":\"menu_items_conteudo_links_order_fk\",\"columns\":[\"conteudo_order\"]},{\"name\":\"menu_items_conteudo_links_order_inv_fk\",\"columns\":[\"menu_item_order\"]}],\"foreignKeys\":[{\"name\":\"menu_items_conteudo_links_fk\",\"columns\":[\"menu_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"menu_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"menu_items_conteudo_links_inv_fk\",\"columns\":[\"conteudo_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"conteudos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"menu_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"conteudo_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"conteudo_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"menu_item_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-10-16 15:11:10', '9bce9da5e0ba2006c8142b8cd96cb9b1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_links`
--

CREATE TABLE `tipo_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipo_links`
--

INSERT INTO `tipo_links` (`id`, `descricao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'interno', '2023-10-13 06:07:18.776000', '2023-10-13 06:07:18.776000', 1, 1),
(2, 'externo', '2023-10-13 06:07:43.653000', '2023-10-13 06:07:43.653000', 1, 1),
(3, 'componente', '2023-10-13 06:08:18.893000', '2023-10-13 06:08:18.893000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.changePassword', '2023-10-12 18:21:48.275000', '2023-10-12 18:21:48.275000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2023-10-12 18:21:48.275000', '2023-10-12 18:21:48.275000', NULL, NULL),
(3, 'plugin::users-permissions.auth.forgotPassword', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(5, 'plugin::users-permissions.auth.register', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(7, 'plugin::users-permissions.auth.callback', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(8, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(9, 'plugin::users-permissions.auth.emailConfirmation', '2023-10-12 18:21:49.414000', '2023-10-12 18:21:49.414000', NULL, NULL),
(10, 'api::menu-item.menu-item.findOne', '2023-10-13 07:20:50.762000', '2023-10-13 07:20:50.762000', NULL, NULL),
(11, 'api::menu-item.menu-item.find', '2023-10-13 07:20:50.762000', '2023-10-13 07:20:50.762000', NULL, NULL),
(12, 'api::tipo-link.tipo-link.find', '2023-10-13 07:20:50.762000', '2023-10-13 07:20:50.762000', NULL, NULL),
(13, 'api::tipo-link.tipo-link.findOne', '2023-10-13 07:20:50.762000', '2023-10-13 07:20:50.762000', NULL, NULL),
(14, 'api::conteudo.conteudo.find', '2023-10-14 12:54:22.769000', '2023-10-14 12:54:22.769000', NULL, NULL),
(15, 'api::conteudo.conteudo.findOne', '2023-10-14 12:54:22.769000', '2023-10-14 12:54:22.769000', NULL, NULL),
(16, 'api::configuracao.configuracao.findOne', '2023-10-16 01:47:15.997000', '2023-10-16 01:47:15.997000', NULL, NULL),
(17, 'api::configuracao.configuracao.find', '2023-10-16 01:47:15.997000', '2023-10-16 01:47:15.997000', NULL, NULL),
(18, 'api::loja.loja.find', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(19, 'api::loja.loja.findOne', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(20, 'api::loja-categoria-aplicacao.loja-categoria-aplicacao.find', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(21, 'api::loja-categoria-aplicacao.loja-categoria-aplicacao.findOne', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(22, 'api::loja-marca.loja-marca.find', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(23, 'api::loja-marca.loja-marca.findOne', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(24, 'api::loja-peca.loja-peca.find', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL),
(25, 'api::loja-peca.loja-peca.findOne', '2023-10-16 15:26:08.715000', '2023-10-16 15:26:08.715000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 9, 2, 1),
(6, 5, 2, 1),
(7, 6, 2, 1),
(8, 7, 2, 1),
(9, 8, 2, 1),
(10, 10, 2, 2),
(11, 11, 2, 2),
(12, 12, 2, 2),
(13, 13, 2, 2),
(14, 14, 2, 3),
(15, 15, 2, 3),
(16, 16, 2, 4),
(17, 17, 2, 4),
(18, 18, 2, 5),
(19, 19, 2, 5),
(20, 20, 2, 5),
(21, 21, 2, 5),
(22, 22, 2, 5),
(23, 23, 2, 5),
(24, 25, 2, 5),
(25, 24, 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-10-12 18:21:46.362000', '2023-10-12 18:21:46.362000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-10-12 18:21:47.123000', '2023-10-16 15:26:07.829000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'dingolandia', 'dinga_aparte@hotmail.com', 'local', '$2a$10$nzX8jAKIt.WLDehEPyvJA.oGVv.KGwYgRD22gUhT0f8bWP/lC49Uq', NULL, NULL, 1, 1, '2023-10-13 05:28:59.962000', '2023-10-13 05:28:59.962000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices para tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Índices para tabela `configuracaos`
--
ALTER TABLE `configuracaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configuracaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `configuracaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `configuracaos_localizations_links`
--
ALTER TABLE `configuracaos_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `configuracaos_localizations_links_unique` (`configuracao_id`,`inv_configuracao_id`),
  ADD KEY `configuracaos_localizations_links_fk` (`configuracao_id`),
  ADD KEY `configuracaos_localizations_links_inv_fk` (`inv_configuracao_id`),
  ADD KEY `configuracaos_localizations_links_order_fk` (`configuracao_order`);

--
-- Índices para tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conteudos_created_by_id_fk` (`created_by_id`),
  ADD KEY `conteudos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `conteudos_localizations_links`
--
ALTER TABLE `conteudos_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conteudos_localizations_links_unique` (`conteudo_id`,`inv_conteudo_id`),
  ADD KEY `conteudos_localizations_links_fk` (`conteudo_id`),
  ADD KEY `conteudos_localizations_links_inv_fk` (`inv_conteudo_id`),
  ADD KEY `conteudos_localizations_links_order_fk` (`conteudo_order`);

--
-- Índices para tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Índices para tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Índices para tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lojas_created_by_id_fk` (`created_by_id`),
  ADD KEY `lojas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `lojas_frete_links`
--
ALTER TABLE `lojas_frete_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_frete_links_unique` (`loja_id`,`conteudo_id`),
  ADD KEY `lojas_frete_links_fk` (`loja_id`),
  ADD KEY `lojas_frete_links_inv_fk` (`conteudo_id`),
  ADD KEY `lojas_frete_links_order_inv_fk` (`loja_order`);

--
-- Índices para tabela `lojas_localizations_links`
--
ALTER TABLE `lojas_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_localizations_links_unique` (`loja_id`,`inv_loja_id`),
  ADD KEY `lojas_localizations_links_fk` (`loja_id`),
  ADD KEY `lojas_localizations_links_inv_fk` (`inv_loja_id`),
  ADD KEY `lojas_localizations_links_order_fk` (`loja_order`);

--
-- Índices para tabela `lojas_loja_categoria_aplicacao_links`
--
ALTER TABLE `lojas_loja_categoria_aplicacao_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_loja_categoria_aplicacao_links_unique` (`loja_id`,`loja_categoria_aplicacao_id`),
  ADD KEY `lojas_loja_categoria_aplicacao_links_fk` (`loja_id`),
  ADD KEY `lojas_loja_categoria_aplicacao_links_inv_fk` (`loja_categoria_aplicacao_id`),
  ADD KEY `lojas_loja_categoria_aplicacao_links_order_inv_fk` (`loja_order`);

--
-- Índices para tabela `lojas_loja_marca_links`
--
ALTER TABLE `lojas_loja_marca_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_loja_marca_links_unique` (`loja_id`,`loja_marca_id`),
  ADD KEY `lojas_loja_marca_links_fk` (`loja_id`),
  ADD KEY `lojas_loja_marca_links_inv_fk` (`loja_marca_id`),
  ADD KEY `lojas_loja_marca_links_order_inv_fk` (`loja_order`);

--
-- Índices para tabela `lojas_loja_peca_links`
--
ALTER TABLE `lojas_loja_peca_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_loja_peca_links_unique` (`loja_id`,`loja_peca_id`),
  ADD KEY `lojas_loja_peca_links_fk` (`loja_id`),
  ADD KEY `lojas_loja_peca_links_inv_fk` (`loja_peca_id`),
  ADD KEY `lojas_loja_peca_links_order_inv_fk` (`loja_order`);

--
-- Índices para tabela `lojas_opcional_links`
--
ALTER TABLE `lojas_opcional_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lojas_opcional_links_unique` (`loja_id`,`conteudo_id`),
  ADD KEY `lojas_opcional_links_fk` (`loja_id`),
  ADD KEY `lojas_opcional_links_inv_fk` (`conteudo_id`),
  ADD KEY `lojas_opcional_links_order_inv_fk` (`loja_order`);

--
-- Índices para tabela `loja_categoria_aplicacaos`
--
ALTER TABLE `loja_categoria_aplicacaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loja_categoria_aplicacaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `loja_categoria_aplicacaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `loja_categoria_aplicacaos_localizations_links`
--
ALTER TABLE `loja_categoria_aplicacaos_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loja_categoria_aplicacaos_localizations_links_unique` (`loja_categoria_aplicacao_id`,`inv_loja_categoria_aplicacao_id`),
  ADD KEY `loja_categoria_aplicacaos_localizations_links_fk` (`loja_categoria_aplicacao_id`),
  ADD KEY `loja_categoria_aplicacaos_localizations_links_inv_fk` (`inv_loja_categoria_aplicacao_id`),
  ADD KEY `loja_categoria_aplicacaos_localizations_links_order_fk` (`loja_categoria_aplicacao_order`);

--
-- Índices para tabela `loja_marcas`
--
ALTER TABLE `loja_marcas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loja_marcas_created_by_id_fk` (`created_by_id`),
  ADD KEY `loja_marcas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `loja_marcas_localizations_links`
--
ALTER TABLE `loja_marcas_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loja_marcas_localizations_links_unique` (`loja_marca_id`,`inv_loja_marca_id`),
  ADD KEY `loja_marcas_localizations_links_fk` (`loja_marca_id`),
  ADD KEY `loja_marcas_localizations_links_inv_fk` (`inv_loja_marca_id`),
  ADD KEY `loja_marcas_localizations_links_order_fk` (`loja_marca_order`);

--
-- Índices para tabela `loja_pecas`
--
ALTER TABLE `loja_pecas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loja_pecas_created_by_id_fk` (`created_by_id`),
  ADD KEY `loja_pecas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `loja_pecas_localizations_links`
--
ALTER TABLE `loja_pecas_localizations_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loja_pecas_localizations_links_unique` (`loja_peca_id`,`inv_loja_peca_id`),
  ADD KEY `loja_pecas_localizations_links_fk` (`loja_peca_id`),
  ADD KEY `loja_pecas_localizations_links_inv_fk` (`inv_loja_peca_id`),
  ADD KEY `loja_pecas_localizations_links_order_fk` (`loja_peca_order`);

--
-- Índices para tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_created_by_id_fk` (`created_by_id`),
  ADD KEY `menu_items_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `menu_items_conteudo_links`
--
ALTER TABLE `menu_items_conteudo_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_items_conteudo_links_unique` (`menu_item_id`,`conteudo_id`),
  ADD KEY `menu_items_conteudo_links_fk` (`menu_item_id`),
  ADD KEY `menu_items_conteudo_links_inv_fk` (`conteudo_id`),
  ADD KEY `menu_items_conteudo_links_order_fk` (`conteudo_order`),
  ADD KEY `menu_items_conteudo_links_order_inv_fk` (`menu_item_order`);

--
-- Índices para tabela `menu_items_tipo_link_links`
--
ALTER TABLE `menu_items_tipo_link_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_items_tipo_link_links_unique` (`menu_item_id`,`tipo_link_id`),
  ADD KEY `menu_items_tipo_link_links_fk` (`menu_item_id`),
  ADD KEY `menu_items_tipo_link_links_inv_fk` (`tipo_link_id`);

--
-- Índices para tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Índices para tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Índices para tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_links`
--
ALTER TABLE `tipo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_links_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_links_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Índices para tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices para tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices para tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `configuracaos`
--
ALTER TABLE `configuracaos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `configuracaos_localizations_links`
--
ALTER TABLE `configuracaos_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conteudos`
--
ALTER TABLE `conteudos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `conteudos_localizations_links`
--
ALTER TABLE `conteudos_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lojas`
--
ALTER TABLE `lojas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `lojas_frete_links`
--
ALTER TABLE `lojas_frete_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lojas_localizations_links`
--
ALTER TABLE `lojas_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lojas_loja_categoria_aplicacao_links`
--
ALTER TABLE `lojas_loja_categoria_aplicacao_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `lojas_loja_marca_links`
--
ALTER TABLE `lojas_loja_marca_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `lojas_loja_peca_links`
--
ALTER TABLE `lojas_loja_peca_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `lojas_opcional_links`
--
ALTER TABLE `lojas_opcional_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loja_categoria_aplicacaos`
--
ALTER TABLE `loja_categoria_aplicacaos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `loja_categoria_aplicacaos_localizations_links`
--
ALTER TABLE `loja_categoria_aplicacaos_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loja_marcas`
--
ALTER TABLE `loja_marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `loja_marcas_localizations_links`
--
ALTER TABLE `loja_marcas_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loja_pecas`
--
ALTER TABLE `loja_pecas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `loja_pecas_localizations_links`
--
ALTER TABLE `loja_pecas_localizations_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `menu_items_conteudo_links`
--
ALTER TABLE `menu_items_conteudo_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `menu_items_tipo_link_links`
--
ALTER TABLE `menu_items_tipo_link_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_links`
--
ALTER TABLE `tipo_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `configuracaos`
--
ALTER TABLE `configuracaos`
  ADD CONSTRAINT `configuracaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `configuracaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `configuracaos_localizations_links`
--
ALTER TABLE `configuracaos_localizations_links`
  ADD CONSTRAINT `configuracaos_localizations_links_fk` FOREIGN KEY (`configuracao_id`) REFERENCES `configuracaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `configuracaos_localizations_links_inv_fk` FOREIGN KEY (`inv_configuracao_id`) REFERENCES `configuracaos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD CONSTRAINT `conteudos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `conteudos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `conteudos_localizations_links`
--
ALTER TABLE `conteudos_localizations_links`
  ADD CONSTRAINT `conteudos_localizations_links_fk` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conteudos_localizations_links_inv_fk` FOREIGN KEY (`inv_conteudo_id`) REFERENCES `conteudos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `lojas`
--
ALTER TABLE `lojas`
  ADD CONSTRAINT `lojas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lojas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `lojas_frete_links`
--
ALTER TABLE `lojas_frete_links`
  ADD CONSTRAINT `lojas_frete_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_frete_links_inv_fk` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lojas_localizations_links`
--
ALTER TABLE `lojas_localizations_links`
  ADD CONSTRAINT `lojas_localizations_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_localizations_links_inv_fk` FOREIGN KEY (`inv_loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lojas_loja_categoria_aplicacao_links`
--
ALTER TABLE `lojas_loja_categoria_aplicacao_links`
  ADD CONSTRAINT `lojas_loja_categoria_aplicacao_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_loja_categoria_aplicacao_links_inv_fk` FOREIGN KEY (`loja_categoria_aplicacao_id`) REFERENCES `loja_categoria_aplicacaos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lojas_loja_marca_links`
--
ALTER TABLE `lojas_loja_marca_links`
  ADD CONSTRAINT `lojas_loja_marca_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_loja_marca_links_inv_fk` FOREIGN KEY (`loja_marca_id`) REFERENCES `loja_marcas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lojas_loja_peca_links`
--
ALTER TABLE `lojas_loja_peca_links`
  ADD CONSTRAINT `lojas_loja_peca_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_loja_peca_links_inv_fk` FOREIGN KEY (`loja_peca_id`) REFERENCES `loja_pecas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `lojas_opcional_links`
--
ALTER TABLE `lojas_opcional_links`
  ADD CONSTRAINT `lojas_opcional_links_fk` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lojas_opcional_links_inv_fk` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `loja_categoria_aplicacaos`
--
ALTER TABLE `loja_categoria_aplicacaos`
  ADD CONSTRAINT `loja_categoria_aplicacaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `loja_categoria_aplicacaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `loja_categoria_aplicacaos_localizations_links`
--
ALTER TABLE `loja_categoria_aplicacaos_localizations_links`
  ADD CONSTRAINT `loja_categoria_aplicacaos_localizations_links_fk` FOREIGN KEY (`loja_categoria_aplicacao_id`) REFERENCES `loja_categoria_aplicacaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loja_categoria_aplicacaos_localizations_links_inv_fk` FOREIGN KEY (`inv_loja_categoria_aplicacao_id`) REFERENCES `loja_categoria_aplicacaos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `loja_marcas`
--
ALTER TABLE `loja_marcas`
  ADD CONSTRAINT `loja_marcas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `loja_marcas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `loja_marcas_localizations_links`
--
ALTER TABLE `loja_marcas_localizations_links`
  ADD CONSTRAINT `loja_marcas_localizations_links_fk` FOREIGN KEY (`loja_marca_id`) REFERENCES `loja_marcas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loja_marcas_localizations_links_inv_fk` FOREIGN KEY (`inv_loja_marca_id`) REFERENCES `loja_marcas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `loja_pecas`
--
ALTER TABLE `loja_pecas`
  ADD CONSTRAINT `loja_pecas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `loja_pecas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `loja_pecas_localizations_links`
--
ALTER TABLE `loja_pecas_localizations_links`
  ADD CONSTRAINT `loja_pecas_localizations_links_fk` FOREIGN KEY (`loja_peca_id`) REFERENCES `loja_pecas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loja_pecas_localizations_links_inv_fk` FOREIGN KEY (`inv_loja_peca_id`) REFERENCES `loja_pecas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menu_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `menu_items_conteudo_links`
--
ALTER TABLE `menu_items_conteudo_links`
  ADD CONSTRAINT `menu_items_conteudo_links_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_conteudo_links_inv_fk` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `menu_items_tipo_link_links`
--
ALTER TABLE `menu_items_tipo_link_links`
  ADD CONSTRAINT `menu_items_tipo_link_links_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_tipo_link_links_inv_fk` FOREIGN KEY (`tipo_link_id`) REFERENCES `tipo_links` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tipo_links`
--
ALTER TABLE `tipo_links`
  ADD CONSTRAINT `tipo_links_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_links_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
