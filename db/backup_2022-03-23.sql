BEGIN TRANSACTION;
CREATE TABLE backup (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, data DATE NOT NULL);
INSERT INTO "backup" VALUES(4,'2022-03-20');
INSERT INTO "backup" VALUES(5,'2022-03-21');
INSERT INTO "backup" VALUES(6,'2022-03-22');
INSERT INTO "backup" VALUES(7,'2022-03-23');
CREATE TABLE chave (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, id_sala CHAR (3) NOT NULL UNIQUE, nome VARCHAR (50) NOT NULL, estado INTEGER NOT NULL DEFAULT (0));
INSERT INTO "chave" VALUES(5,'301','teste',0);
INSERT INTO "chave" VALUES(6,'302','Lab. Informatica 1',0);
INSERT INTO "chave" VALUES(10,'304','teste',0);
INSERT INTO "chave" VALUES(12,'303','em nenem',0);
INSERT INTO "chave" VALUES(13,'305','asudasiduhasodajsodajsdiasdarac',0);
INSERT INTO "chave" VALUES(14,'306','teste',0);
INSERT INTO "chave" VALUES(15,'307','teste',0);
INSERT INTO "chave" VALUES(16,'308','teste',0);
INSERT INTO "chave" VALUES(17,'309','.................................................',0);
INSERT INTO "chave" VALUES(19,'310','teste',0);
INSERT INTO "chave" VALUES(25,'300','teste',0);
INSERT INTO "chave" VALUES(26,'313','nome grande para ser muito grande tipo grande msm',0);
INSERT INTO "chave" VALUES(28,'123','asdasdasdasd',0);
INSERT INTO "chave" VALUES(29,'400','aaaaaaaaaaaaaa',0);
INSERT INTO "chave" VALUES(30,'401','bbbbbbbbbbbbbbbbbb',0);
INSERT INTO "chave" VALUES(31,'403','ccccccccccccccccccc',0);
INSERT INTO "chave" VALUES(32,'404','dddddddddddddd',0);
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
INSERT INTO "emprestimo" VALUES(3,'Anderson Salles','Anderson Salles','310','2022-03-19 08:48:27','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(4,'Diego Franco','Anderson Salles','315','2022-03-19 08:50:50','2022-03-19 09:12:33');
INSERT INTO "emprestimo" VALUES(5,'Diego Franco','Julia Linda','307','2022-03-19 16:45:47','2022-03-20 22:56:12');
INSERT INTO "emprestimo" VALUES(6,'Diego Franco','Enilda C�ceres','308','2022-03-19 16:45:52','2022-03-19 16:47:07');
INSERT INTO "emprestimo" VALUES(7,'Diego Franco','Tatiane Moura','309','2022-03-19 16:45:56','2022-03-19 16:47:20');
INSERT INTO "emprestimo" VALUES(8,'Enilda C�ceres','Tatiane Moura','310','2022-03-19 16:46:57','2022-03-19 16:47:25');
INSERT INTO "emprestimo" VALUES(9,'Tatiane Moura','Anderson Salles','311','2022-03-19 16:47:31','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(10,'Julia Linda','Diego Franco','302','2022-03-19 21:51:57','2022-03-20 23:08:36');
INSERT INTO "emprestimo" VALUES(11,'Julia Linda','Julia Linda','308','2022-03-19 21:58:10','2022-03-19 22:10:17');
INSERT INTO "emprestimo" VALUES(12,'Diego Franco','Anderson Salles','301','2022-03-20 22:51:23','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(13,'Diego Franco','Anderson Salles','307','2022-03-20 23:08:40','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(14,'yityure','gerqgqcergeqr','400','2022-03-22 20:12:26','2022-03-22 20:15:25');
INSERT INTO "emprestimo" VALUES(15,'yityure','integrante b','401','2022-03-22 20:12:29','2022-03-22 20:33:54');
INSERT INTO "emprestimo" VALUES(16,'yityure','integrante a','403','2022-03-22 20:12:37','2022-03-22 20:18:24');
INSERT INTO "emprestimo" VALUES(17,'yityure','integrante b','404','2022-03-22 20:12:41','2022-03-22 20:33:59');
INSERT INTO "emprestimo" VALUES(18,'gerqgqcergeqr','integrante a','407','2022-03-22 20:15:44','2022-03-22 20:18:17');
INSERT INTO "emprestimo" VALUES(19,'integrante a','Anderson Salles','403','2022-03-22 20:18:38','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(20,'integrante b','integrante b','401','2022-03-22 20:34:03','2022-03-22 20:44:03');
INSERT INTO "emprestimo" VALUES(21,'aosdhasod','integrante b','407','2022-03-22 20:37:15','2022-03-22 20:45:54');
INSERT INTO "emprestimo" VALUES(22,'integrante b','Anderson Salles','407','2022-03-22 20:46:01','2022-03-22 22:45:54');
INSERT INTO "emprestimo" VALUES(23,'integrante b','Diego Franco','301','2022-03-22 21:24:12','2022-03-22 21:52:48');
INSERT INTO "emprestimo" VALUES(24,'integrante b','Anderson Salles','302','2022-03-22 21:24:15','2022-03-22 21:53:34');
INSERT INTO "emprestimo" VALUES(25,'aosdhasod','Diego Franco','303','2022-03-22 21:24:45','2022-03-22 21:57:02');
INSERT INTO "emprestimo" VALUES(26,'aosdhasod','integrante b','304','2022-03-22 21:24:48','2022-03-22 22:15:47');
INSERT INTO "emprestimo" VALUES(27,'aosdhasod','integrante b','305','2022-03-22 22:08:52','2022-03-22 22:18:23');
INSERT INTO "emprestimo" VALUES(28,'aosdhasod','integrante b','304','2022-03-22 22:19:22','2022-03-22 22:19:52');
INSERT INTO "emprestimo" VALUES(29,'aosdhasod','integrante b','305','2022-03-22 22:19:25','2022-03-22 22:22:44');
INSERT INTO "emprestimo" VALUES(30,'aosdhasod','integrante b','304','2022-03-22 22:20:35','2022-03-22 22:20:48');
INSERT INTO "emprestimo" VALUES(31,'integrante b','aosdhasod','304','2022-03-22 22:23:47','2022-03-22 22:26:22');
INSERT INTO "emprestimo" VALUES(32,'integrante b','integrante b','303','2022-03-22 22:23:50','2022-03-22 22:25:19');
INSERT INTO "emprestimo" VALUES(33,'aosdhasod','integrante b','301','2022-03-22 22:26:46','2022-03-22 22:27:42');
INSERT INTO "emprestimo" VALUES(34,'aosdhasod','integrante b','302','2022-03-22 22:26:57','2022-03-22 22:27:14');
INSERT INTO "emprestimo" VALUES(35,'integrante b','Julia Linda','301','2022-03-22 22:30:01','2022-03-22 22:41:53');
INSERT INTO "emprestimo" VALUES(36,'integrante b','Julia Linda','302','2022-03-22 22:30:04','2022-03-22 22:38:45');
INSERT INTO "emprestimo" VALUES(37,'aosdhasod','Julia Linda','307','2022-03-22 22:32:33','2022-03-22 22:38:28');
INSERT INTO "emprestimo" VALUES(38,'aosdhasod','Julia Linda','308','2022-03-22 22:32:37','2022-03-22 22:36:49');
INSERT INTO "emprestimo" VALUES(39,'aosdhasod','aosdhasod','309','2022-03-22 22:32:45','2022-03-22 22:32:49');
INSERT INTO "emprestimo" VALUES(40,'Julia Linda','Julia Linda','310','2022-03-22 22:36:07','2022-03-22 22:36:11');
INSERT INTO "emprestimo" VALUES(41,'integrante b','Julia Linda','302','2022-03-22 22:39:30','2022-03-22 22:43:22');
INSERT INTO "emprestimo" VALUES(42,'integrante b','Julia Linda','303','2022-03-22 22:39:33','2022-03-22 22:45:50');
INSERT INTO "emprestimo" VALUES(43,'aosdhasod','Julia Linda','306','2022-03-22 22:39:47','2022-03-22 22:51:06');
INSERT INTO "emprestimo" VALUES(44,'aosdhasod','Julia Linda','307','2022-03-22 22:39:51','2022-03-22 23:03:40');
INSERT INTO "emprestimo" VALUES(45,'aosdhasod','Julia Linda','309','2022-03-22 22:39:54','2022-03-22 23:04:10');
INSERT INTO "emprestimo" VALUES(46,'aosdhasod','Julia Linda','310','2022-03-22 22:39:56','2022-03-22 23:04:00');
INSERT INTO "emprestimo" VALUES(47,'integrante b','Julia Linda','301','2022-03-22 22:44:34','2022-03-22 22:50:15');
INSERT INTO "emprestimo" VALUES(48,'integrante b','Julia Linda','302','2022-03-22 22:44:36','2022-03-22 22:51:45');
INSERT INTO "emprestimo" VALUES(49,'integrante b','integrante b','303','2022-03-22 22:49:17','2022-03-22 22:49:24');
INSERT INTO "emprestimo" VALUES(50,'integrante b','Julia Linda','301','2022-03-22 22:53:57','2022-03-22 22:54:42');
INSERT INTO "emprestimo" VALUES(51,'integrante b','Julia Linda','301','2022-03-22 22:56:47','2022-03-22 22:58:07');
INSERT INTO "emprestimo" VALUES(52,'integrante b','Julia Linda','301','2022-03-22 23:00:18','2022-03-22 23:00:41');
INSERT INTO "emprestimo" VALUES(53,'integrante b','Julia Linda','301','2022-03-22 23:02:08','2022-03-22 23:02:21');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('usuario',30);
INSERT INTO "sqlite_sequence" VALUES('emprestimo',53);
INSERT INTO "sqlite_sequence" VALUES('backup',7);
INSERT INTO "sqlite_sequence" VALUES('chave',47);
CREATE TABLE usuario (rowid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, id_usuario CHAR (4) NOT NULL UNIQUE, nome VARCHAR (50) NOT NULL, admin BOOLEAN NOT NULL DEFAULT (0), email VARCHAR (50) UNIQUE, senha VARCHAR (25), pendencia BOOLEAN DEFAULT (0) NOT NULL);
INSERT INTO "usuario" VALUES(1,'2006','Enilda C�ceres',1,'enilda@senac.br','qwerty',0);
INSERT INTO "usuario" VALUES(2,'1612','Tatiane Moura',1,'tatiane@senac.br','123456',0);
INSERT INTO "usuario" VALUES(4,'2818','Anderson Salles',1,'a@s.com','123123',0);
INSERT INTO "usuario" VALUES(5,'0264','Diego Franco',1,'d@f.com','123123',0);
INSERT INTO "usuario" VALUES(6,'3545','Julia Linda',0,NULL,NULL,0);
INSERT INTO "usuario" VALUES(27,'0000','integrante b',0,NULL,NULL,0);
INSERT INTO "usuario" VALUES(30,'0001','aosdhasod',0,NULL,NULL,0);
COMMIT;