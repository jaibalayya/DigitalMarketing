SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
DROP DATABASE DigitalAdd;
CREATE DATABASE DigitalAdd;
use DigitalAdd;

--
-- Table structure for table `user roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(11) NOT NULL,
  `roles` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
 `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4121 ;



--
-- Table structure for table `states`
--
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_id`  int(11) NOT NULL ,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES countries(id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4121 ;


--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  CONSTRAINT fk_states_id FOREIGN KEY (state_id) REFERENCES states(id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47577 ;



--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` int(10) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255)  NOT NULL,
  `user_type_id`  int(11) NOT NULL,
   `mobile_verfication_status`  int(1) NOT NULL DEFAULT '0',
    `email_verfication_status`  int(1) NOT NULL DEFAULT '0',
	`country_id`  int(11) NOT NULL ,
	`state_id`  int(11) NOT NULL,
	`city_id`  int(11) NOT NULL ,
  `password` varchar(255)  NOT NULL,
  `wallet_balance` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
   PRIMARY KEY (`uuid`),
  CONSTRAINT fk_user_user_type_id FOREIGN KEY (user_type_id) REFERENCES user_roles(id),
   CONSTRAINT fk_user_country_id FOREIGN KEY (country_id) REFERENCES countries(id),
    CONSTRAINT fk_user_state_id FOREIGN KEY (state_id) REFERENCES states(id),
	 CONSTRAINT fk_user_city_id FOREIGN KEY (city_id) REFERENCES cities(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `otp`
--

CREATE TABLE IF NOT EXISTS `otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otp_uuid` int(10) UNSIGNED NOT NULL,
  `otp` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_otp_uuid FOREIGN KEY (otp_uuid) REFERENCES user(uuid)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;
