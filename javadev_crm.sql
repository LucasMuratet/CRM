-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-javadev.alwaysdata.net
-- Generation Time: Jan 10, 2025 at 05:10 PM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javadev_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `uuid_ticket` varchar(255) NOT NULL,
  `uuid_client` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `status` enum('UNSTARTED','IN_PROGRESS','ENDED','CANCELLED') NOT NULL,
  `priority` enum('LOW','NORMAL','HIGH') NOT NULL,
  `request_type` enum('SUPPORT','FEATURE_REQUEST','BUG_REPORT') NOT NULL,
  `source` enum('EMAIL','PHONE','VISIT','WEB_FORM') NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`uuid_ticket`, `uuid_client`, `title`, `description`, `date_created`, `date_update`, `status`, `priority`, `request_type`, `source`, `comments`) VALUES
('0bd2f8d2-3a94-4fd1-9825-84a597ae8333', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Modif ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier vraiment rapidement.'),
('0bd2f8d2-3a94-4fd1-9825-84a597ae8a36', 'd856192e-b881-48d1-8659-4863fa9b7151', 'Bug Report: API Timeout Issues', 'Users are facing login issues after resetting their passwords.', '2025-01-07 09:27:00', '2025-01-07 10:05:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('0bd2f8d2-3a94-4fd1-9825-84a597ae8a69', 'd856192e-b881-48d1-8659-4863fa9b7151', 'Bug Report: API Timeout Issues', 'Users are facing login issues after resetting their passwords.', '2025-01-07 00:00:00', '2025-01-07 00:00:00', 'IN_PROGRESS', 'LOW', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('0bd2f8d2-4a94-4fd1-9825-84a597ae8333', 'd856132f-b881-48d1-8659-4863fa9b7151', 'test ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('0d7f8498-2d2a-49a3-b05a-486c473decb4', '10b84bc9-af2f-495b-9f3b-8a356a4f4c95', 'Feature Request: Custom Dashboards', 'Requesting multi-language support for better accessibility.', '2025-01-07 09:51:00', '2025-01-07 10:00:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('0ee2f8d2-3a94-4fd1-9825-84a597ae8333', 'd856132f-b881-48d1-8659-4863fa9b7151', 'testtt ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('167316d6-4ae6-476f-8f50-4a70b6487947', 'be4a6291-66cc-440a-b634-b605e37f8668', 'Support Request: Login Help', 'Mobile app crashes on login with certain devices.', '2025-01-07 14:24:00', '2025-01-07 14:53:00', 'ENDED', 'HIGH', 'SUPPORT', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('16e3f600-5cea-4861-8d58-3efb16ae6290', 'a3a750fb-10b0-4cb7-8b5d-9e6869a76c11', 'Feature Request: Custom Dashboards', 'Users are facing login issues after resetting their passwords.', '2025-01-07 09:53:00', '2025-01-07 10:33:00', 'UNSTARTED', 'HIGH', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('17df6493-e15c-419b-8ecc-c2331838b3ba', '2eaf287f-ba47-462e-8a5e-7781122da338', 'Support Request: Account Recovery', 'Requesting multi-language support for better accessibility.', '2025-01-07 14:22:00', '2025-01-07 14:52:00', 'CANCELLED', 'LOW', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('17e71b16-bd35-4e1c-9c48-ed8d79e7f869', 'b47295a2-b22a-4d19-bea0-61903787ce42', 'Bug Report: Mobile App Crash', 'Assistance required to recover account access.', '2025-01-07 14:24:00', '2025-01-07 14:27:00', 'ENDED', 'LOW', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Assistance required to recover account access.'),
('19bc1d97-b1ae-43cb-94bf-7fbd59c10cd2', '30aef222-d538-4f53-b5e1-83e5160029f6', 'Bug Report: Form Submission Error', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 10:36:00', '2025-01-07 11:32:00', 'IN_PROGRESS', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('1bbd47c9-1094-4560-8b27-eb83e5d11bf3', '61900566-2501-491f-8893-6895fabc97b8', 'Support: Unable to Connect to Network', 'Requesting multi-language support for better accessibility.', '2025-01-07 08:40:00', '2025-01-07 09:01:00', 'CANCELLED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('1c1f7de7-361c-4ecd-bc20-d811ac67b305', '581eef9d-e6ea-486a-965a-3ff1914cebed', 'Support: Unable to Connect to Network', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 12:27:00', '2025-01-07 13:12:00', 'CANCELLED', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('236d279e-7ce7-4bd8-a0c9-c25f657d1d75', '5cc185f1-020e-43dd-a0b6-635c3c399a8a', 'Support Request: Account Recovery', 'Mobile app crashes on login with certain devices.', '2025-01-07 11:47:00', '2025-01-07 12:13:00', 'ENDED', 'LOW', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('2560e450-6513-4c36-b3bd-f99b2278fb62', '6dac2462-ed15-451d-a89e-4e23f20484bd', 'Bug Report: Form Submission Error', 'Unable to connect to the company network; urgent issue.', '2025-01-07 15:28:00', '2025-01-07 16:24:00', 'ENDED', 'NORMAL', 'SUPPORT', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('25b44fbd-89dd-4607-9cba-5f0996b01ef1', 'be140b14-7481-4b7e-8e50-75e5741d115b', 'Support: Unable to Connect to Network', 'Mobile app crashes on login with certain devices.', '2025-01-07 13:55:00', '2025-01-07 14:39:00', 'ENDED', 'LOW', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('2867dcf6-fbc2-4893-b2b3-783c1f887d52', '941ccd20-d614-4ca1-95bb-43f20e084ddc', 'Feature Request: Dark Mode', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 16:01:00', '2025-01-07 16:43:00', 'ENDED', 'HIGH', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('298f09a4-3903-4af7-8d39-bb52826557fe', 'c36451e2-498a-414a-b7f4-0b9046eb7e74', 'Feature Request: Dark Mode', 'Assistance required to recover account access.', '2025-01-07 15:09:00', '2025-01-07 16:02:00', 'CANCELLED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Assistance required to recover account access.'),
('29e4b6f4-f1c1-4d8b-997c-1a5c71dacf9a', '0edd292e-b502-4582-84b7-ab89dbe9c255', 'Feature Request: Multi-Language Support', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 11:41:00', '2025-01-07 11:53:00', 'UNSTARTED', 'HIGH', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('2a88f324-b9df-4778-82b5-2e352c97f330', 'e6768259-2579-4790-b1cf-3e1051274975', 'Bug Report: Mobile App Crash', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 15:37:00', '2025-01-07 16:09:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('2c03f2b1-1e8f-4c88-b96e-9a4014096b1a', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('310efa17-a148-42a4-b621-cc325b9157b1', '019aaab5-6ca6-4c86-8992-4093e8762419', 'Support Request: Login Help', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 16:30:00', '2025-01-07 16:58:00', 'ENDED', 'NORMAL', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('328f4077-fba7-4741-954b-1087e8b4f65d', 'eb7a7d28-e359-46a5-835e-913c45e9cd9e', 'Feature Request: Multi-Language Support', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 12:02:00', '2025-01-07 12:23:00', 'IN_PROGRESS', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('3882fe30-3907-4f7b-884e-67f4f7cfa30d', '93334ae9-441b-4ecf-bd87-26222d8bb7ed', 'Support: Unable to Connect to Network', 'Unable to connect to the company network; urgent issue.', '2025-01-07 16:19:00', '2025-01-07 16:53:00', 'ENDED', 'HIGH', 'SUPPORT', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('411f757c-5f75-44e0-93f2-003cd5be55b2', '78f1e319-da0b-4100-a361-b0e119f9fc46', 'Bug Report: API Timeout Issues', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 08:29:00', '2025-01-07 08:36:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('4385ff81-4719-488c-a8cd-6b9f07bfa4d2', '58aac651-848c-4850-ad8e-e61fbe1d4e6f', 'Bug Report: Form Submission Error', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 08:44:00', '2025-01-07 09:21:00', 'CANCELLED', 'LOW', 'SUPPORT', 'EMAIL', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('43f70428-9130-4585-b9c9-f99c017559a5', '0c6e7e67-3202-4fba-9294-a208ce4b7c23', 'Support Request: Login Help', 'Users are facing login issues after resetting their passwords.', '2025-01-07 10:43:00', '2025-01-07 11:33:00', 'CANCELLED', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('44b5a41f-c52f-4d4a-9a8e-09ae853ef8f1', '4b513746-481d-4c2a-b04c-3aae53df589e', 'Feature Request: Dark Mode', 'Assistance required to recover account access.', '2025-01-07 11:10:00', '2025-01-07 11:42:00', 'ENDED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Assistance required to recover account access.'),
('4737fb53-c5a3-464c-a9c9-8d236a628d23', '4c99996b-2a87-4acd-a97e-e3b46bbac560', 'Feature Request: Custom Dashboards', 'Requesting multi-language support for better accessibility.', '2025-01-07 15:59:00', '2025-01-07 16:35:00', 'UNSTARTED', 'LOW', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('490ff633-9249-401e-adb5-e9a73108358b', 'ffaf5733-81a9-4b51-b244-a791ec98fcc5', 'Support: Unable to Connect to Network', 'Requesting multi-language support for better accessibility.', '2025-01-07 12:48:00', '2025-01-07 13:07:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('4f2ab895-4562-43f9-9cbd-cb79e749488b', '025a4dce-b4ae-4235-9104-60e928f884a8', 'Feature Request: Dark Mode', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 12:05:00', '2025-01-07 12:21:00', 'UNSTARTED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('5280a377-46dc-40bc-a487-479aa2e59b37', 'b9c684b3-685b-463c-9220-b92f72eb789a', 'Feature Request: Dark Mode', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 11:47:00', '2025-01-07 11:56:00', 'IN_PROGRESS', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('54a871b3-1748-4022-9841-ec6e2ea5a364', '4e532b7e-b24c-4c28-90ba-83ddb60675da', 'Support: Unable to Connect to Network', 'Users are facing login issues after resetting their passwords.', '2025-01-07 10:08:00', '2025-01-07 11:05:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('5678', '5678', 'Nouveau problème', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('57277e5f-8d86-4df3-b183-c1edafc9b756', '0328f269-4720-40c5-9c73-a79208fa4654', 'Bug Report: Mobile App Crash', 'Requesting multi-language support for better accessibility.', '2025-01-07 17:19:00', '2025-01-07 17:45:00', 'IN_PROGRESS', 'LOW', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('5c2e9ed3-f446-4d1d-a8d1-08c04007a1e4', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('5d49f3db-f984-48aa-8abf-4808a6e4407c', 'e6df6e2c-43fd-4aac-8883-cfb1c6c4eff9', 'Feature Request: Multi-Language Support', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 16:51:00', '2025-01-07 16:55:00', 'CANCELLED', 'HIGH', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('5f76c225-d1f0-444d-a01a-d8acc80ed1a3', '4827fe2f-7a35-48e4-ab7d-d8134f2f98f9', 'Bug Report: API Timeout Issues', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 17:11:00', '2025-01-07 18:01:00', 'IN_PROGRESS', 'LOW', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('60fbd9de-f64a-4520-9f9a-78edc4c841cd', 'cd567f3a-8eb9-4b6b-8dc5-1ae345c92d12', 'Support Request: Data Synchronization Issue', 'Data does not sync between the mobile app and the desktop version.', '2025-01-07 09:45:00', '2025-01-07 10:30:00', 'CANCELLED', 'NORMAL', 'SUPPORT', 'PHONE', 'Randomly generated issue: Data does not sync between the mobile app and the desktop version.'),
('61b924f9-7c18-4a02-b6a9-1ce74df13455', '34627fa7-65f9-4e2f-a1ab-b9301ff27218', 'Support: Unable to Connect to Network', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 16:51:00', '2025-01-07 17:01:00', 'UNSTARTED', 'NORMAL', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('64b54444-41a3-45e5-8efa-0b9435c35369', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('6559a75d-6f12-4b64-95da-0d10ff626d2f', 'e68260ca-98c1-4b72-a9c5-da318492813b', 'Bug Report: API Timeout Issues', 'Assistance required to recover account access.', '2025-01-07 14:32:00', '2025-01-07 15:30:00', 'UNSTARTED', 'NORMAL', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Assistance required to recover account access.'),
('672a11d1-24dc-4072-972e-e508abe3a048', 'd15a416a-8ac6-479f-981a-96d5933c3398', 'Support Request: Account Recovery', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 10:34:00', '2025-01-07 10:52:00', 'CANCELLED', 'LOW', 'SUPPORT', 'PHONE', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('67428791-e9d9-4936-9001-224ebaaf8a64', '736aec21-7860-4104-a6bf-197d036920ac', 'Support Request: Account Recovery', 'Users are facing login issues after resetting their passwords.', '2025-01-07 08:49:00', '2025-01-07 09:47:00', 'IN_PROGRESS', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('6da425ff-d338-426e-a445-5ec319c236c4', '98fd86f1-9146-4d91-a860-7f8fa9faa58a', 'Support Request: Login Help', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 09:03:00', '2025-01-07 09:26:00', 'IN_PROGRESS', 'LOW', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('6f5fb848-153e-4eb8-9020-bb1766d0f609', '156227e0-2f5f-4d54-a8a9-f7110bdd74b5', 'Feature Request: Dark Mode', 'Mobile app crashes on login with certain devices.', '2025-01-07 12:15:00', '2025-01-07 13:13:00', 'UNSTARTED', 'NORMAL', 'SUPPORT', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('6fa1b4ed-a3e0-425b-95bc-347efc54d48c', 'bb980a3e-b4e7-4015-9bda-eb88af044c64', 'Feature Request: Advanced Analytics', 'Unable to connect to the company network; urgent issue.', '2025-01-07 14:58:00', '2025-01-07 15:36:00', 'ENDED', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('7179c464-9d8b-468d-83ac-8d0acb9b950c', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('724481c5-9ea6-4bd2-b2c1-ed9d81fcd263', 'a4086a71-ec42-4ea7-9046-91bbe2a5c5df', 'Feature Request: Advanced Analytics', 'Mobile app crashes on login with certain devices.', '2025-01-07 11:51:00', '2025-01-07 12:10:00', 'UNSTARTED', 'HIGH', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('73ad3b56-5b07-4943-ae8a-066df10fb821', '8ada6242-7d55-4fe2-ab10-0a5e6b2f5acc', 'Support Request: Login Help', 'Mobile app crashes on login with certain devices.', '2025-01-07 12:40:00', '2025-01-07 13:10:00', 'IN_PROGRESS', 'NORMAL', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('762f4f19-6ded-44cb-9f97-9ef741df6d9b', '8c44287c-0c53-4807-9c72-5a60eb0e9114', 'Feature Request: Advanced Analytics', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 11:52:00', '2025-01-07 12:07:00', 'ENDED', 'HIGH', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('76759efd-44ce-43df-b9fe-945da44a2468', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket fin', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('77137be5-26e1-4b0d-9b6f-ff30a0faafac', '0a40a3c5-d58f-4bc3-8ec3-3063616263fc', 'Feature Request: Multi-Language Support', 'Assistance required to recover account access.', '2025-01-07 17:58:00', '2025-01-07 18:06:00', 'ENDED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Assistance required to recover account access.'),
('7bcc3451-7edc-4944-a322-733ffc0fce1d', '00d85efe-aba3-438d-b715-6f86547a64f0', 'Bug Report: Form Submission Error', 'Users are facing login issues after resetting their passwords.', '2025-01-07 16:09:00', '2025-01-07 16:10:00', 'ENDED', 'LOW', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('7c124e85-a54b-4935-a0a0-d349a28414be', '47e01f21-f5b0-41e7-9963-803564161809', 'Feature Request: Custom Dashboards', 'Requesting multi-language support for better accessibility.', '2025-01-07 08:24:00', '2025-01-07 08:58:00', 'CANCELLED', 'NORMAL', 'SUPPORT', 'PHONE', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('7db4474c-63e3-416b-ad34-4365d0f537df', '0e9e0af6-9b52-41bd-9d18-ee7ddb123181', 'Bug Report: Form Submission Error', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 11:33:00', '2025-01-07 12:02:00', 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('80b2c781-5b34-4eef-825b-a7418183aec8', '720050b1-b4dd-4ea3-b43e-aa19fad2eae0', 'Feature Request: Advanced Analytics', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 11:27:00', '2025-01-07 12:14:00', 'IN_PROGRESS', 'LOW', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('84b922a5-34aa-49fe-8abb-27b511862bae', '5f58e49b-e592-41d0-aa13-de2f15a3a07c', 'Feature Request: Advanced Analytics', 'Requesting multi-language support for better accessibility.', '2025-01-07 12:28:00', '2025-01-07 12:43:00', 'CANCELLED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('89ff7e64-8b94-47be-8f78-01e3f89c9b4f', 'e7ff7ce7-eb35-4591-9263-7f9cab59f1e2', 'Feature Request: Advanced Analytics', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 17:22:00', '2025-01-07 17:27:00', 'CANCELLED', 'LOW', 'SUPPORT', 'EMAIL', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('8f673627-7d11-4b0d-b115-60b15a45bf5b', '5bbe8369-fce0-42f5-a49d-ad0b19727ec7', 'Bug Report: Mobile App Crash', 'Mobile app crashes on login with certain devices.', '2025-01-07 11:57:00', '2025-01-07 12:20:00', 'IN_PROGRESS', 'LOW', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('94755b91-7bb5-4d5f-8b85-5014e8d0acf1', 'f0ce7a6f-0ee2-49d8-b1df-06c2aa1b1de5', 'Feature Request: Custom Dashboards', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 11:24:00', '2025-01-07 12:07:00', 'ENDED', 'NORMAL', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('962671ce-b488-4c8f-9abe-9b608076a45a', '18eafbd1-c5a1-4bc1-9198-f7ceb41b50c1', 'Feature Request: Multi-Language Support', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 13:25:00', '2025-01-07 14:08:00', 'CANCELLED', 'LOW', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('971f1a80-8540-46bb-9760-5d7bcae2fd81', '32df08b2-2b4f-421a-a280-06416e4458be', 'Feature Request: Multi-Language Support', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 11:59:00', '2025-01-07 12:10:00', 'CANCELLED', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('9c67b0e4-51b2-40ea-92f7-1e8b788d33cd', 'ab34c56d-45ef-4a71-95ea-8f93b42c917f', 'Feature Request: Enhanced Reporting', 'Users are requesting the ability to export reports in multiple formats.', '2025-01-07 11:15:00', '2025-01-07 12:00:00', 'IN_PROGRESS', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are requesting the ability to export reports in multiple formats.'),
('a0856051-e5a5-4f54-8593-d50891a3f367', 'fc6f6655-28be-459b-9984-4e9136f3b8bc', 'Feature Request: Multi-Language Support', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 13:34:00', '2025-01-07 13:44:00', 'IN_PROGRESS', 'LOW', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('a226c348-6299-446d-834a-695006d84a66', '985a995b-ba73-4a94-8bad-6adb80e97d17', 'Feature Request: Dark Mode', 'Mobile app crashes on login with certain devices.', '2025-01-07 09:41:00', '2025-01-07 10:37:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('a35d2c30-4c33-446c-864c-db245fe55856', 'df20ec07-193f-4d9c-a4f1-28dd4b59bd84', 'Feature Request: Multi-Language Support', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 08:41:00', '2025-01-07 09:31:00', 'CANCELLED', 'LOW', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('a3e01194-2b80-4e0b-91e7-d1ac49aa7b1c', 'a1f48a8f-91f2-4579-acb8-4d145fc44ae7', 'Support Request: Login Help', 'Mobile app crashes on login with certain devices.', '2025-01-07 17:10:00', '2025-01-07 17:56:00', 'UNSTARTED', 'NORMAL', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('a3fa57f2-84c4-4242-8271-93a857481823', '8a6cd318-4058-4656-afa2-2781c0983802', 'Bug Report: API Timeout Issues', 'Users are facing login issues after resetting their passwords.', '2025-01-07 15:26:00', '2025-01-07 15:36:00', 'UNSTARTED', 'NORMAL', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('a5126b72-1a7f-4ece-ac2b-38a16af88d81', '1c0d0930-394b-493e-b1c6-0aa01e957408', 'Bug Report: Form Submission Error', 'Users are facing login issues after resetting their passwords.', '2025-01-07 15:40:00', '2025-01-07 15:42:00', 'CANCELLED', 'LOW', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('a67f5006-296f-48db-9c3f-f71464bc60e1', 'b93488c1-bd5a-4132-bf16-0323c857a5bf', 'Feature Request: Multi-Language Support', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 16:09:00', '2025-01-07 16:45:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('a8909ef2-9ac5-4cdb-9209-d84cd166d878', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket fin', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('a9201917-579d-46cd-b6b1-687adf4f6e54', '66a6432c-e0bd-49f9-abc9-5b0b0eb769f0', 'Support Request: Account Recovery', 'Unable to connect to the company network; urgent issue.', '2025-01-07 16:56:00', '2025-01-07 17:45:00', 'IN_PROGRESS', 'NORMAL', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('aca27287-106f-4dcd-ae78-af7af6cbf6c5', '7b742ae0-b1a6-48c1-8907-83f929cd5ccd', 'Feature Request: Advanced Analytics', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 15:34:00', '2025-01-07 16:15:00', 'CANCELLED', 'HIGH', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('b181c77d-68e8-4275-aed8-a69b6fbeab32', 'e874b7ab-41a6-463d-a7c5-418dba641b23', 'Bug Report: Form Submission Error', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 13:11:00', '2025-01-07 13:41:00', 'IN_PROGRESS', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('b3658e5f-078c-4899-916a-94a72b6f686f', '05cbb06e-f42a-4aaa-9c4a-f08e097ca496', 'Feature Request: Dark Mode', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 09:29:00', '2025-01-07 10:08:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('b9c05e65-3a0c-4897-aaa0-09ea5ff99746', '77d8d6bb-dca1-4bb5-98a0-61395dbbb1cf', 'Feature Request: Custom Dashboards', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 08:34:00', '2025-01-07 08:46:00', 'ENDED', 'HIGH', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('bb76ac3b-df7a-4cdc-985a-af6374066918', '4146e2e7-6b56-41f5-b66f-6cada8568b93', 'Bug Report: API Timeout Issues', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 15:29:00', '2025-01-07 16:02:00', 'IN_PROGRESS', 'HIGH', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('bca9e463-9667-47d5-9290-0d999273c7d4', '6bab0ef1-8376-4dd1-9c42-d47508cc3d1e', 'Support: Unable to Connect to Network', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 13:03:00', '2025-01-07 13:44:00', 'CANCELLED', 'NORMAL', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('bf2a7849-7502-4ea3-a490-5e076de4d76c', '88a047a9-05c7-445f-a7d6-37704668af2a', 'Support Request: Login Help', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 10:49:00', '2025-01-07 11:15:00', 'IN_PROGRESS', 'NORMAL', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('bf436eeb-0a74-460d-9d69-e7a73ea84549', '7e83a96a-10a9-46c8-b232-83638bc42937', 'Feature Request: Multi-Language Support', 'Users are facing login issues after resetting their passwords.', '2025-01-07 17:45:00', '2025-01-07 18:45:00', 'IN_PROGRESS', 'LOW', 'BUG_REPORT', 'WEB_FORM', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('c02d4d31-d5cb-4996-b497-6d9e3f25ad2b', 'fa45b9e3-89af-4821-b5b3-7b6e96d31e8c', 'Bug Report: Unexpected Logout', 'Users are logged out unexpectedly after 10 minutes of inactivity.', '2025-01-07 08:50:00', '2025-01-07 09:20:00', 'ENDED', 'LOW', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Users are logged out unexpectedly after 10 minutes of inactivity.'),
('c1a4c962-8d6b-4869-ab56-98a93e237a6d', '5046bf4b-97eb-4d46-ad28-923ca183e1bb', 'Feature Request: Custom Dashboards', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 15:31:00', '2025-01-07 15:48:00', 'ENDED', 'LOW', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('c3918cf8-7ffa-40cd-ae75-79b96dd32518', '380d372d-dce7-4c58-b17d-a3905b438b49', 'Bug Report: Mobile App Crash', 'Mobile app crashes on login with certain devices.', '2025-01-07 08:35:00', '2025-01-07 09:04:00', 'ENDED', 'HIGH', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('c3cdec0d-20a3-4dc9-bdd5-0a1254b201ea', 'f1c121ac-de47-4b89-b99b-24a45059c9b3', 'Bug Report: Mobile App Crash', 'Unable to connect to the company network; urgent issue.', '2025-01-07 14:09:00', '2025-01-07 14:58:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('c5a2494d-d5b1-4119-9c61-641a76f084c4', '11f21f0b-47db-47b0-88bc-44adba9bfcc6', 'Support Request: Account Recovery', 'Assistance required to recover account access.', '2025-01-07 16:18:00', '2025-01-07 16:45:00', 'IN_PROGRESS', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Assistance required to recover account access.'),
('c66e6aa8-e3e2-42d4-ad08-861aa96fd0be', '97dffd71-f4d4-4572-99ce-31cc0781e911', 'Bug Report: Form Submission Error', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 11:13:00', '2025-01-07 12:11:00', 'UNSTARTED', 'NORMAL', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('c7392b64-207e-45df-ac06-9ab84cec4303', 'd0b96c38-3524-41a3-820a-6eda8c91363d', 'Support Request: Login Help', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 09:42:00', '2025-01-07 10:31:00', 'ENDED', 'LOW', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('c9422348-812c-4e60-816b-4dea12a13012', '219eb01f-09e0-4069-a7e8-f55aad2c64eb', 'Bug Report: Mobile App Crash', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 14:43:00', '2025-01-07 15:35:00', 'UNSTARTED', 'HIGH', 'SUPPORT', 'EMAIL', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('ca8c107f-939a-46df-aac8-4625003a3679', '43d7012b-7ae3-46e8-9818-0dea59225155', 'Bug Report: Mobile App Crash', 'Assistance required to recover account access.', '2025-01-07 08:47:00', '2025-01-07 09:34:00', 'IN_PROGRESS', 'LOW', 'BUG_REPORT', 'EMAIL', 'Randomly generated issue: Assistance required to recover account access.'),
('ce1b7600-a2fa-45d0-b4a1-dea3980a8bde', 'a762a089-be9d-4c1f-b5db-41de77625afd', 'Feature Request: Multi-Language Support', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 10:47:00', '2025-01-07 11:47:00', 'UNSTARTED', 'NORMAL', 'SUPPORT', 'PHONE', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('d1063214-5966-46b8-a59a-000111c6027b', 'd15cbab3-5e72-4d0f-9e13-2fe3207cc027', 'Bug Report: Mobile App Crash', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 10:09:00', '2025-01-07 10:39:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('d1f06c24-9bf0-4e02-8e33-09332cdbb127', 'c69b869c-2df8-4a6a-9a62-cfe2bd33a535', 'Support Request: Account Recovery', 'Unable to connect to the company network; urgent issue.', '2025-01-07 17:44:00', '2025-01-07 18:38:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('d4596123-df99-4553-a708-ddea7ad2cacd', 'c712ff51-5b7a-45a6-8ce2-3796d8b6b99c', 'Support Request: Login Help', 'There is an issue with submitting forms, resulting in a 500 error.', '2025-01-07 08:30:00', '2025-01-07 08:41:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: There is an issue with submitting forms, resulting in a 500 error.'),
('d73b9023-9d9f-435d-ab56-e03f5531676a', 'b174ddf3-aed4-496b-bba7-37cba7316a63', 'Bug Report: Form Submission Error', 'Requesting multi-language support for better accessibility.', '2025-01-07 15:40:00', '2025-01-07 16:01:00', 'UNSTARTED', 'HIGH', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('d9b964f9-0ce9-4c2c-a4f7-8ca771841c79', '0a7cdccd-99fd-4094-ab8e-5690e5c98ccb', 'Feature Request: Advanced Analytics', 'Users are facing login issues after resetting their passwords.', '2025-01-07 17:21:00', '2025-01-07 17:32:00', 'IN_PROGRESS', 'LOW', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('dd0414cd-0914-4732-b3b6-c871e7ad03b4', 'b6f82bb4-1839-4cfc-8b5d-2ea2e9297b06', 'Feature Request: Multi-Language Support', 'Unable to connect to the company network; urgent issue.', '2025-01-07 12:10:00', '2025-01-07 13:00:00', 'ENDED', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('e0698d9b-4b3c-47eb-8c73-960d4b4278ec', '3cf5272b-a466-4627-b97b-f10b57e8bdf0', 'Feature Request: Advanced Analytics', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 09:06:00', '2025-01-07 09:24:00', 'CANCELLED', 'NORMAL', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.'),
('e300d718-918b-439e-b019-e1203b48a420', '3d3a3b3c-4b54-433e-9a20-8b6158eda98b', 'Feature Request: Advanced Analytics', 'Unable to connect to the company network; urgent issue.', '2025-01-07 12:17:00', '2025-01-07 12:44:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Unable to connect to the company network; urgent issue.'),
('e329a846-dd50-4e01-b44e-ef0524401057', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket fin', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('e6fb1c86-c467-4354-9f28-d1aea0e82381', '8ea78f3c-b59f-455c-8aef-35056ed24e6a', 'Support: Unable to Connect to Network', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 08:22:00', '2025-01-07 08:47:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('e81bb043-5b6b-4f43-94ea-cca89ae22c32', '0711e59c-a266-457d-bb5b-9552895aa9d0', 'Support: Unable to Connect to Network', 'Assistance required to recover account access.', '2025-01-07 16:31:00', '2025-01-07 16:37:00', 'IN_PROGRESS', 'HIGH', 'SUPPORT', 'PHONE', 'Randomly generated issue: Assistance required to recover account access.'),
('e90b9c7c-4d9a-432c-8668-657f7b8a1e1d', 'bd987f4a-2e65-4b5c-b3c1-9df034c45a6f', 'Feature Request: Role-Based Access Control', 'Request to implement role-based access control for better security.', '2025-01-07 13:40:00', '2025-01-07 14:20:00', 'UNSTARTED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Request to implement role-based access control for better security.'),
('e96cf697-2d92-4343-af1b-bd3fe41345f7', '2ed3ef58-0db5-4bb7-980c-a1b8d96a2471', 'Bug Report: Form Submission Error', 'Advanced analytics for user behavior is in high demand.', '2025-01-07 12:45:00', '2025-01-07 12:56:00', 'ENDED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Advanced analytics for user behavior is in high demand.'),
('e9b27db2-750e-4c45-b915-0f370cb37979', '176e3ff7-7770-4b0d-86df-3401be2e6c28', 'Bug Report: Mobile App Crash', 'Mobile app crashes on login with certain devices.', '2025-01-07 12:40:00', '2025-01-07 13:02:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('ec589d72-ed2e-4bb4-9113-178d1ccd91f4', '28cedfbf-4d15-45e3-acf7-ce5dbc850498', 'Bug Report: Form Submission Error', 'API requests time out after 30 seconds; blocking integrations.', '2025-01-07 15:46:00', '2025-01-07 16:32:00', 'ENDED', 'LOW', 'SUPPORT', 'EMAIL', 'Randomly generated issue: API requests time out after 30 seconds; blocking integrations.'),
('efc21854-ff30-4805-b9f9-e3f2caf70e8f', '8a34c5a1-4d3a-49c6-9235-cf4a312b7f89', 'Support Request: Account Recovery', 'Requesting multi-language support for better accessibility.', '2025-01-07 13:06:00', '2025-01-07 13:13:00', 'UNSTARTED', 'HIGH', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('f389d456-0caa-495d-be71-0fd6886454c3', 'd856132f-b881-48d1-8659-4863fa9b7151', 'Ajout ticket', 'Erreur sur la page de facturation.', '2025-01-07 00:00:00', NULL, 'UNSTARTED', 'NORMAL', 'SUPPORT', 'WEB_FORM', 'À vérifier rapidement.'),
('f3b3ba05-51c6-4a47-b0ba-59338b2bcb92', '34d5b2ef-6462-44bf-9b15-07c932666063', 'Bug Report: Form Submission Error', 'Assistance required to recover account access.', '2025-01-07 12:48:00', '2025-01-07 13:33:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'EMAIL', 'Randomly generated issue: Assistance required to recover account access.'),
('f4682755-cd13-4f5c-9d31-8064c24f7c8d', '5a40bb85-3e13-4a2e-9629-4fdd662826ac', 'Feature Request: Multi-Language Support', 'Requesting multi-language support for better accessibility.', '2025-01-07 09:48:00', '2025-01-07 10:02:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'PHONE', 'Randomly generated issue: Requesting multi-language support for better accessibility.'),
('f6355cba-13c2-406f-9589-0572196c10ca', '5edb7294-4905-46cc-a660-efa4dbd0cce5', 'Support: Unable to Connect to Network', 'Users are asking for a dark mode feature for better UX.', '2025-01-07 10:58:00', '2025-01-07 11:11:00', 'ENDED', 'LOW', 'SUPPORT', 'PHONE', 'Randomly generated issue: Users are asking for a dark mode feature for better UX.'),
('f8c8e8d3-1db6-4f8e-be6c-4c45da12d089', 'c9b8946d-c1e8-4353-a82d-3a8862f3eb6c', 'Support: Unable to Connect to Network', 'Mobile app crashes on login with certain devices.', '2025-01-07 15:36:00', '2025-01-07 15:42:00', 'IN_PROGRESS', 'HIGH', 'BUG_REPORT', 'PHONE', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('f8dd8c45-8bda-4d68-950f-047a4a7ed061', '01a25ed1-3822-4a79-bd4c-9515b26af22a', 'Feature Request: Custom Dashboards', 'Mobile app crashes on login with certain devices.', '2025-01-07 14:51:00', '2025-01-07 15:30:00', 'CANCELLED', 'HIGH', 'SUPPORT', 'WEB_FORM', 'Randomly generated issue: Mobile app crashes on login with certain devices.'),
('fd34526b-fe66-4b59-b37d-2f367d774c83', 'a96f4aac-d543-48bd-832a-7cc3eadb9f12', 'Feature Request: Multi-Language Support', 'Users are facing login issues after resetting their passwords.', '2025-01-07 08:47:00', '2025-01-07 09:36:00', 'ENDED', 'NORMAL', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('fefe791b-4bd7-4196-b592-09c842effa43', 'aadd7977-4727-4ab6-b609-a0c0f034a943', 'Support Request: Account Recovery', 'Users are facing login issues after resetting their passwords.', '2025-01-07 11:17:00', '2025-01-07 11:31:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Users are facing login issues after resetting their passwords.'),
('ffcd21f4-9661-46da-aac1-704fbdaac7a4', 'a02dff4d-dd6e-4b8f-944c-274036d76b9c', 'Feature Request: Advanced Analytics', 'Clients are requesting customizable dashboards for task management.', '2025-01-07 14:21:00', '2025-01-07 15:03:00', 'CANCELLED', 'HIGH', 'FEATURE_REQUEST', 'WEB_FORM', 'Randomly generated issue: Clients are requesting customizable dashboards for task management.');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_actions`
--

CREATE TABLE `ticket_actions` (
  `uuid_action` varchar(255) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `date_action` datetime DEFAULT NULL,
  `action_type` enum('CREATION','UPDATE','DELETION') NOT NULL,
  `description` text DEFAULT NULL,
  `uuid_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_actions`
--

INSERT INTO `ticket_actions` (`uuid_action`, `ticket`, `date_action`, `action_type`, `description`, `uuid_user`) VALUES
('0576394b-b813-4644-982c-0e08e9a3d792', '971f1a80-8540-46bb-9760-5d7bcae2fd81', '2025-01-07 08:57:00', 'CREATION', 'Ticket assigned to another team member.', 'ca46107a-e113-41e2-a523-0dac4a6d8aee'),
('05b550eb-adbb-4df5-9504-3fbd0a8dcf96', 'c3cdec0d-20a3-4dc9-bdd5-0a1254b201ea', '2025-01-06 00:00:00', 'UPDATE', 'Mise à jour de la description de l\'action.', '4f8682d5-f44a-468b-8b83-78b6416c4f2b'),
('08d5f4f8-63ea-4f68-8dbf-df9f769325cd', 'e90b9c7c-4d9a-432c-8668-657f7b8a1e1d', '2025-01-07 12:30:00', 'DELETION', 'Ticket assigned to another team member.', 'f32059ac-5a63-4f17-b83a-059c3c88eff'),
('09f7ffd0-d81e-4632-b31f-8c101892651b', '5d49f3db-f984-48aa-8abf-4808a6e4407c', '2025-01-07 16:43:00', 'UPDATE', 'Deadline adjusted for better alignment with project goals.', '037e545a-273e-4a65-9519-8dac591ca05e'),
('10d715d9-4e1b-43fb-935e-5ae93b43286d', 'd4596123-df99-4553-a708-ddea7ad2cacd', '2025-01-07 17:20:00', 'DELETION', 'Comment added: Client requested faster response time.', '517516e7-4e8a-4765-91d5-ec87012e227d'),
('122e756d-c258-4b9d-b90a-465c0a604e00', '7c124e85-a54b-4935-a0a0-d349a28414be', '2025-01-07 12:23:00', 'CREATION', 'Created feature request for advanced functionality.', '6e18a343-baa2-4400-a48a-bd695105ab7f'),
('13964db5-9f48-457e-9fc4-28fbcc9621d2', '84b922a5-34aa-49fe-8abb-27b511862bae', '2025-01-07 14:37:00', 'CREATION', 'Status updated from IN_PROGRESS to COMPLETED.', '8fae166d-33b9-4bf8-97e8-0eb6ddb0955b'),
('178a5a22-f24e-41e7-a7e4-ae71cd469577', '43f70428-9130-4585-b9c9-f99c017559a5', '2025-01-07 08:28:00', 'UPDATE', 'Comment added: Client requested faster response time.', '78f125b1-29c9-453c-98e3-ec2ead9bd314'),
('18fccc37-642e-4702-bb29-460983cf3023', 'b3658e5f-078c-4899-916a-94a72b6f686f', '2025-01-07 11:01:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', '61c24e4a-4486-4e7c-bae4-9ceae7aa668a'),
('1b50493a-83d8-40c0-aad3-31a6162ee18f', '80b2c781-5b34-4eef-825b-a7418183aec8', '2025-01-07 09:53:00', 'UPDATE', 'Deadline adjusted for better alignment with project goals.', '87ebdf12-5e8d-4172-aba4-ee88c2251060'),
('1d6d6775-6183-4e86-9620-e09d4365777d', 'e96cf697-2d92-4343-af1b-bd3fe41345f7', '2025-01-07 12:29:00', 'DELETION', 'Created feature request for advanced functionality.', '875886d5-d4eb-4362-96fb-206beec6ddad'),
('1eca7f42-fa16-4405-af88-80ac958ec561', 'c7392b64-207e-45df-ac06-9ab84cec4303', '2025-01-07 16:32:00', 'UPDATE', 'Created feature request for advanced functionality.', 'bc68f758-fc66-4b01-85b5-9da9e8953e44'),
('2058c9f6-32f9-4ac5-bba1-82e8dd797539', '25b44fbd-89dd-4607-9cba-5f0996b01ef1', '2025-01-07 11:50:00', 'DELETION', 'Priority changed to HIGH due to client escalation.', '14c160c9-6cb4-4d85-8a25-b0d92469e550'),
('236db0e1-62be-4410-9888-37a372e060b0', 'e9b27db2-750e-4c45-b915-0f370cb37979', '2025-01-07 11:34:00', 'UPDATE', 'Issue resolved and ticket closed.', '9c548d22-7a2d-4c9c-b25a-aa9f6c77d549'),
('275642f1-c033-4fc9-a947-0b8da08b1398', 'c5a2494d-d5b1-4119-9c61-641a76f084c4', '2025-01-07 11:22:00', 'UPDATE', 'Created feature request for advanced functionality.', '75a204b0-f9cd-4e3d-a11c-072f5ef5abe5'),
('27e8f34c-d66d-4e3f-8c2f-8824bb3f2af5', '9c67b0e4-51b2-40ea-92f7-1e8b788d33cd', '2025-01-07 14:45:00', 'CREATION', 'Created feature request for advanced functionality.', '69ac4bce-b419-4c87-bcfa-5c3c8562bf5f'),
('2b095ad3-2799-43a4-833c-de9ee92a59f6', '2867dcf6-fbc2-4893-b2b3-783c1f887d52', '2025-01-07 11:46:00', 'CREATION', 'Status updated from IN_PROGRESS to COMPLETED.', 'e8735c6d-19ba-4f3b-850b-cdab28e58c58'),
('334caebe-8081-43f3-8136-81979bda6411', '971f1a80-8540-46bb-9760-5d7bcae2fd81', '2025-01-06 00:00:00', 'UPDATE', 'Ticket assigned to another team member.', 'ca46107a-e113-41e2-a523-0dac4a6d8aee'),
('35e71e10-37bf-4f8c-8179-1a3946a31082', '89ff7e64-8b94-47be-8f78-01e3f89c9b4f', '2025-01-07 11:24:00', 'UPDATE', 'Created feature request for advanced functionality.', 'ce216c39-0275-4d0c-9203-d3a09e7ade51'),
('39657b31-8ade-4326-9227-fdc4fb88325d', 'f4682755-cd13-4f5c-9d31-8064c24f7c8d', '2025-01-07 12:10:00', 'CREATION', 'Priority changed to HIGH due to client escalation.', 'aa637022-f2a0-48fe-8b8a-e73c36200391'),
('3a3b045f-6cc7-470d-b2d0-499180b376f6', '0937ce1e-a435-4f6a-bad9-cb9cf70367ce', '2025-01-07 09:30:00', 'DELETION', 'Created feature request for advanced functionality.', '7d3ccf83-edc1-4d77-870a-20d15b553e60'),
('3de41343-9f66-4cb9-9726-8754d3e5c7e7', '411f757c-5f75-44e0-93f2-003cd5be55b2', '2025-01-07 08:06:00', 'DELETION', 'Ticket deleted due to duplicate entry.', 'c3633edb-9ddc-417c-aebc-11096fb6a5a6'),
('3eda4d98-917d-4c60-835b-e16c796ccbeb', '310efa17-a148-42a4-b621-cc325b9157b1', '2025-01-07 16:40:00', 'DELETION', 'Ticket assigned to another team member.', '1f152489-da9b-4832-80b2-7c6329be6303'),
('472dc7ca-9197-48a2-acf5-4da9797bd928', '672a11d1-24dc-4072-972e-e508abe3a048', '2025-01-07 12:48:00', 'UPDATE', 'Description corrected for clarity.', '887ffa4f-63a2-41f1-b0e8-45857bf366ed'),
('493410dc-28f0-48a6-915d-e888234e3b4b', 'ce1b7600-a2fa-45d0-b4a1-dea3980a8bde', '2025-01-07 10:02:00', 'UPDATE', 'Deadline adjusted for better alignment with project goals.', '526f6e2d-8d05-4f66-b149-17f109660cb6'),
('4d1f3b24-657c-4049-8cc3-b6e0d8d0f90a', '60fbd9de-f64a-4520-9f9a-78edc4c841cd', '2025-01-07 09:50:00', 'DELETION', 'Comment added: Client requested faster response time.', '2fd1986f-f32a-4b1a-a095-9afc523d19a0'),
('4f8619bd-2e33-406c-8b62-3cfb774505e5', '490ff633-9249-401e-adb5-e9a73108358b', '2025-01-07 11:38:00', 'UPDATE', 'Comment added: Client requested faster response time.', '52f2a2d1-4d12-4f10-95c1-abda7d5200c6'),
('526f996a-7756-4998-8fc1-a01962e75d1e', 'b181c77d-68e8-4275-aed8-a69b6fbeab32', '2025-01-07 17:05:00', 'DELETION', 'Issue resolved and ticket closed.', '1fc55114-62f0-4b1d-8531-abab2ab1759f'),
('5af69bef-6e56-4d6a-a83f-f12f4f956fff', '971f1a80-8540-46bb-9760-5d7bcae2fd81', '2025-01-06 00:00:00', 'UPDATE', 'Ticket assigned to another team member.', 'ca46107a-e113-41e2-a523-0dac4a6d8aee'),
('5bd885cb-3a9a-464e-ab25-ca67e2ef602d', 'fefe791b-4bd7-4196-b592-09c842effa43', '2025-01-07 12:47:00', 'DELETION', 'Issue resolved and ticket closed.', 'b0da8980-cf8b-4a55-a692-4f4ae45e6e92'),
('5c398b2b-471c-481d-b30c-4cf69cb859a6', 'd9b964f9-0ce9-4c2c-a4f7-8ca771841c79', '2025-01-07 10:56:00', 'UPDATE', 'Issue resolved and ticket closed.', 'ac5ccd32-a1da-4960-b2db-4996bf8d71b9'),
('5caddc4e-3535-4766-98c9-8cd7c020d5b3', 'a226c348-6299-446d-834a-695006d84a66', '2025-01-07 08:23:00', 'DELETION', 'Created feature request for advanced functionality.', 'aa0aceaa-57c5-4496-9c38-d404b13a40b1'),
('60ff2f91-9dcc-4f6b-8fdd-5e62b8df80d5', 'f8c8e8d3-1db6-4f8e-be6c-4c45da12d089', '2025-01-07 16:39:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', '36dfc032-f5e8-4ed4-a0e4-802f20a15cf9'),
('6519b1bf-3ca0-473e-96a3-a9ad6edb2448', 'bb76ac3b-df7a-4cdc-985a-af6374066918', '2025-01-07 09:34:00', 'DELETION', 'Created feature request for advanced functionality.', '87694617-325d-4620-b40e-dc5581c399c5'),
('66da7ef2-e1ab-47a4-95a8-13dd6805081b', 'f8dd8c45-8bda-4d68-950f-047a4a7ed061', '2025-01-07 17:54:00', 'DELETION', 'Description corrected for clarity.', '9fd3b785-4d45-4e2e-ac46-956c83f3be0e'),
('69f6703e-dee3-440f-8ded-64da98935dc8', 'ca8c107f-939a-46df-aac8-4625003a3679', '2025-01-07 11:20:00', 'CREATION', 'Description corrected for clarity.', '2b224bde-1d85-4f2b-9aea-6092ba676f77'),
('6f38e295-b88e-4d22-a50f-7fa83ea9d215', 'efc21854-ff30-4805-b9f9-e3f2caf70e8f', '2025-01-07 17:30:00', 'DELETION', 'Deadline adjusted for better alignment with project goals.', 'f06c7141-c628-406a-b9f2-ff022831e2a6'),
('71fb8dec-5ce4-4698-a931-7ed3ea45cd6f', 'd1063214-5966-46b8-a59a-000111c6027b', '2025-01-07 14:55:00', 'CREATION', 'Created feature request for advanced functionality.', '9f0c6aa9-5632-49a2-8c6d-bfe94f04224e'),
('740a0a92-d8c5-4380-9fe2-51998f317980', 'a3e01194-2b80-4e0b-91e7-d1ac49aa7b1c', '2025-01-07 11:15:00', 'CREATION', 'Issue resolved and ticket closed.', 'ac715e9b-07df-45d4-9a78-e544348a6341'),
('7818746e-34d8-4058-b599-e47b45d72358', 'c9422348-812c-4e60-816b-4dea12a13012', '2025-01-07 14:54:00', 'DELETION', 'Ticket assigned to another team member.', 'fd8c1b82-9fd1-47fb-ae98-f3f0e8762a27'),
('7a70e716-db90-40e5-9bc4-f4d5e134d924', '8f673627-7d11-4b0d-b115-60b15a45bf5b', '2025-01-07 11:07:00', 'CREATION', 'Description corrected for clarity.', '2e93b113-45b7-48e9-b565-1609aa963305'),
('7b37b7ae-a3b9-4646-b82d-b6a6b459e973', '94755b91-7bb5-4d5f-8b85-5014e8d0acf1', '2025-01-07 12:15:00', 'UPDATE', 'Deadline adjusted for better alignment with project goals.', 'f70427c8-feef-4bf7-96bc-02c2aa56f127'),
('7f5b383d-b751-458b-8515-b0d9f60f1371', 'd73b9023-9d9f-435d-ab56-e03f5531676a', '2025-01-07 09:45:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', 'f125a170-b480-415d-9c32-e9ffaa3cf043'),
('866971c8-921b-40c8-bf69-6d20694c6df3', '67428791-e9d9-4936-9001-224ebaaf8a64', '2025-01-07 08:12:00', 'CREATION', 'Ticket assigned to another team member.', 'd78fbf55-a771-4e8d-b8f9-7eb1af8d1c80'),
('8a41a1fc-48ee-4fce-886a-2d49d9c155eb', '57277e5f-8d86-4df3-b183-c1edafc9b756', '2025-01-07 17:35:00', 'DELETION', 'Created feature request for advanced functionality.', '90ec858e-9537-484a-8bac-9f6b261964b6'),
('8c283642-a76b-4a58-a872-920f3783c53a', 'dd0414cd-0914-4732-b3b6-c871e7ad03b4', '2025-01-07 17:48:00', 'CREATION', 'Status updated from IN_PROGRESS to COMPLETED.', '53e981f0-9e4d-44d9-837b-77ae0b091faa'),
('8dafb033-456a-4e4c-9c28-83c777d28029', '236d279e-7ce7-4bd8-a0c9-c25f657d1d75', '2025-01-07 13:03:00', 'UPDATE', 'Created feature request for advanced functionality.', '4f2d485c-bfeb-4d8f-adc1-c2ea2890b246'),
('8f1c21fe-1ac8-4d3b-a435-5880cc847fc6', '724481c5-9ea6-4bd2-b2c1-ed9d81fcd263', '2025-01-07 16:43:00', 'DELETION', 'New comment added regarding customer feedback.', 'adf11883-da54-4ddf-a548-4ba12604033b'),
('92302353-6299-4369-aa8f-2236620b520a', 'bf2a7849-7502-4ea3-a490-5e076de4d76c', '2025-01-07 11:06:00', 'CREATION', 'Description corrected for clarity.', 'a2ae6969-8dba-464a-aff0-d1d037374c0f'),
('92be7045-2ba6-49ad-8ea5-89de3057e7f5', '0d7f8498-2d2a-49a3-b05a-486c473decb4', '2025-01-07 11:22:00', 'CREATION', 'Description corrected for clarity.', '5f86ea7c-1e22-451b-ac36-4d671edda0c2'),
('962d89a9-988c-4dec-a912-617712721c4a', 'a9201917-579d-46cd-b6b1-687adf4f6e54', '2025-01-07 09:32:00', 'UPDATE', 'Issue resolved and ticket closed.', '7fa9b68b-80ce-4f5e-8a90-d4e4db57cbb8'),
('977a3847-2f6f-4a3e-8e7e-bfe32a0e5339', '6f5fb848-153e-4eb8-9020-bb1766d0f609', '2025-01-07 10:19:00', 'DELETION', 'Ticket assigned to another team member.', 'b4c6d13a-0a40-421b-8a36-964b78bc9d0f'),
('97815a92-4335-4143-a98f-b16dbaa6f81a', '298f09a4-3903-4af7-8d39-bb52826557fe', '2025-01-07 17:02:00', 'DELETION', 'Comment added: Client requested faster response time.', '8c6a14b3-5b79-4287-ab85-98ca85876556'),
('97d0a5ac-eaa2-435d-9db8-dd367a2e0a03', '6fa1b4ed-a3e0-425b-95bc-347efc54d48c', '2025-01-07 14:18:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', 'c8185919-219a-48ea-854e-8db9d4e92a88'),
('98811151-0ab4-4f24-b7af-34daa815bba1', '7bcc3451-7edc-4944-a322-733ffc0fce1d', '2025-01-07 16:23:00', 'CREATION', 'Issue resolved and ticket closed.', '4f468dba-2506-44f7-a27a-4d825349d738'),
('a01cb22f-133d-4012-983a-5f1576f82cb8', 'bca9e463-9667-47d5-9290-0d999273c7d4', '2025-01-07 08:09:00', 'CREATION', 'Deadline adjusted for better alignment with project goals.', '14e2d59e-32d6-40a8-b1f1-bfbd93931020'),
('a8fbe856-ee99-4634-a244-fd71905fefa8', 'a35d2c30-4c33-446c-864c-db245fe55856', '2025-01-07 11:58:00', 'CREATION', 'Description corrected for clarity.', '6f53dac5-e547-48d4-932c-2efb9770746e'),
('aa070771-bea2-480e-ab5e-5e2253047d20', 'e0698d9b-4b3c-47eb-8c73-960d4b4278ec', '2025-01-07 09:56:00', 'CREATION', 'Priority changed to HIGH due to client escalation.', 'e4b4c683-c067-4fa7-82f1-60e448d59afe'),
('aa305328-8f2c-4932-a3af-51b59558048f', '2a88f324-b9df-4778-82b5-2e352c97f330', '2025-01-07 11:23:00', 'DELETION', 'Comment added: Client requested faster response time.', '55668095-f677-4e21-83b7-ce8784946247'),
('ab949ca8-7f0f-4683-9413-949d845338ce', '167316d6-4ae6-476f-8f50-4a70b6487947', '2025-01-07 08:55:00', 'DELETION', 'Ticket deleted due to duplicate entry.', 'd1b5007c-a1bf-4afa-a46d-5d5fdb7c79cd'),
('ad494c14-eba8-424c-a1ea-773c3213d7a4', '73ad3b56-5b07-4943-ae8a-066df10fb821', '2025-01-07 09:01:00', 'UPDATE', 'Issue resolved and ticket closed.', 'c2c5f835-bede-4de2-a5ae-94f0ee6c3407'),
('b10e2f92-e21d-41d4-8357-db5365f1577c', 'f3b3ba05-51c6-4a47-b0ba-59338b2bcb92', '2025-01-07 13:30:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', '979535d3-7cac-4827-891d-3357bf3aa6c7'),
('b1a7dce6-65fa-4dab-aee3-39148a35f742', '962671ce-b488-4c8f-9abe-9b608076a45a', '2025-01-07 09:07:00', 'CREATION', 'Created feature request for advanced functionality.', '13836555-4836-4604-a2f6-35ed29a9ac09'),
('b2ca69a8-aa0d-47a1-b3ee-fee855df8512', 'fd34526b-fe66-4b59-b37d-2f367d774c83', '2025-01-07 17:51:00', 'CREATION', 'Deadline adjusted for better alignment with project goals.', 'cd753433-a574-41bd-a0f1-c8c192f5f300'),
('b4fd7f12-73ce-45cd-a952-345c4166bcf4', '4737fb53-c5a3-464c-a9c9-8d236a628d23', '2025-01-07 17:40:00', 'CREATION', 'Issue resolved and ticket closed.', 'ce589280-f0da-4515-8578-2a945da0a1be'),
('b56b0ece-2f4b-4cb2-b48c-b93ffe2b0ca5', '1bbd47c9-1094-4560-8b27-eb83e5d11bf3', '2025-01-07 11:57:00', 'CREATION', 'Ticket deleted due to duplicate entry.', 'f7b26b88-9bae-4a6f-8021-64efb6d1d45b'),
('b5e52a68-87aa-4450-82b4-8ee115c2b3cc', '16e3f600-5cea-4861-8d58-3efb16ae6290', '2025-01-07 16:43:00', 'UPDATE', 'Ticket deleted due to duplicate entry.', '1af2e795-006f-4065-a185-5aa3ab95e975'),
('b67d1ee4-f161-44a5-aeb3-43a287755799', 'b9c05e65-3a0c-4897-aaa0-09ea5ff99746', '2025-01-07 16:37:00', 'DELETION', 'Description corrected for clarity.', '635626c0-2c94-4abf-b6fa-19fe7acf6a42'),
('b7dc9c28-23f4-4222-8a89-d95d2173c9f4', 'c02d4d31-d5cb-4996-b497-6d9e3f25ad2b', '2025-01-07 17:15:00', 'UPDATE', 'Status updated from IN_PROGRESS to COMPLETED.', '91efddd0-4131-485a-ac14-a113aca48233'),
('ba7a87f0-ad3d-41a8-88af-1548b91aad96', '17df6493-e15c-419b-8ecc-c2331838b3ba', '2025-01-07 09:22:00', 'CREATION', 'Created feature request for advanced functionality.', '827c700d-1bee-4c78-9672-f5955c71176c'),
('bc7cf51b-1bf0-4156-84d2-0de4a6d182e3', 'ec589d72-ed2e-4bb4-9113-178d1ccd91f4', '2025-01-07 09:00:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', 'ae512b71-e1a3-4b40-bf92-917801b3e902'),
('bdd07cd1-7868-42d2-97c4-2c064005ca4f', 'a3fa57f2-84c4-4242-8271-93a857481823', '2025-01-07 08:13:00', 'CREATION', 'Status updated from IN_PROGRESS to COMPLETED.', 'a6315ff5-53a1-4118-b5f6-2d605e3624ae'),
('bde296f4-8726-4aea-96b2-e0d74adbcb39', 'c66e6aa8-e3e2-42d4-ad08-861aa96fd0be', '2025-01-07 10:31:00', 'CREATION', 'Comment added: Client requested faster response time.', '2e7311b6-7d07-4073-bde0-9c40f0fe8557'),
('bf2e192e-f877-4999-8746-94237d827d5f', '44b5a41f-c52f-4d4a-9a8e-09ae853ef8f1', '2025-01-07 17:21:00', 'UPDATE', 'Status updated from IN_PROGRESS to COMPLETED.', 'cff54bd7-e83b-490e-aba8-7d6330c137b7'),
('c0b12ac3-9463-4327-9329-b2f2c799e2e8', '5280a377-46dc-40bc-a487-479aa2e59b37', '2025-01-07 13:11:00', 'DELETION', 'Description corrected for clarity.', '4407f89a-753c-4238-ac4b-f94a3bbc9b1c'),
('c5753155-8701-4ab9-8f85-efafa0936c03', '7db4474c-63e3-416b-ad34-4365d0f537df', '2025-01-07 09:22:00', 'UPDATE', 'Issue resolved and ticket closed.', 'da0f9809-71cf-4913-bce9-6d7f5b2d6d44'),
('c7a6166e-0fb3-40d8-aacb-ec9e84856b2b', 'aca27287-106f-4dcd-ae78-af7af6cbf6c5', '2025-01-07 10:17:00', 'UPDATE', 'Priority changed to HIGH due to client escalation.', '9866c4a1-64e1-45f8-869e-db3e1bee55de'),
('c84a7c63-5c5a-4b59-8e78-194c4573d388', 'f6355cba-13c2-406f-9589-0572196c10ca', '2025-01-07 13:53:00', 'CREATION', 'Deadline adjusted for better alignment with project goals.', '8382ffbd-4e4e-4ad4-b013-7839df25e5c5'),
('cae80480-e7dc-408a-a292-3a00b0f853ec', 'ffcd21f4-9661-46da-aac1-704fbdaac7a4', '2025-01-07 09:30:00', 'CREATION', 'Ticket assigned to another team member.', '9e27ba0d-6006-4489-b40a-16fb8ac36ae6'),
('caf853ee-a9b0-453d-ab30-f285c300f563', 'e300d718-918b-439e-b019-e1203b48a420', '2025-01-07 15:54:00', 'DELETION', 'New comment added regarding customer feedback.', 'b88964fc-887a-45e8-88cc-86a2e4b7f3b8'),
('cbbd31a9-4636-4de8-9528-5a4032d58981', '328f4077-fba7-4741-954b-1087e8b4f65d', '2025-01-07 11:21:00', 'CREATION', 'Ticket deleted due to duplicate entry.', '65b48d47-c060-4023-882f-89074e921ee6'),
('cbc5d149-30e9-43a3-8488-baa24df9e1be', '762f4f19-6ded-44cb-9f97-9ef741df6d9b', '2025-01-07 08:02:00', 'DELETION', 'Ticket deleted due to duplicate entry.', '3e75fda5-df43-4d84-93f5-d590cd9830a0'),
('ce4d11aa-a5c2-4cfd-a9f1-3322b2ebaee1', '6559a75d-6f12-4b64-95da-0d10ff626d2f', '2025-01-07 14:01:00', 'DELETION', 'Ticket assigned to another team member.', '81e426fe-aca1-4941-9936-e3a31ec567f8'),
('ced9bbfc-8f64-4100-b083-e5dbd2fe2f80', 'e81bb043-5b6b-4f43-94ea-cca89ae22c32', '2025-01-07 15:26:00', 'CREATION', 'Description corrected for clarity.', 'f972326e-401c-44ce-bf20-346fbd96222f'),
('d13947fe-d662-494d-9b43-e28df225bc36', '971f1a80-8540-46bb-9760-5d7bcae2fd81', '2025-01-06 00:00:00', 'UPDATE', 'Ticket assigned to another team member.', 'ca46107a-e113-41e2-a523-0dac4a6d8aee'),
('d30aa310-eef0-4aca-94c9-149b479cd67c', '3882fe30-3907-4f7b-884e-67f4f7cfa30d', '2025-01-07 13:15:00', 'CREATION', 'New comment added regarding customer feedback.', '806bf56d-10f5-40ce-839c-1da507089623'),
('d99a11d0-dba3-4456-ab33-1f3a844ae35f', '4f2ab895-4562-43f9-9cbd-cb79e749488b', '2025-01-07 17:32:00', 'UPDATE', 'New comment added regarding customer feedback.', '594a8d3f-53a4-4c1f-a514-71422b837b5b'),
('d9dbc7a3-2110-4b5d-8e35-cae2c58109b5', '0bd2f8d2-3a94-4fd1-9825-84a597ae8a36', '2025-01-07 08:50:00', 'DELETION', 'Ticket assigned to another team member.', 'afa77a96-2166-4db4-b327-3fe9f9cf5d7c'),
('db567bba-c160-4591-9db6-0d7bc70f7e05', '29e4b6f4-f1c1-4d8b-997c-1a5c71dacf9a', '2025-01-07 14:09:00', 'UPDATE', 'Priority changed to HIGH due to client escalation.', 'a33ab7e9-961a-46c2-b832-26225c393335'),
('dc7aa5be-130b-4585-950a-5aa9d2a50f98', '2560e450-6513-4c36-b3bd-f99b2278fb62', '2025-01-07 14:24:00', 'DELETION', 'Priority changed to HIGH due to client escalation.', '85efc017-adf3-44c8-b4fb-6a5a8e0e72ee'),
('dcd26f27-38fe-46aa-8051-0f3661da2262', '61b924f9-7c18-4a02-b6a9-1ce74df13455', '2025-01-07 12:56:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', 'f619e28f-a0ed-4849-b389-6ded157ad901'),
('dd58494d-64a4-42da-b63b-08de3ec95a8f', '4385ff81-4719-488c-a8cd-6b9f07bfa4d2', '2025-01-07 08:29:00', 'DELETION', 'Priority changed to HIGH due to client escalation.', '27d4dce5-42db-4405-8025-5c23b9a67a2d'),
('df0b3735-6db3-4973-a1eb-8e7339a165a5', 'a5126b72-1a7f-4ece-ac2b-38a16af88d81', '2025-01-07 17:30:00', 'DELETION', 'Issue resolved and ticket closed.', '5678832b-d534-4e1b-8370-a20516a5db08'),
('df94554a-9d29-4c8b-a6b2-0c8696845c24', 'a0856051-e5a5-4f54-8593-d50891a3f367', '2025-01-07 13:39:00', 'DELETION', 'Issue resolved and ticket closed.', '88a90300-a0e6-41b9-be12-1ba08b1580ba'),
('dfe209bb-31ec-4cc2-9e86-17d465047a76', '77137be5-26e1-4b0d-9b6f-ff30a0faafac', '2025-01-07 15:34:00', 'UPDATE', 'Created feature request for advanced functionality.', '984edd9b-094d-4b3a-a6cd-56a1fe77617b'),
('e31fba2e-dcc6-4586-9163-dda9ca41aa3f', '6da425ff-d338-426e-a445-5ec319c236c4', '2025-01-07 12:49:00', 'DELETION', 'Deadline adjusted for better alignment with project goals.', 'f3a75103-ebff-4866-8361-eaf19a0f5b95'),
('e6a9ce4f-06fa-4979-afaa-7aab93c66057', '54a871b3-1748-4022-9841-ec6e2ea5a364', '2025-01-07 11:10:00', 'CREATION', 'Comment added: Client requested faster response time.', 'd41b60e4-2bc0-4eeb-b132-3f958a9c2330'),
('e74483f1-ea7f-4fbf-b765-b9a9ec2e72f3', 'bf436eeb-0a74-460d-9d69-e7a73ea84549', '2025-01-07 17:54:00', 'DELETION', 'New comment added regarding customer feedback.', 'cd74daea-7c0e-4e41-bb8f-b49ade29bec3'),
('ef9067b2-56f1-4558-aff0-89749c2a41cb', '1c1f7de7-361c-4ecd-bc20-d811ac67b305', '2025-01-07 10:37:00', 'DELETION', 'Comment added: Client requested faster response time.', '88a4e4f3-1622-4dda-a8c0-efc421ae9dfa'),
('f15c11f4-7b13-482e-8fd5-8456dd8a426b', 'd1f06c24-9bf0-4e02-8e33-09332cdbb127', '2025-01-07 13:59:00', 'CREATION', 'Created feature request for advanced functionality.', '66ed8a89-c823-4821-9589-859c7ebe8ad2'),
('f7465898-2da2-4185-b000-e8c54f73b4fe', 'c3918cf8-7ffa-40cd-ae75-79b96dd32518', '2025-01-07 10:36:00', 'UPDATE', 'Status updated from IN_PROGRESS to COMPLETED.', '4ce9f3a9-6f22-48e2-8faa-2e88f17e9781'),
('f7b0e3fa-d21a-405f-b1e1-2c32348aa0cb', 'e6fb1c86-c467-4354-9f28-d1aea0e82381', '2025-01-07 14:23:00', 'DELETION', 'Status updated from IN_PROGRESS to COMPLETED.', 'e1edf453-3921-43c3-bccc-ded818a79fdc'),
('fa14534b-283e-4ed8-8dcd-e58f00481ee4', '17e71b16-bd35-4e1c-9c48-ed8d79e7f869', '2025-01-07 09:43:00', 'UPDATE', 'Comment added: Client requested faster response time.', 'b89df274-0451-4638-be76-cfd65a0a021e'),
('fd684fba-d4d2-421c-9917-c0282dedebe1', '5f76c225-d1f0-444d-a01a-d8acc80ed1a3', '2025-01-07 12:03:00', 'UPDATE', 'Status updated from IN_PROGRESS to COMPLETED.', '2d0bd405-bc58-4e07-a00e-2d15b8920ed6'),
('fdb762ee-4864-44b3-8815-b65850025ccf', '19bc1d97-b1ae-43cb-94bf-7fbd59c10cd2', '2025-01-07 13:20:00', 'CREATION', 'Ticket deleted due to duplicate entry.', '4fb60321-b245-4199-a273-d864ed4e8780'),
('fddea5a7-eec3-4f51-aab8-bb23f81077ef', 'a67f5006-296f-48db-9c3f-f71464bc60e1', '2025-01-07 15:39:00', 'DELETION', 'New comment added regarding customer feedback.', '446de252-5d4a-407e-8bb7-481a26c11e21');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_tasks`
--

CREATE TABLE `ticket_tasks` (
  `uuid_task` varchar(255) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `date_reminder` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `uuid_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_tasks`
--

INSERT INTO `ticket_tasks` (`uuid_task`, `ticket`, `date_reminder`, `description`, `uuid_user`) VALUES
('823fa032-e4d1-44a0-a1dc-3245b6fb2479', 'd4596123-df99-4553-a708-ddea7ad2cacd', '2025-01-07 00:00:00', 'Prepare a root cause analysis report for the incident.', '517516e7-4e8a-4765-91d5-ec87012e227d'),
('82a3aed6-44d9-4255-a527-adbf5d24fce7', 'd4596123-df99-4553-a708-ddea7ad2cacd', '2025-01-06 00:00:00', 'Prepare a root cause analysis report for the incident.', '517516e7-4e8a-4765-91d5-ec87012e227d'),
('c4fc581f-cc7a-41dd-b633-8fb91c9c73bd', 'd4596123-df99-4553-a708-ddea7ad2cacd', '2025-01-09 00:00:00', 'modify task test', '517516e7-4e8a-4765-91d5-ec87012e227d'),
('fcf606cb-5928-49d7-94a9-7b29f1a07b96', 'd4596123-df99-4553-a708-ddea7ad2cacd', '2025-01-06 00:00:00', 'Prepare a root cause analysis report for the incident.', '517516e7-4e8a-4765-91d5-ec87012e227d'),
('task-012', '57277e5f-8d86-4df3-b183-c1edafc9b756', '2025-01-08 08:28:00', 'Document the resolution steps taken for future reference.', '90ec858e-9537-484a-8bac-9f6b261964b6'),
('task-013', 'e6fb1c86-c467-4354-9f28-d1aea0e82381', '2025-01-09 14:22:00', 'Check the status of the ticket and update the client.', 'e1edf453-3921-43c3-bccc-ded818a79fdc'),
('task-014', 'a3e01194-2b80-4e0b-91e7-d1ac49aa7b1c', '2025-01-09 02:42:00', 'Document the resolution steps taken for future reference.', 'ac715e9b-07df-45d4-9a78-e544348a6341'),
('task-015', 'a0856051-e5a5-4f54-8593-d50891a3f367', '2025-01-09 07:32:00', 'Test the fix applied to the reported bug.', '88a90300-a0e6-41b9-be12-1ba08b1580ba'),
('task-016', 'f6355cba-13c2-406f-9589-0572196c10ca', '2025-01-07 13:53:00', 'Deadline adjusted for better alignment with project goals.', '8382ffbd-4e4e-4ad4-b013-7839df25e5c5'),
('task-017', '5280a377-46dc-40bc-a487-479aa2e59b37', '2025-01-09 06:23:00', 'Schedule a team meeting to discuss the feature request.', '4407f89a-753c-4238-ac4b-f94a3bbc9b1c'),
('task-018', '328f4077-fba7-4741-954b-1087e8b4f65d', '2025-01-09 02:19:00', 'Check the status of the ticket and update the client.', '65b48d47-c060-4023-882f-89074e921ee6'),
('task-019', '971f1a80-8540-46bb-9760-5d7bcae2fd81', '2025-01-09 16:24:00', 'Call the client to gather additional information on the issue.', 'ca46107a-e113-41e2-a523-0dac4a6d8aee'),
('task-020', '762f4f19-6ded-44cb-9f97-9ef741df6d9b', '2025-01-08 15:59:00', 'Schedule a team meeting to discuss the feature request.', '3e75fda5-df43-4d84-93f5-d590cd9830a0'),
('task-021', '43f70428-9130-4585-b9c9-f99c017559a5', '2025-01-08 15:09:00', 'Test the fix applied to the reported bug.', '78f125b1-29c9-453c-98e3-ec2ead9bd314'),
('task-022', '167316d6-4ae6-476f-8f50-4a70b6487947', '2025-01-08 18:31:00', 'Reassign the ticket to a more experienced support agent.', 'd1b5007c-a1bf-4afa-a46d-5d5fdb7c79cd'),
('task-023', '672a11d1-24dc-4072-972e-e508abe3a048', '2025-01-08 20:07:00', 'Check the server logs for additional details related to the reported issue.', '887ffa4f-63a2-41f1-b0e8-45857bf366ed'),
('task-024', '84b922a5-34aa-49fe-8abb-27b511862bae', '2025-01-09 04:54:00', 'Call the client to gather additional information on the issue.', '8fae166d-33b9-4bf8-97e8-0eb6ddb0955b'),
('task-025', 'bca9e463-9667-47d5-9290-0d999273c7d4', '2025-01-08 13:00:00', 'Test the fix applied to the reported bug.', '14e2d59e-32d6-40a8-b1f1-bfbd93931020'),
('task-026', 'd9b964f9-0ce9-4c2c-a4f7-8ca771841c79', '2025-01-08 09:30:00', 'Call the client to gather additional information on the issue.', 'ac5ccd32-a1da-4960-b2db-4996bf8d71b9'),
('task-027', '2867dcf6-fbc2-4893-b2b3-783c1f887d52', '2025-01-09 13:57:00', 'Document the resolution steps taken for future reference.', 'e8735c6d-19ba-4f3b-850b-cdab28e58c58'),
('task-028', '19bc1d97-b1ae-43cb-94bf-7fbd59c10cd2', '2025-01-09 10:41:00', 'Call the client to gather additional information on the issue.', '4fb60321-b245-4199-a273-d864ed4e8780'),
('task-029', '0937ce1e-a435-4f6a-bad9-cb9cf70367ce', '2025-01-09 08:28:00', 'Prepare a root cause analysis report for the incident.', '7d3ccf83-edc1-4d77-870a-20d15b553e60'),
('task-030', 'd73b9023-9d9f-435d-ab56-e03f5531676a', '2025-01-08 16:44:00', 'Reassign the ticket to a more experienced support agent.', 'f125a170-b480-415d-9c32-e9ffaa3cf043'),
('task-031', '3882fe30-3907-4f7b-884e-67f4f7cfa30d', '2025-01-09 08:17:00', 'Call the client to gather additional information on the issue.', '806bf56d-10f5-40ce-839c-1da507089623'),
('task-032', 'bf2a7849-7502-4ea3-a490-5e076de4d76c', '2025-01-08 11:01:00', 'Call the client to gather additional information on the issue.', 'a2ae6969-8dba-464a-aff0-d1d037374c0f'),
('task-033', '7c124e85-a54b-4935-a0a0-d349a28414be', '2025-01-09 11:33:00', 'Check the server logs for additional details related to the reported issue.', '6e18a343-baa2-4400-a48a-bd695105ab7f'),
('task-034', 'bb76ac3b-df7a-4cdc-985a-af6374066918', '2025-01-08 18:33:00', 'Reassign the ticket to a more experienced support agent.', '87694617-325d-4620-b40e-dc5581c399c5'),
('task-035', '1bbd47c9-1094-4560-8b27-eb83e5d11bf3', '2025-01-08 21:54:00', 'Check the server logs for additional details related to the reported issue.', 'f7b26b88-9bae-4a6f-8021-64efb6d1d45b'),
('task-036', '5d49f3db-f984-48aa-8abf-4808a6e4407c', '2025-01-09 04:24:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', '037e545a-273e-4a65-9519-8dac591ca05e'),
('task-037', 'b9c05e65-3a0c-4897-aaa0-09ea5ff99746', '2025-01-08 09:50:00', 'Document the resolution steps taken for future reference.', '635626c0-2c94-4abf-b6fa-19fe7acf6a42'),
('task-038', '73ad3b56-5b07-4943-ae8a-066df10fb821', '2025-01-08 11:28:00', 'Test the fix applied to the reported bug.', 'c2c5f835-bede-4de2-a5ae-94f0ee6c3407'),
('task-039', 'c3cdec0d-20a3-4dc9-bdd5-0a1254b201ea', '2025-01-09 15:32:00', 'Prepare a root cause analysis report for the incident.', '4f8682d5-f44a-468b-8b83-78b6416c4f2b'),
('task-040', '44b5a41f-c52f-4d4a-9a8e-09ae853ef8f1', '2025-01-09 17:11:00', 'Call the client to gather additional information on the issue.', 'cff54bd7-e83b-490e-aba8-7d6330c137b7'),
('task-041', '7db4474c-63e3-416b-ad34-4365d0f537df', '2025-01-08 13:02:00', 'Call the client to gather additional information on the issue.', 'da0f9809-71cf-4913-bce9-6d7f5b2d6d44'),
('task-042', 'a67f5006-296f-48db-9c3f-f71464bc60e1', '2025-01-08 13:26:00', 'Schedule a team meeting to discuss the feature request.', '446de252-5d4a-407e-8bb7-481a26c11e21'),
('task-043', 'ce1b7600-a2fa-45d0-b4a1-dea3980a8bde', '2025-01-09 14:21:00', 'Call the client to gather additional information on the issue.', '526f6e2d-8d05-4f66-b149-17f109660cb6'),
('task-044', 'fefe791b-4bd7-4196-b592-09c842effa43', '2025-01-08 17:15:00', 'Check the status of the ticket and update the client.', 'b0da8980-cf8b-4a55-a692-4f4ae45e6e92'),
('task-045', 'c1a4c962-8d6b-4869-ab56-98a93e237a6d', '2025-01-08 14:17:00', 'Prepare a root cause analysis report for the incident.', '022d22a1-ad43-4684-8272-d558100f6d5f'),
('task-046', '89ff7e64-8b94-47be-8f78-01e3f89c9b4f', '2025-01-09 10:53:00', 'Update the client on the progress of their feature request.', 'ce216c39-0275-4d0c-9203-d3a09e7ade51'),
('task-047', 'a9201917-579d-46cd-b6b1-687adf4f6e54', '2025-01-08 08:17:00', 'Check the server logs for additional details related to the reported issue.', '7fa9b68b-80ce-4f5e-8a90-d4e4db57cbb8'),
('task-048', 'c9422348-812c-4e60-816b-4dea12a13012', '2025-01-09 15:06:00', 'Prepare a root cause analysis report for the incident.', 'fd8c1b82-9fd1-47fb-ae98-f3f0e8762a27'),
('task-049', 'e9b27db2-750e-4c45-b915-0f370cb37979', '2025-01-08 08:33:00', 'Prepare a root cause analysis report for the incident.', '9c548d22-7a2d-4c9c-b25a-aa9f6c77d549'),
('task-050', '6559a75d-6f12-4b64-95da-0d10ff626d2f', '2025-01-08 11:14:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', '81e426fe-aca1-4941-9936-e3a31ec567f8'),
('task-051', '67428791-e9d9-4936-9001-224ebaaf8a64', '2025-01-09 11:50:00', 'Prepare a root cause analysis report for the incident.', 'd78fbf55-a771-4e8d-b8f9-7eb1af8d1c80'),
('task-052', 'b3658e5f-078c-4899-916a-94a72b6f686f', '2025-01-08 15:50:00', 'Update the client on the progress of their feature request.', '61c24e4a-4486-4e7c-bae4-9ceae7aa668a'),
('task-053', '4385ff81-4719-488c-a8cd-6b9f07bfa4d2', '2025-01-08 20:58:00', 'Reassign the ticket to a more experienced support agent.', '27d4dce5-42db-4405-8025-5c23b9a67a2d'),
('task-054', '7bcc3451-7edc-4944-a322-733ffc0fce1d', '2025-01-09 01:30:00', 'Check the server logs for additional details related to the reported issue.', '4f468dba-2506-44f7-a27a-4d825349d738'),
('task-055', '1c1f7de7-361c-4ecd-bc20-d811ac67b305', '2025-01-08 18:39:00', 'Check the server logs for additional details related to the reported issue.', '88a4e4f3-1622-4dda-a8c0-efc421ae9dfa'),
('task-056', 'd1063214-5966-46b8-a59a-000111c6027b', '2025-01-08 11:27:00', 'Reassign the ticket to a more experienced support agent.', '9f0c6aa9-5632-49a2-8c6d-bfe94f04224e'),
('task-057', '0bd2f8d2-3a94-4fd1-9825-84a597ae8a36', '2025-01-09 07:50:00', 'Document the resolution steps taken for future reference.', 'afa77a96-2166-4db4-b327-3fe9f9cf5d7c'),
('task-058', '17e71b16-bd35-4e1c-9c48-ed8d79e7f869', '2025-01-09 14:32:00', 'Update the client on the progress of their feature request.', 'b89df274-0451-4638-be76-cfd65a0a021e'),
('task-059', 'c7392b64-207e-45df-ac06-9ab84cec4303', '2025-01-09 05:35:00', 'Update the client on the progress of their feature request.', 'bc68f758-fc66-4b01-85b5-9da9e8953e44'),
('task-060', 'a226c348-6299-446d-834a-695006d84a66', '2025-01-09 11:47:00', 'Check the status of the ticket and update the client.', 'aa0aceaa-57c5-4496-9c38-d404b13a40b1'),
('task-061', '2a88f324-b9df-4778-82b5-2e352c97f330', '2025-01-08 19:13:00', 'Check the status of the ticket and update the client.', '55668095-f677-4e21-83b7-ce8784946247'),
('task-062', 'd1f06c24-9bf0-4e02-8e33-09332cdbb127', '2025-01-09 00:01:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', '66ed8a89-c823-4821-9589-859c7ebe8ad2'),
('task-063', 'e81bb043-5b6b-4f43-94ea-cca89ae22c32', '2025-01-09 09:42:00', 'Reassign the ticket to a more experienced support agent.', 'f972326e-401c-44ce-bf20-346fbd96222f'),
('task-064', 'ec589d72-ed2e-4bb4-9113-178d1ccd91f4', '2025-01-09 10:57:00', 'Schedule a team meeting to discuss the feature request.', 'ae512b71-e1a3-4b40-bf92-917801b3e902'),
('task-065', '724481c5-9ea6-4bd2-b2c1-ed9d81fcd263', '2025-01-09 13:42:00', 'Prepare a root cause analysis report for the incident.', 'adf11883-da54-4ddf-a548-4ba12604033b'),
('task-066', '310efa17-a148-42a4-b621-cc325b9157b1', '2025-01-09 04:42:00', 'Check the server logs for additional details related to the reported issue.', '1f152489-da9b-4832-80b2-7c6329be6303'),
('task-067', 'bf436eeb-0a74-460d-9d69-e7a73ea84549', '2025-01-09 00:47:00', 'Test the fix applied to the reported bug.', 'cd74daea-7c0e-4e41-bb8f-b49ade29bec3'),
('task-068', '8f673627-7d11-4b0d-b115-60b15a45bf5b', '2025-01-09 00:41:00', 'Call the client to gather additional information on the issue.', '2e93b113-45b7-48e9-b565-1609aa963305'),
('task-069', '54a871b3-1748-4022-9841-ec6e2ea5a364', '2025-01-09 11:59:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', 'd41b60e4-2bc0-4eeb-b132-3f958a9c2330'),
('task-070', 'ffcd21f4-9661-46da-aac1-704fbdaac7a4', '2025-01-09 09:22:00', 'Check the server logs for additional details related to the reported issue.', '9e27ba0d-6006-4489-b40a-16fb8ac36ae6'),
('task-071', '6fa1b4ed-a3e0-425b-95bc-347efc54d48c', '2025-01-09 04:05:00', 'Update the client on the progress of their feature request.', 'c8185919-219a-48ea-854e-8db9d4e92a88'),
('task-072', 'a35d2c30-4c33-446c-864c-db245fe55856', '2025-01-08 21:41:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', '6f53dac5-e547-48d4-932c-2efb9770746e'),
('task-073', '29e4b6f4-f1c1-4d8b-997c-1a5c71dacf9a', '2025-01-08 20:12:00', 'Schedule a team meeting to discuss the feature request.', 'a33ab7e9-961a-46c2-b832-26225c393335'),
('task-074', 'e0698d9b-4b3c-47eb-8c73-960d4b4278ec', '2025-01-08 15:16:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', 'e4b4c683-c067-4fa7-82f1-60e448d59afe'),
('task-075', '4f2ab895-4562-43f9-9cbd-cb79e749488b', '2025-01-08 11:38:00', 'Call the client to gather additional information on the issue.', '594a8d3f-53a4-4c1f-a514-71422b837b5b'),
('task-076', 'ca8c107f-939a-46df-aac8-4625003a3679', '2025-01-09 03:20:00', 'Check the server logs for additional details related to the reported issue.', '2b224bde-1d85-4f2b-9aea-6092ba676f77'),
('task-077', 'efc21854-ff30-4805-b9f9-e3f2caf70e8f', '2025-01-09 11:11:00', 'Test the fix applied to the reported bug.', 'f06c7141-c628-406a-b9f2-ff022831e2a6'),
('task-078', 'c66e6aa8-e3e2-42d4-ad08-861aa96fd0be', '2025-01-09 13:29:00', 'Check the status of the ticket and update the client.', '2e7311b6-7d07-4073-bde0-9c40f0fe8557'),
('task-079', '5f76c225-d1f0-444d-a01a-d8acc80ed1a3', '2025-01-09 08:07:00', 'Call the client to gather additional information on the issue.', 'f619e28f-a0ed-4849-b389-6ded157ad901'),
('task-080', 'f3b3ba05-51c6-4a47-b0ba-59338b2bcb92', '2025-01-09 15:27:00', 'Call the client to gather additional information on the issue.', '979535d3-7cac-4827-891d-3357bf3aa6c7'),
('task-081', 'e96cf697-2d92-4343-af1b-bd3fe41345f7', '2025-01-09 06:59:00', 'Reassign the ticket to a more experienced support agent.', '875886d5-d4eb-4362-96fb-206beec6ddad'),
('task-082', '2560e450-6513-4c36-b3bd-f99b2278fb62', '2025-01-08 15:14:00', 'Schedule a team meeting to discuss the feature request.', '85efc017-adf3-44c8-b4fb-6a5a8e0e72ee'),
('task-083', '5f76c225-d1f0-444d-a01a-d8acc80ed1a3', '2025-01-09 00:11:00', 'Check the server logs for additional details related to the reported issue.', '2d0bd405-bc58-4e07-a00e-2d15b8920ed6'),
('task-084', 'c5a2494d-d5b1-4119-9c61-641a76f084c4', '2025-01-08 21:03:00', 'Check the status of the ticket and update the client.', '75a204b0-f9cd-4e3d-a11c-072f5ef5abe5'),
('task-085', 'b181c77d-68e8-4275-aed8-a69b6fbeab32', '2025-01-09 05:42:00', 'Schedule a team meeting to discuss the feature request.', '1fc55114-62f0-4b1d-8531-abab2ab1759f'),
('task-086', '490ff633-9249-401e-adb5-e9a73108358b', '2025-01-09 08:04:00', 'Call the client to gather additional information on the issue.', '52f2a2d1-4d12-4f10-95c1-abda7d5200c6'),
('task-087', 'aca27287-106f-4dcd-ae78-af7af6cbf6c5', '2025-01-08 11:29:00', 'Reassign the ticket to a more experienced support agent.', '9866c4a1-64e1-45f8-869e-db3e1bee55de'),
('task-088', 'f8dd8c45-8bda-4d68-950f-047a4a7ed061', '2025-01-09 11:21:00', 'Call the client to gather additional information on the issue.', '9fd3b785-4d45-4e2e-ac46-956c83f3be0e'),
('task-089', 'a3fa57f2-84c4-4242-8271-93a857481823', '2025-01-09 05:37:00', 'Schedule a team meeting to discuss the feature request.', 'a6315ff5-53a1-4118-b5f6-2d605e3624ae'),
('task-090', 'c3918cf8-7ffa-40cd-ae75-79b96dd32518', '2025-01-09 08:50:00', 'Update the client on the progress of their feature request.', '4ce9f3a9-6f22-48e2-8faa-2e88f17e9781'),
('task-091', '298f09a4-3903-4af7-8d39-bb52826557fe', '2025-01-09 05:59:00', 'Schedule a team meeting to discuss the feature request.', '8c6a14b3-5b79-4287-ab85-98ca85876556'),
('task-092', 'a5126b72-1a7f-4ece-ac2b-38a16af88d81', '2025-01-09 09:55:00', 'Schedule a team meeting to discuss the feature request.', '5678832b-d534-4e1b-8370-a20516a5db08'),
('task-093', '25b44fbd-89dd-4607-9cba-5f0996b01ef1', '2025-01-08 08:16:00', 'Call the client to gather additional information on the issue.', '14c160c9-6cb4-4d85-8a25-b0d92469e550'),
('task-094', 'f8c8e8d3-1db6-4f8e-be6c-4c45da12d089', '2025-01-09 12:39:00', 'Update the client on the progress of their feature request.', '36dfc032-f5e8-4ed4-a0e4-802f20a15cf9'),
('task-095', '236d279e-7ce7-4bd8-a0c9-c25f657d1d75', '2025-01-08 09:53:00', 'Document the resolution steps taken for future reference.', '4f2d485c-bfeb-4d8f-adc1-c2ea2890b246'),
('task-096', 'fd34526b-fe66-4b59-b37d-2f367d774c83', '2025-01-09 02:51:00', 'Update the client on the progress of their feature request.', 'cd753433-a574-41bd-a0f1-c8c192f5f300'),
('task-097', 'f4682755-cd13-4f5c-9d31-8064c24f7c8d', '2025-01-09 07:01:00', 'Call the client to gather additional information on the issue.', 'aa637022-f2a0-48fe-8b8a-e73c36200391'),
('task-098', '17df6493-e15c-419b-8ecc-c2331838b3ba', '2025-01-08 21:41:00', 'Check the status of the ticket and update the client.', '827c700d-1bee-4c78-9672-f5955c71176c'),
('task-099', '16e3f600-5cea-4861-8d58-3efb16ae6290', '2025-01-08 10:03:00', 'Prepare a root cause analysis report for the incident.', '1af2e795-006f-4065-a185-5aa3ab95e975'),
('task-100', '4737fb53-c5a3-464c-a9c9-8d236a628d23', '2025-01-09 06:49:00', 'Document the resolution steps taken for future reference.', 'ce589280-f0da-4515-8578-2a945da0a1be'),
('task-101', '77137be5-26e1-4b0d-9b6f-ff30a0faafac', '2025-01-09 03:20:00', 'Schedule a team meeting to discuss the feature request.', '984edd9b-094d-4b3a-a6cd-56a1fe77617b'),
('task-102', '411f757c-5f75-44e0-93f2-003cd5be55b2', '2025-01-09 07:03:00', 'Reassign the ticket to a more experienced support agent.', 'c3633edb-9ddc-417c-aebc-11096fb6a5a6'),
('task-103', 'e300d718-918b-439e-b019-e1203b48a420', '2025-01-09 16:25:00', 'Update the client on the progress of their feature request.', 'b88964fc-887a-45e8-88cc-86a2e4b7f3b8'),
('task-104', '962671ce-b488-4c8f-9abe-9b608076a45a', '2025-01-08 09:58:00', 'Call the client to gather additional information on the issue.', '13836555-4836-4604-a2f6-35ed29a9ac09'),
('task-105', '80b2c781-5b34-4eef-825b-a7418183aec8', '2025-01-09 01:16:00', 'Prepare a root cause analysis report for the incident.', '87ebdf12-5e8d-4172-aba4-ee88c2251060'),
('task-106', 'dd0414cd-0914-4732-b3b6-c871e7ad03b4', '2025-01-09 01:27:00', 'Update the client on the progress of their feature request.', '53e981f0-9e4d-44d9-837b-77ae0b091faa'),
('task-107', '0d7f8498-2d2a-49a3-b05a-486c473decb4', '2025-01-09 13:35:00', 'Test the fix applied to the reported bug.', '5f86ea7c-1e22-451b-ac36-4d671edda0c2'),
('task-108', '94755b91-7bb5-4d5f-8b85-5014e8d0acf1', '2025-01-08 13:30:00', 'Update the client on the progress of their feature request.', 'f70427c8-feef-4bf7-96bc-02c2aa56f127'),
('task-109', '6f5fb848-153e-4eb8-9020-bb1766d0f609', '2025-01-08 16:47:00', 'Prepare a root cause analysis report for the incident.', 'b4c6d13a-0a40-421b-8a36-964b78bc9d0f'),
('task-110', '6da425ff-d338-426e-a445-5ec319c236c4', '2025-01-08 12:03:00', 'Send a follow-up email to the client for feedback on the resolved ticket.', 'f3a75103-ebff-4866-8361-eaf19a0f5b95'),
('task-111', '9c67b0e4-51b2-40ea-92f7-1e8b788d33cd', '2025-01-09 09:15:00', 'Review the new feature documentation and provide feedback.', '69ac4bce-b419-4c87-bcfa-5c3c8562bf5f'),
('task-112', '60fbd9de-f64a-4520-9f9a-78edc4c841cd', '2025-01-09 14:20:00', 'Test the performance of the updated application version.', '2fd1986f-f32a-4b1a-a095-9afc523d19a0'),
('task-113', 'c02d4d31-d5cb-4996-b497-6d9e3f25ad2b', '2025-01-08 10:45:00', 'Assist the client in configuring their new system setup.', '91efddd0-4131-485a-ac14-a113aca48233'),
('task-114', 'e90b9c7c-4d9a-432c-8668-657f7b8a1e1d', '2025-01-08 15:55:00', 'Compile a list of frequently reported issues for internal review.', 'f32059ac-5a63-4f17-b83a-059c3c88eff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`uuid_ticket`);

--
-- Indexes for table `ticket_actions`
--
ALTER TABLE `ticket_actions`
  ADD PRIMARY KEY (`uuid_action`);

--
-- Indexes for table `ticket_tasks`
--
ALTER TABLE `ticket_tasks`
  ADD PRIMARY KEY (`uuid_task`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
