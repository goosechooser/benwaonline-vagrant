CREATE DATABASE IF NOT EXISTS `benwaonlineauth_test`;
CREATE DATABASE IF NOT EXISTS `benwaonlineapi_test`;

CREATE USER 'jenkins'@'%' IDENTIFIED BY 'jenkins';
GRANT ALL ON *.* TO 'jenkins'@'%';