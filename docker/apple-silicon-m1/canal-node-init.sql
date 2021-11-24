create database `test` default character set utf8 collate utf8_general_ci;

use test;

create table `user` (
	`id` int(11) unsigned not null auto_increment comment '主键',
	`name` varchar(50) not null default '' comment '姓名',
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '用户表';

insert into `user` values(null, 'zhangsan');
insert into `user` values(null, 'lisi');
insert into `user` values(null, 'wangwu');

CREATE USER canal IDENTIFIED BY 'canal';  
GRANT SELECT, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'canal'@'%';
FLUSH PRIVILEGES;