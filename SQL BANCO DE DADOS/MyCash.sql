

create table `mycash`.`despesa`(
`id` int not null,
`valor` varchar(255),
`tipo` varchar(100),
`data` varchar(10),
`descricao` varchar(255),
`fixo` tinyint not null,
primary key (`id`));

alter table `mycash`.`despesa` change column `id` `id` INT(11) NOT NULL AUTO_INCREMENT, ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC);

create table `mycash`.`receita`(
`id` int not null,
`valor` varchar(255),
`tipo` varchar(100),
`data` varchar(10),
`descricao` varchar(255),
`fixo` tinyint not null,
primary key (`id`));

alter table `mycash`.`receita` change column `id` `id` int(11) not null auto_increment, add unique index `id_unique` (`id` ASC);

create table `mycash`.`tipo`(
`id` int not null,
`descricao` varchar(255),
primary key(`id`));

CREATE TABLE `mycash`.`despesa`(
	`id` INT NOT NULL,
    `valor` VARCHAR(255),
    `tipo` VARCHAR(100),
    `data` VARCHAR(10),
    `descricao` VARCHAR(10),
    `fixo` TINYINT NOT NULL,
PRIMARY KEY (`id`));

-- CRIAÇÃO DE TABELA RECEITA --
CREATE TABLE `mycash`.`receita`(
	`id` INT NOT NULL,
    `valor` VARCHAR(255),
    `tipo` VARCHAR(100),
    `data` VARCHAR(10),
    `descricao` VARCHAR(10),
    `fixo` TINYINT NOT NULL,
PRIMARY KEY (`id`));

-- CRIAÇÃO DE TABELA TIPO --
CREATE TABLE `mycash`.`tipo`(
	`id` INT NOT NULL,
    `descricao` VARCHAR(255),
PRIMARY KEY (`id`));

select * from `despesa`;
select * from `receita`;


INSERT INTO `mycash`.`despesa` (
`VALOR`,
`TIPO`,
`DATA`,
`DESCRICAO`,
`FIXO`);

VALUES
("R$: 1010", "outros", "22-02", "takaro", 1);


CREATE TABLE `mycash`.`user`(
`id` int not null,
`username` varchar(255) not null,
`password` varchar(255) not null,
`admin` tinyint not null,
primary key (`id`)
);

ALTER TABLE  `mycash`.`user` change column `id` `id` int(11)
NOT NULL auto_increment, ADD UNIQUE INDEX `id_unique` (`id` ASC);


CREATE TABLE `mycash`.`user_information` (
`id` int not null,
`id_autenticacao` int not null,
`nome` varchar(255),
`telefone` int not null,
primary key (id)

);

ALTER TABLE `mycash`.`user_information` change column `id` `id` int(11)
NOT NULL auto_increment, ADD UNIQUE INDEX `id_unique` (`id` ASC);


select * from `mycash`.`user`;
