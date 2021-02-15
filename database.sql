-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2021 at 12:09 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermetrics_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2021-02-13 22:17:03'),
(2, 'Gaming', '2021-02-13 22:17:03'),
(3, 'Auto', '2021-02-13 22:17:03'),
(4, 'Entertainment', '2021-02-13 22:17:03'),
(5, 'Books', '2021-02-13 22:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `jwt_accesstoken`
--

DROP TABLE IF EXISTS `jwt_accesstoken`;
CREATE TABLE IF NOT EXISTS `jwt_accesstoken` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jwt_accesstoken`
--

INSERT INTO `jwt_accesstoken` (`id`, `access_token`, `status`, `timestamp`) VALUES
(1, '8828a7de-6edb-11eb-a564-d4bed93ab519', 1, '2021-02-14 15:44:27'),
(2, '8d3e311c-6edb-11eb-a564-d4bed93ab519', 1, '2021-02-14 15:44:36'),
(3, '8e563b82-6edc-11eb-a564-d4bed93ab519', 1, '2021-02-14 15:51:47'),
(4, '073c9877-6ee2-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:30:57'),
(5, '68cfdcd6-6ee3-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:40:50'),
(6, '98c547f8-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:49:20'),
(7, 'a48f68a6-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:49:40'),
(8, 'b29036fd-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:50:04'),
(9, 'b3774810-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:50:05'),
(10, 'bb394fd3-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:50:18'),
(11, 'c0c96a95-6ee4-11eb-a564-d4bed93ab519', 1, '2021-02-14 16:50:27'),
(12, 'c06e25eb-6f77-11eb-a564-d4bed93ab519', 1, '2021-02-15 10:22:39'),
(13, '2992bb28-6f78-11eb-a564-d4bed93ab519', 1, '2021-02-15 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(8) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_catid` (`category_id`),
  KEY `fk_userid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `user_id`, `created_at`) VALUES
(1, 1, 'Enim deleniti inventore dolorem ex tempora odio non perspiciatis.', 'Autem quia et cumque nisi molestias quo odio. Fugiat consequatur nostrum quo dolore quo quia et.', 4, '2021-02-11 07:35:56'),
(2, 2, 'Qui sed nesciunt eum adipisci ullam.', 'Quae eveniet tempore totam consequatur provident odio. Nostrum iure consequatur magni ut voluptatem ipsa voluptas. Animi tenetur architecto dolor qui. Facilis non tempora libero praesentium est nobis ad quidem.', 3, '2020-09-23 01:27:17'),
(3, 3, 'Repellat ad molestias ut ut itaque dicta eos.', 'Inventore facere facilis dolor blanditiis. Praesentium nam quidem doloribus at molestiae.', 5, '2020-02-25 02:42:17'),
(4, 2, 'Voluptatibus sed eaque tempore qui nemo id voluptatum.', 'Dolor accusamus dolores enim corrupti placeat praesentium. Rerum in animi sed quia in. Incidunt nesciunt sit repudiandae consequuntur.', 4, '2020-09-24 11:38:00'),
(5, 1, 'Tempore ad et iure nihil incidunt.', 'Voluptas doloremque quia exercitationem aperiam debitis repellat tenetur. Soluta necessitatibus expedita non sit. Ea quia aspernatur dolores consequatur sequi explicabo iste.', 2, '2020-09-11 00:10:24'),
(6, 1, 'Eum ipsa laborum quas quam.', 'Sunt mollitia eos in fugit. Harum cupiditate dolores est ea fuga. Voluptatem aut qui quis est eum eaque.', 1, '2020-11-13 23:45:08'),
(7, 4, 'Harum itaque nihil iste veritatis sit sit.', 'Libero accusamus autem blanditiis aut. Veniam vitae optio harum dolore reprehenderit vel autem dignissimos. Magnam est accusamus non assumenda vero quo. Quos nulla quae ut quia. Rerum ullam ab quidem deserunt.', 4, '2020-04-01 15:00:58'),
(8, 4, 'Reprehenderit similique corporis doloremque totam rerum rerum sequi.', 'Commodi itaque occaecati dolorem et maiores voluptatem. Eius voluptatem placeat tenetur id voluptatem sed neque quia. At aliquid voluptas voluptatem ipsa et sapiente quia.', 1, '2020-12-31 18:58:25'),
(9, 3, 'Deleniti occaecati commodi nulla numquam fugit corporis labore.', 'Quibusdam velit accusamus et vel deleniti officia maxime ut. Aspernatur et repudiandae vel.', 1, '2020-07-16 16:00:13'),
(10, 5, 'Cumque sit repellendus quae quam repellendus exercitationem voluptatibus.', 'Recusandae doloremque tempore aut blanditiis voluptatem vel velit. Amet est ut doloribus aut vel rerum.', 3, '2021-02-02 12:05:35'),
(11, 1, 'Saepe quas aspernatur vel officiis minima architecto.', 'Laboriosam harum blanditiis officia quibusdam commodi nemo excepturi. Quia voluptates adipisci velit rerum nostrum et numquam. Saepe corrupti quia laboriosam voluptates dicta quo.', 3, '2020-06-20 20:44:20'),
(12, 4, 'Similique enim quia voluptas voluptatibus cum quis aut itaque.', 'Iure culpa incidunt odit autem. Maxime deleniti cupiditate velit maiores explicabo. Saepe aut nam quasi rerum aut modi ullam. Nostrum ut quasi saepe deserunt adipisci voluptatum non. Dolor cumque at et laborum a.', 4, '2020-10-01 03:57:54'),
(13, 3, 'Eum odio quod amet.', 'Nesciunt dolorem soluta nemo voluptatibus. Assumenda iste optio illo aperiam eveniet magnam et. Voluptas eius repellendus aut et sed perspiciatis. Mollitia dolorum perspiciatis esse perspiciatis.', 2, '2020-11-30 08:54:27'),
(14, 3, 'Adipisci rerum et minima animi est.', 'Quidem expedita occaecati doloremque maxime ea. Et veritatis consequatur quas nemo dolore quam. Corporis fugit doloribus reiciendis vel nostrum vel.', 3, '2020-09-27 09:38:09'),
(15, 2, 'Qui est qui libero fugit quibusdam reprehenderit deserunt.', 'Ad aut occaecati occaecati aperiam ex. Iusto facere excepturi odit numquam officia. Quis dolor quod mollitia asperiores amet beatae.', 2, '2020-12-28 21:50:33'),
(16, 4, 'Cum tenetur atque necessitatibus magnam.', 'Odit explicabo eaque quia sunt doloribus. Ipsam enim odio quasi repellat. Corporis aspernatur eos sit ex dolores. Nihil dicta inventore ut possimus eligendi qui.', 5, '2020-09-26 08:03:05'),
(17, 4, 'Voluptatem consequatur autem culpa minus perferendis et qui.', 'Et voluptatem dolor eius. Eius occaecati mollitia voluptas quidem. Natus nisi eaque minus quaerat consequuntur consequuntur enim. Recusandae quia quidem totam dignissimos et.', 4, '2020-08-08 21:02:06'),
(18, 5, 'Aliquam laudantium sit sunt id qui.', 'Perferendis quibusdam illo numquam. Quia consectetur ut autem eveniet error. Rerum quia magnam libero hic quis dolore. Pariatur pariatur nihil quia. Occaecati voluptatem qui sit ut sunt rem.', 1, '2020-04-29 15:05:52'),
(19, 2, 'Est odit voluptates delectus nesciunt qui est.', 'Quaerat eaque natus dolor. Ut ex assumenda odio dicta consequatur fugiat quasi. Autem illo quo est sit tenetur et fugit. Et esse expedita deleniti distinctio nesciunt ipsum deserunt.', 3, '2021-01-01 22:50:39'),
(20, 1, 'Tempore neque aliquid quis hic veniam omnis id quis.', 'Consequatur totam libero voluptatibus aliquam. Suscipit quis nulla eligendi nisi dolor. Quaerat aspernatur harum sit enim maxime ducimus cumque. Dolores dolore ullam minus animi rerum.', 1, '2020-12-26 20:53:46'),
(21, 4, 'Nisi eius dolorem quisquam ratione.', 'Eaque et cumque molestias et amet sit. Voluptatem rerum enim optio ut quia sit. Rerum molestiae aut laboriosam exercitationem quibusdam.', 5, '2020-05-18 23:07:54'),
(22, 3, 'Facere deleniti ab esse itaque nihil eius deserunt.', 'Blanditiis omnis eum possimus dolorum est iusto. Laudantium et dicta qui voluptas laudantium. Ut voluptate sed ipsam officia.', 5, '2020-12-12 05:19:12'),
(23, 5, 'Cupiditate ea est perspiciatis laudantium ut est.', 'Aut facilis enim illo dolorem laboriosam quia nihil error. Nulla velit cupiditate id sit illum et. Dicta fugit omnis eius amet. Soluta cumque atque perferendis quam saepe eius.', 5, '2020-04-26 12:42:04'),
(24, 4, 'Totam in est iure dolores alias sed aut.', 'Ab dignissimos quia dolores. Rerum dolores ratione cupiditate saepe. Culpa molestiae eius sit. In dicta dolore et.', 4, '2020-03-15 08:38:19'),
(25, 2, 'Rem ipsa excepturi fugit numquam.', 'Nisi sapiente exercitationem voluptas ipsa. Temporibus illo optio saepe quo nulla explicabo. Magnam magnam odit natus adipisci dolor nulla quas.', 2, '2021-01-29 07:31:33'),
(26, 3, 'Deserunt officiis qui et.', 'Architecto sapiente doloribus veniam dolores harum voluptas. Ea similique fuga qui tempora praesentium cumque nostrum voluptatem. Velit perferendis in dignissimos possimus harum in. Soluta aspernatur illo deserunt aut consequuntur suscipit itaque.', 1, '2020-09-22 21:20:19'),
(27, 5, 'Quaerat ut reiciendis accusamus consequatur et ipsa.', 'Minus impedit ex provident odit eos perferendis. Totam eveniet necessitatibus quis odio nemo modi. Fugiat est eum dolor odit. Molestiae veritatis qui est.', 1, '2020-08-14 14:27:20'),
(28, 3, 'Error consequatur facere non et.', 'Eaque aliquid nam beatae similique sapiente culpa. Minima consequatur repellat natus perferendis dignissimos et vel. Saepe ut maxime sunt aut in atque. Quibusdam adipisci quis aut ut exercitationem ad eveniet voluptatem.', 4, '2020-04-19 00:42:11'),
(29, 2, 'Et vero et cum.', 'Magni voluptatibus fuga quasi blanditiis quia ullam impedit. Eius quo a et totam. Similique ipsa fuga a iste ut dolor quos facere. Velit rerum accusamus at quia. Velit commodi ut voluptatibus voluptatem odit officiis quod.', 5, '2020-12-18 23:51:55'),
(30, 2, 'Explicabo quae rem suscipit id debitis.', 'Laudantium laborum est consectetur et. Rerum rerum aspernatur nihil alias. Est qui aut aut animi.', 4, '2020-04-14 12:44:25'),
(31, 2, 'Dolores voluptas corrupti et.', 'Iusto neque aut nam. Voluptatem harum natus rerum aut quo quasi pariatur dolorem. Nesciunt tenetur qui id perspiciatis earum voluptatum.', 3, '2021-01-15 17:24:06'),
(32, 4, 'Deserunt eos ipsa aut rerum rerum velit consequatur.', 'Velit ut sunt molestias ea eos nemo velit. Possimus magnam tenetur eum iure rem aut. Nostrum qui eaque qui nemo. Praesentium et quisquam rerum maxime.', 5, '2020-12-26 18:48:48'),
(33, 5, 'Pariatur optio aut sunt quibusdam commodi assumenda minima.', 'Illum explicabo iusto qui quasi consectetur veritatis sit. Sapiente voluptas assumenda ut accusamus consequatur mollitia. Iure laborum aliquam omnis in ut. Molestiae dicta illo harum ab repudiandae nesciunt.', 5, '2020-09-12 08:39:33'),
(34, 4, 'Enim impedit nisi sit ullam.', 'Occaecati rerum et nobis voluptatibus sapiente ratione illum. Maiores occaecati illum aspernatur id enim omnis. Dolore fugit accusantium eum odit voluptates facere nam aut. Facere libero sit voluptatibus voluptas molestiae quibusdam sunt.', 3, '2020-03-20 05:15:26'),
(35, 3, 'Quia impedit debitis non accusamus provident consequatur.', 'Velit voluptates adipisci pariatur et natus. Voluptate hic vel eos at. Dolorem culpa soluta doloremque iste nam. Dolorem nostrum enim aut cum temporibus suscipit.', 3, '2020-03-10 22:52:36'),
(36, 2, 'Voluptatibus nisi incidunt eaque voluptate repudiandae.', 'Quisquam sit accusamus corporis. Ut facere sit ut itaque dolorum dolores.', 1, '2021-02-09 09:43:25'),
(37, 4, 'In sapiente occaecati ab consequatur sint aut quaerat.', 'Culpa corporis unde aspernatur odit quasi natus voluptate. Voluptas fugiat minima non.', 3, '2021-01-15 10:39:31'),
(38, 4, 'Consequatur inventore nemo est reiciendis quo.', 'Itaque labore odit praesentium ea ea. Numquam rem incidunt a ratione. Totam sed accusamus autem tenetur magnam fuga. Beatae nemo aspernatur qui sit consectetur rerum qui.', 3, '2021-01-07 02:13:27'),
(39, 4, 'Provident autem voluptas officiis dolorum.', 'Et voluptas placeat veritatis animi labore neque a. Est aliquid perferendis esse laborum rem quia omnis. Culpa consequatur distinctio veniam a similique similique ut. Ut autem quibusdam voluptatem ut culpa repudiandae. Asperiores aspernatur cum quidem excepturi.', 3, '2020-05-13 17:18:26'),
(40, 1, 'Voluptates aut quia sed enim accusantium voluptatum.', 'Fugiat autem labore aut eveniet et eos veniam. Quam quia ut quaerat voluptas minima deleniti dolore. Nihil enim aut enim corrupti.', 1, '2020-06-20 12:23:17'),
(41, 3, 'Et qui nam voluptatem quas quo et aliquam maiores.', 'Voluptas ea nihil ab numquam dolor sapiente aut. Porro nesciunt omnis occaecati. Eos exercitationem minima dolorem doloribus perspiciatis soluta.', 3, '2020-05-02 20:49:35'),
(42, 4, 'Earum nihil dignissimos voluptatibus alias qui dolor et pariatur.', 'Ea tempora ut facere ut assumenda quis. Nisi similique aut tenetur sed. Reprehenderit harum dolorem doloremque accusamus dignissimos. Voluptatibus eveniet aut laudantium est repudiandae modi mollitia. Ut repudiandae quia voluptatem commodi debitis quidem.', 5, '2021-02-10 16:21:27'),
(43, 1, 'Sed voluptatum odio ut.', 'Est similique doloribus sit voluptatem. Animi recusandae ut cum corporis. Cumque labore dolor repudiandae in maxime quas. Molestiae eius rerum optio reprehenderit quam in.', 5, '2020-06-10 19:09:25'),
(44, 4, 'Quia corrupti non qui fugiat inventore.', 'Autem ipsam repudiandae libero neque doloremque non totam. Voluptate autem fuga repudiandae possimus ullam dolor dignissimos suscipit.', 4, '2020-10-27 12:46:30'),
(45, 2, 'Ea cum aspernatur ipsa non.', 'Odio eos hic nostrum repudiandae tenetur. Voluptatibus officiis error quis dolorum facere deserunt eaque. Nisi quae minima explicabo debitis exercitationem magnam. Explicabo et voluptatibus iure quia.', 1, '2020-07-07 07:51:03'),
(46, 1, 'Et sunt laboriosam eum voluptatum ut.', 'Nulla eveniet dolores placeat iure consequatur id distinctio. Porro omnis mollitia consequatur sunt ut quia id. Doloremque cupiditate dolores mollitia nisi sit dolores nemo. Perferendis voluptatem ut optio quia et soluta voluptatem.', 4, '2020-02-22 04:53:15'),
(47, 1, 'A a itaque animi voluptatum.', 'Odit necessitatibus reiciendis nostrum earum laudantium. Qui est recusandae consequuntur.', 1, '2020-12-08 13:43:09'),
(48, 1, 'Enim et a harum deserunt fugiat.', 'Reiciendis placeat velit minima assumenda officia perferendis. Sed quia et et iusto velit numquam. Adipisci adipisci unde numquam laborum id in laboriosam. Voluptatem ea eius non autem.', 3, '2020-06-27 20:49:23'),
(49, 3, 'Fuga molestias eaque ut tenetur libero aliquid autem vero.', 'At qui reiciendis tempora nihil. Quis odio aspernatur consequatur error repellat iste odit. Nemo sequi perspiciatis et id. Quia tempora magnam adipisci alias molestias dolor.', 4, '2020-04-01 20:20:58'),
(50, 3, 'Non velit delectus ad sint.', 'Error ea quia impedit eos modi accusamus. Labore at ex repellat enim doloremque voluptatem. Reiciendis dolorem et error aliquam aliquam eaque. Sint id laudantium distinctio praesentium.', 1, '2020-12-25 00:01:37'),
(51, 4, 'Ut illo ab consequatur repellat quaerat rerum eos.', 'Possimus aperiam et et quisquam suscipit. Odio ea sapiente ut et vitae reprehenderit incidunt.', 3, '2020-11-19 21:40:08'),
(52, 4, 'Saepe neque tenetur commodi delectus cum qui.', 'Quisquam quo in ut voluptatum magnam. Sit rerum iusto totam aut. Id cum facilis illo eos quod aut quos.', 1, '2020-11-22 08:55:14'),
(53, 5, 'Aut ab assumenda sit natus.', 'Sit laudantium similique sint aut. Fugit voluptatem nihil quae modi exercitationem. Non deserunt doloribus amet a aut ullam ullam.', 4, '2021-02-09 12:05:04'),
(54, 5, 'Dolore eius praesentium voluptas odit recusandae qui ducimus.', 'Beatae sapiente fuga dolorum qui possimus ducimus. Veritatis et qui et recusandae eos sit et. Et cum vero aut quas. Nemo eos quas qui animi dolor unde qui.', 1, '2020-07-15 20:51:46'),
(55, 5, 'Quo excepturi et natus molestias voluptatem esse exercitationem.', 'Neque laboriosam pariatur et et quae. Nihil ab nostrum inventore velit quisquam sunt sit.', 1, '2020-08-12 01:58:53'),
(56, 1, 'Quo expedita velit velit sit.', 'Repellat maiores ea facilis voluptatem et vero atque. Sapiente voluptates aliquam pariatur ex ea quod id. Nihil repellat incidunt earum molestias.', 3, '2020-10-29 08:53:56'),
(57, 2, 'Explicabo et est eveniet dolorem voluptatem distinctio sunt.', 'Rerum nemo est quia voluptas et. Laborum nisi nesciunt quaerat rem. Numquam nihil ut quibusdam quia excepturi magni voluptatem. Possimus et cupiditate deleniti totam repellat aut.', 5, '2021-01-19 16:08:06'),
(58, 5, 'Possimus inventore debitis in aut numquam adipisci sit itaque.', 'Qui id aut molestias optio aliquid occaecati. Eum earum ea optio corporis odio a maxime. Et et eaque dignissimos id vitae voluptas. Vitae nostrum consequatur iure voluptatem dolorem est minus libero.', 4, '2020-11-29 18:03:18'),
(59, 1, 'Asperiores tempore enim corporis quo vitae incidunt ut.', 'Qui aspernatur unde ut ad dolores ea minus. Ut eius est iusto quo. Repudiandae dicta corrupti rem sed beatae vero ex.', 2, '2020-05-15 18:25:23'),
(60, 4, 'Aut fuga qui accusamus non.', 'Est id provident aliquid harum cum asperiores. Reprehenderit atque non ut quaerat neque dolores et. Excepturi nobis aut alias sapiente reprehenderit saepe. Ea nam et nostrum est similique quo.', 4, '2020-08-25 21:03:41'),
(61, 3, 'Voluptatem fugit saepe tempora maiores.', 'Voluptatibus dolorum qui similique adipisci ducimus quia. Repudiandae omnis enim soluta nihil omnis fugiat eaque. Ut voluptatem fuga minima sed dolore ut delectus.', 1, '2020-04-22 10:18:17'),
(62, 4, 'Aperiam non voluptatum magnam voluptas.', 'Occaecati nobis modi dignissimos velit dicta. Officia similique mollitia voluptate laborum est commodi qui accusamus. Dolorum exercitationem vero velit porro ea delectus iure. Sit eum quasi reiciendis quis libero. Aut harum inventore aliquid totam explicabo voluptas nisi.', 4, '2020-07-21 20:43:13'),
(63, 5, 'Optio animi accusantium aspernatur illo autem.', 'Quis dolores optio sit ut. Itaque ea nemo delectus molestiae doloremque.', 3, '2021-01-01 21:52:03'),
(64, 5, 'Nisi officiis laboriosam id qui at.', 'Magnam voluptatem aliquam amet sit. Repellat quibusdam tenetur voluptatem cumque molestiae. Odit eius aut nihil ipsa omnis soluta.', 4, '2020-10-04 18:03:54'),
(65, 3, 'Sint esse exercitationem et rerum.', 'Quia voluptate veniam ut sit eveniet qui qui consectetur. Excepturi tempora illum voluptatem magni molestiae laborum dolor. Consequatur quam optio esse sint.', 4, '2020-11-19 03:23:02'),
(66, 1, 'Ab possimus et aut dicta.', 'Voluptatem qui ducimus vel beatae dolor. Aperiam et nemo dolor necessitatibus enim necessitatibus. Ipsa ab error unde molestiae sed debitis id. Delectus omnis doloribus repellendus et ad necessitatibus nihil voluptatem. Ut tenetur nisi cum et et eos velit qui.', 2, '2020-08-28 21:50:20'),
(67, 3, 'Dolores maiores quo est officiis dolorum.', 'Voluptate omnis occaecati repellendus aliquid. Est rem maiores animi laboriosam. Necessitatibus eligendi alias quidem numquam est qui consequuntur rerum.', 4, '2020-08-21 03:31:24'),
(68, 4, 'Eum ad minus eum odit qui.', 'Explicabo numquam odio ipsam quae aut libero expedita. Qui magni tenetur blanditiis deserunt in nemo. Voluptatem dolores et sint molestias. Reiciendis velit commodi sed sit iste.', 3, '2020-09-12 04:14:24'),
(69, 1, 'Doloribus non ad consequatur est voluptatibus non.', 'Molestiae voluptatem sint placeat perspiciatis reiciendis porro velit. Nam sunt et fugiat exercitationem voluptatem a. Quia occaecati aut id aliquam nam. Eius ullam maiores perferendis.', 2, '2020-03-15 06:27:42'),
(70, 2, 'Et illo alias fuga totam.', 'Est maxime ut quidem. Optio dolores dignissimos minima dignissimos ea explicabo et. Explicabo eius provident iste tempore nemo quidem unde.', 3, '2020-05-02 08:57:04'),
(71, 5, 'Impedit quidem incidunt numquam excepturi omnis.', 'Repellendus aliquid ipsa et non minima cum. Mollitia sed animi qui assumenda officia at. Iure enim facilis dolore assumenda temporibus. Dolor animi autem itaque non.', 1, '2020-10-25 12:23:51'),
(72, 5, 'Excepturi soluta eum recusandae voluptatem ut praesentium omnis.', 'Magni quae vel rerum odio rerum soluta. Error voluptatibus sint ut fugiat nihil consequatur magnam. Dolorum quis ex dolorem labore laboriosam quo mollitia.', 3, '2020-07-06 08:34:52'),
(73, 1, 'Perspiciatis autem dicta distinctio id iure.', 'Modi odit in rerum quos. Sequi eos qui vero optio sapiente dolor. Nemo voluptatem temporibus nostrum animi.', 3, '2020-02-18 11:25:57'),
(74, 2, 'Consequatur eos ea veniam rerum optio quibusdam voluptas.', 'Temporibus temporibus blanditiis quod dignissimos omnis non. Quo eum ut excepturi numquam quisquam quod voluptatem. Voluptates voluptatibus facilis quia alias quo. Enim et et libero tempora amet nesciunt necessitatibus.', 1, '2020-03-13 22:08:48'),
(75, 2, 'Voluptate numquam optio molestiae.', 'Fugit quo esse quasi numquam. Dicta odit omnis veritatis expedita reprehenderit odit. Dolore rem porro et.', 5, '2021-02-11 19:01:58'),
(76, 2, 'Aut aut dolor fugit sed aut sed.', 'Dolorem voluptatem ut cumque delectus sapiente. Minus reiciendis dignissimos dolorum voluptatem ipsam necessitatibus. Omnis sit sit nulla dignissimos dolores et et ipsa.', 2, '2020-06-25 15:30:39'),
(77, 2, 'Molestiae dolores repellat sapiente similique a neque sint expedita.', 'Reiciendis laudantium reprehenderit deserunt blanditiis ea quia. Rerum quod voluptas sapiente alias omnis repudiandae. Consequatur quo nobis omnis voluptates sit similique aperiam. Est beatae sequi molestiae unde iure. Aut inventore molestiae ut beatae voluptas.', 1, '2020-04-12 17:44:34'),
(78, 2, 'Eos magnam voluptas officiis quod quo qui asperiores.', 'Et rerum sunt aut cumque eveniet. Fuga vitae temporibus temporibus et aut deserunt. Distinctio officiis a deleniti et. Quis atque molestiae ipsa. Voluptatem qui voluptatem sed.', 1, '2020-08-14 18:52:23'),
(79, 2, 'Quam consequuntur magnam veritatis natus cumque omnis iure.', 'Voluptatem beatae enim natus quis quis. Rerum repellat tenetur repellat dignissimos. Doloremque quia error sit reprehenderit.', 3, '2020-04-13 17:46:58'),
(80, 2, 'Et est consequatur unde eligendi earum perferendis voluptatem qui.', 'Quia nisi ut dicta architecto eaque est aut. Sint sit quis consectetur dolorum repudiandae aperiam quidem. Ea corporis iste inventore. Magnam in aut necessitatibus neque rerum pariatur.', 4, '2020-04-27 19:17:45'),
(81, 1, 'Enim corporis et nostrum.', 'Possimus hic dolor et. Dicta libero itaque facere eos.', 5, '2020-12-13 02:15:33'),
(82, 3, 'Consequatur sit maiores saepe placeat ea tenetur.', 'Quis necessitatibus est provident quia porro. Aut rem nostrum nam aliquid incidunt nulla aspernatur. Numquam quibusdam est excepturi et est quaerat. Id earum magnam repellendus non qui beatae tempora.', 1, '2020-09-10 19:52:37'),
(83, 3, 'Itaque cum aut a doloribus ut nesciunt.', 'Quos cum dolor voluptates quo ipsum. Dolor et magnam aut facilis. Occaecati natus expedita mollitia quas iure sapiente velit commodi. Iste sapiente ipsa voluptas exercitationem ut omnis dignissimos id.', 4, '2020-02-19 04:21:32'),
(84, 2, 'Voluptas recusandae rerum ut nemo molestiae aliquid.', 'Consequatur rerum doloribus quas ex. Qui hic qui qui. Iure magnam molestias repellendus dolores.', 4, '2021-02-03 14:26:14'),
(85, 2, 'Vel blanditiis libero nihil non nobis et.', 'Tenetur sapiente aperiam aliquid alias aut sit. Harum beatae est voluptatem voluptas omnis. Facere omnis et at id.', 5, '2020-04-06 14:39:01'),
(86, 5, 'Quia id voluptas illum eos velit.', 'Voluptates a earum aut laboriosam corrupti qui unde. Qui autem voluptates recusandae hic. Veniam repudiandae quo voluptatum odio non. Consectetur aut consequuntur aut error.', 2, '2021-02-02 04:17:22'),
(87, 3, 'Dolores doloribus fugiat et ea nostrum.', 'Sint sapiente et eum iusto magnam. Possimus et voluptas quia vel deleniti sit. Quo saepe odit iste ea.', 3, '2020-07-24 12:29:49'),
(88, 2, 'Commodi itaque ex vitae maxime quasi.', 'Suscipit maxime non totam repellat sed doloribus laborum. Atque dolorem eos voluptas in qui modi voluptatum. Eligendi maiores quos corporis nesciunt et. Et est quo explicabo eveniet.', 3, '2021-01-04 02:59:49'),
(89, 4, 'Tempore non dolorum libero autem.', 'Aut aspernatur laboriosam iusto est ut. Sapiente qui esse molestiae accusamus. Vero accusantium quas qui alias et aut praesentium deleniti. Maiores officiis sint tempore debitis ducimus. Illum necessitatibus vero explicabo temporibus quas.', 1, '2020-09-18 04:47:55'),
(90, 5, 'Ut neque non quibusdam dolorem.', 'Exercitationem corporis occaecati velit temporibus veniam. Quisquam corporis atque eligendi ut consequuntur voluptatibus et. Fuga non quas ut praesentium iure consequatur eum excepturi.', 3, '2020-10-13 12:39:17'),
(91, 5, 'Enim consectetur aperiam corrupti architecto.', 'Voluptatem facilis dolores iste labore nemo. Maxime quasi sint sit voluptates. Molestias sint ratione natus.', 3, '2020-06-12 00:17:43'),
(92, 2, 'Sed nisi necessitatibus porro et totam voluptatem qui.', 'Temporibus sequi dolorem quam sed ea. Libero quibusdam magni itaque autem dolorem qui. Recusandae corporis est autem nostrum corrupti earum et.', 5, '2020-04-18 20:41:54'),
(93, 2, 'Qui soluta minus iusto eligendi ad harum placeat.', 'Perferendis voluptas provident velit repellendus quasi suscipit. Repellendus voluptatibus reiciendis exercitationem illo ad cumque. Reprehenderit qui velit consequatur voluptatum aut illum adipisci quam.', 5, '2021-02-12 17:22:27'),
(94, 5, 'Eaque sint quas est ab.', 'Rem nulla molestiae vel asperiores. Fuga vero repudiandae perspiciatis omnis et eum iste. Quia ut ut voluptatem. Vitae officia et et voluptatem.', 5, '2020-09-02 14:45:17'),
(95, 3, 'Autem nisi quod laboriosam aut corporis necessitatibus.', 'Placeat sint dolores iure tempora quo minima qui. Aspernatur velit eligendi repellendus aut repellat ut neque. Occaecati quam iure et molestias. Quae quia porro aut culpa.', 3, '2020-08-07 08:06:06'),
(96, 4, 'Quisquam et libero omnis quae vel dolores eum architecto.', 'Aut cumque dolor officia ipsam libero. Sunt est laudantium et hic. Necessitatibus recusandae enim qui tempore. Qui dicta consectetur et nulla amet recusandae.', 5, '2020-07-16 06:09:14'),
(97, 5, 'Eos aut dolor quod sed ea quaerat laudantium dignissimos.', 'Voluptatibus pariatur aut asperiores libero facere cum rem. A sit in et autem ut nostrum vel. Magni vero molestias cum qui repudiandae nostrum sint. Quae amet et voluptatem.', 3, '2020-08-03 14:04:04'),
(98, 1, 'Est et voluptatem qui repellendus autem aliquid maiores qui.', 'Laboriosam molestiae dicta voluptas autem. Voluptatem id ut alias ut ut sunt deleniti. Illum sint eligendi earum impedit quis illo. Doloribus iure fuga quo ut eaque.', 3, '2020-11-10 23:06:38'),
(99, 2, 'Voluptates neque similique et tempora blanditiis.', 'Quae quis et consequatur quia nihil ullam iusto. Eligendi voluptas dolorem tenetur consequuntur et sequi recusandae.', 3, '2020-10-16 14:09:21'),
(100, 2, 'Qui esse qui tempore eius voluptas.', 'Tempora error molestias enim quaerat aut quasi. Et omnis eaque quos quod aut itaque aut ea. Eum commodi eos nobis sed et incidunt.', 4, '2020-12-28 11:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(8) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`) VALUES
(1, 'jhon', 'jhon@mail.com', 'jhon123'),
(2, 'smith', 'smith@mail.com', 'smith123'),
(3, 'sarah', 'sarah@mail.com', 'sarah123'),
(4, 'mark', 'mark@mail.com', 'mark123'),
(5, 'micky', 'micky@mail.com', 'micky123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_catid` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
