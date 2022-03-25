BEGIN TRANSACTION;
CREATE TABLE backup (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, data DATE NOT NULL);
INSERT INTO "backup" VALUES(4,'2022-03-20');
INSERT INTO "backup" VALUES(5,'2022-03-21');
INSERT INTO "backup" VALUES(6,'2022-03-22');
CREATE TABLE chave (
    rowid   INTEGER      PRIMARY KEY AUTOINCREMENT
                         NOT NULL,
    id_sala CHAR (3)     NOT NULL
                         UNIQUE,
    nome    VARCHAR (50) NOT NULL,
    estado  BOOLEAN      NOT NULL
                         DEFAULT (0) 
);
INSERT INTO "chave" VALUES(5,'301','teste',1);
INSERT INTO "chave" VALUES(6,'302','Lab. Informatica 1',0);
INSERT INTO "chave" VALUES(10,'304','teste',0);
INSERT INTO "chave" VALUES(12,'303','em nenem',0);
INSERT INTO "chave" VALUES(13,'305','asudasiduhasodajsodajsdiasdarac',0);
INSERT INTO "chave" VALUES(14,'306','teste',1);
INSERT INTO "chave" VALUES(15,'307','teste',1);
INSERT INTO "chave" VALUES(16,'308','teste',0);
INSERT INTO "chave" VALUES(17,'309','.................................................',0);
INSERT INTO "chave" VALUES(19,'310','teste',0);
INSERT INTO "chave" VALUES(20,'311','teste',0);
INSERT INTO "chave" VALUES(22,'312','teste',0);
INSERT INTO "chave" VALUES(25,'300','teste',0);
INSERT INTO "chave" VALUES(26,'313','nome grande para ser muito grande tipo grande msm',0);
INSERT INTO "chave" VALUES(28,'123','asdasdasdasd',0);
INSERT INTO "chave" VALUES(29,'400','aaaaaaaaaaaaaa',0);
INSERT INTO "chave" VALUES(30,'401','bbbbbbbbbbbbbbbbbb',0);
INSERT INTO "chave" VALUES(31,'403','ccccccccccccccccccc',0);
INSERT INTO "chave" VALUES(32,'404','dddddddddddddd',0);
INSERT INTO "chave" VALUES(33,'405','eeeeeeeeeeeeeeee',0);
INSERT INTO "chave" VALUES(34,'407','fffffffffffffffff',0);
INSERT INTO "chave" VALUES(35,'408','ggggggggggggggg',0);
INSERT INTO "chave" VALUES(36,'409','hhhhhhhhhhhhhhh',0);
INSERT INTO "chave" VALUES(37,'410','iiiiiiiiiiiiiiiiiiiiiiiiiiii',0);
INSERT INTO "chave" VALUES(38,'411','jjjjjjjjjjjjjjjjjjjjjjjj',0);
INSERT INTO "chave" VALUES(39,'412','kkkkkkkkkkkkkkkkkkkkk',0);
INSERT INTO "chave" VALUES(40,'413','llllllllllllllllllllllllllll',0);
INSERT INTO "chave" VALUES(41,'414','mmmmmmmmmmmmmmm',0);
INSERT INTO "chave" VALUES(42,'415','nnnnnnnnnnnnnnn',0);
INSERT INTO "chave" VALUES(43,'416','oooooooooooooo',0);
INSERT INTO "chave" VALUES(44,'417','qqqqqqqqqqqqq',0);
INSERT INTO "chave" VALUES(45,'418','rrrrrrrrrrrrrrrrrr',0);
INSERT INTO "chave" VALUES(46,'419','ssssssssssssssssssss',0);
INSERT INTO "chave" VALUES(47,'420','tttttttttttttttt',0);
CREATE TABLE emprestimo (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, usuario_ret VARCHAR (0, 50) NOT NULL, usuario_dev VARCHAR (0, 50), id_sala VARCHAR (3, 5) NOT NULL, data_hora_retirada DATETIME NOT NULL, data_hora_devolucao DATETIME);
INSERT INTO "emprestimo" VALUES(1,'Anderson Salles','Anderson Salles','307','2022-03-19 08:46:00','2022-03-19 09:12:28');
INSERT INTO "emprestimo" VALUES(2,'Anderson Salles','Anderson Salles','310','2022-03-19 08:48:27','2022-03-19 09:12:25');
INSERT INTO "emprestimo" VALUES(3,'Anderson Salles',NULL,'310','2022-03-19 08:48:27',NULL);
INSERT INTO "emprestimo" VALUES(4,'Diego Franco','Anderson Salles','315','2022-03-19 08:50:50','2022-03-19 09:12:33');
INSERT INTO "emprestimo" VALUES(5,'Diego Franco','Julia Linda','307','2022-03-19 16:45:47','2022-03-20 22:56:12');
INSERT INTO "emprestimo" VALUES(6,'Diego Franco','Enilda Cáceres','308','2022-03-19 16:45:52','2022-03-19 16:47:07');
INSERT INTO "emprestimo" VALUES(7,'Diego Franco','Tatiane Moura','309','2022-03-19 16:45:56','2022-03-19 16:47:20');
INSERT INTO "emprestimo" VALUES(8,'Enilda Cáceres','Tatiane Moura','310','2022-03-19 16:46:57','2022-03-19 16:47:25');
INSERT INTO "emprestimo" VALUES(9,'Tatiane Moura',NULL,'311','2022-03-19 16:47:31',NULL);
INSERT INTO "emprestimo" VALUES(10,'Julia Linda','Diego Franco','302','2022-03-19 21:51:57','2022-03-20 23:08:36');
INSERT INTO "emprestimo" VALUES(11,'Julia Linda','Julia Linda','308','2022-03-19 21:58:10','2022-03-19 22:10:17');
INSERT INTO "emprestimo" VALUES(12,'Diego Franco',NULL,'301','2022-03-20 22:51:23',NULL);
INSERT INTO "emprestimo" VALUES(13,'Diego Franco',NULL,'307','2022-03-20 23:08:40',NULL);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('chave',47);
INSERT INTO "sqlite_sequence" VALUES('usuario',8);
INSERT INTO "sqlite_sequence" VALUES('emprestimo',13);
INSERT INTO "sqlite_sequence" VALUES('backup',6);
CREATE TABLE usuario (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, id_usuario CHAR (4) NOT NULL UNIQUE, nome VARCHAR (50) NOT NULL, admin BOOLEAN NOT NULL DEFAULT (0), email VARCHAR (50) UNIQUE, senha VARCHAR (25), pendencia BOOLEAN DEFAULT (0) NOT NULL);
INSERT INTO "usuario" VALUES(1,'2006','Enilda Cáceres',1,'enilda@senac.br','qwerty',0);
INSERT INTO "usuario" VALUES(2,'1612','Tatiane Moura',1,'tatiane@senac.br','123456',1);
INSERT INTO "usuario" VALUES(4,'2818','Anderson Salles',1,'a@s.com','123123',1);
INSERT INTO "usuario" VALUES(5,'0264','Diego Franco',1,'d@f.com','123123',0);
INSERT INTO "usuario" VALUES(6,'3545','Julia Linda',0,NULL,NULL,0);
INSERT INTO "usuario" VALUES(7,'1231','qweqweqw',0,NULL,NULL,0);
INSERT INTO "usuario" VALUES(8,'4564','asdasdasdasd',0,NULL,NULL,0);
COMMIT;
