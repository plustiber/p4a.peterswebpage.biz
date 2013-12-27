-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2013 at 11:31 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `peterswe_p4_peterswebpage_biz`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(1, 1388021329, 1388021427, 4, 'Hello world!  This is my first post on ''The Beach Blogger'''),
(2, 1388027518, 1388027531, 2, 'Hello world!  I am finally on the blog.'),
(4, 1388027641, 1388027641, 2, 'Oops!!  I accidentally deleted my last post.  Well at least I know the delete function works.'),
(5, 1388027721, 1388027721, 6, 'Well Merry Christmas everyone!!'),
(6, 1388093813, 1388093813, 6, 'Well I survived Christmas - had a great time sharing the day with family.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `location`, `site`, `profile_pic`, `first_name`, `last_name`, `email`) VALUES
(2, 1387935024, 1388092318, 'cd4b93a277479cdcd40a8622f75232b0a4d091f1', '3b43580f0ab74626f4faa253411fe319aeb0b14e', 1388094523, 'America/New_York', 'Houston, TX', '', '', 'Gregory', 'Lustiber', 'glustiber@gmail.com'),
(3, 1387997892, 1388026592, '6af9523553ae6f937e13e1f0c16141d7941cf4e3', 'e91f12ef3f1fd761c7a64d363751f67451fb31c0', 1388026502, 'America/New_York', 'Wilmington, NC', '', '', 'Laurie', 'Lustiber', 'lalustiber@ec.rr.com'),
(4, 1388021034, 1388021071, '438c542d9e31214b70ed45adf720738200325b6b', 'fced4d74e5ef6a3ebc1f93602e276c36d3bf781a', 1388021045, 'America/New_York', 'Wilmington, NC', '', '', 'Charles', 'Ferguson', 'cferguson@ec.rr.com'),
(5, 1388026905, 1388092081, '7aaf441f343e53b3abdf591f4b962d86c3680762', '1287617a284740421aaf899e9a51942821347516', 1388092213, 'America/New_York', 'Hamilton, MA', 'http://roadmap-tech.com', '', 'Rudi', 'Pizzano', 'rudi@roadmap-tech.com'),
(6, 1388027269, 1388117860, '2a35792c09b784d0344a6686394fd206750508de', 'a9d54804ae98689134bbec4b3072eaf87cb65451', 1388117468, 'America/New_York', 'Wilmington, NC', 'http://google.com', '', 'Peter', 'Lustiber', 'plustiber@post.harvard.edu');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id_followed` int(11) NOT NULL,
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(3, 1388027667, 6, 2),
(4, 1388092237, 5, 6),
(5, 1388094574, 2, 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
