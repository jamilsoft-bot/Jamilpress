CREATE TABLE `blogs` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'blog',
  `category` varchar(100) NOT NULL DEFAULT 'uncatigorized',
  `url` varchar(100) NOT NULL UNIQUE KEY,
  `owner` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT 'jamilsoft, blog, jamilpress',
  `theme` longtext,
  `data` longtext NOT NULL,
  `date_reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL
);


CREATE TABLE `statistics` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `view` varchar(100) NOT NULL,
  `guest` varchar(100) NOT NULL UNIQUE KEY,
  `blog` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE `posts` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `summary` varchar(255) NOT NULL DEFAULT 'Summary of the Post',
  `type` varchar(100) NOT NULL DEFAULT 'post',
  `cat` varchar(100) NOT NULL DEFAULT 'uncategorized',
  `data` longtext,
  `image` varchar(100) NOT NULL DEFAULT 'pimage.png',
  `owner` varchar(100) NOT NULL DEFAULT 'none',
  `blog` varchar(100) NOT NULL DEFAULT 'none',
  `keywords` text NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT 'none',
  `status` varchar(100) NOT NULL DEFAULT 'published',
  `privacy` varchar(100) NOT NULL DEFAULT 'public',
  `shortname` varchar(50) DEFAULT NULL UNIQUE KEY,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL
);



CREATE TABLE `comments` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `json` longtext,
  `owner` varchar(100) NOT NULL
);

CREATE TABLE `categories` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100) NOT NULL UNIQUE KEY,
  `description` longtext NOT NULL,
  `summary` varchar(255) NOT NULL DEFAULT 'Summary of the Category',
  `parent` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL,
  `privacy` varchar(100) NOT NULL DEFAULT 'public',
  `status` varchar(100) NOT NULL DEFAULT 'published',
  `author` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `keywords` varchar(100) DEFAULT NULL
);