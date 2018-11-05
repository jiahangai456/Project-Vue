CREATE DATABASE jhMusic CHARSET=utf8;
USE jhMusic;
CREATE TABLE lbimg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(50)
);
INSERT INTO lbimg VALUES(
    NULL,"http://127.0.0.1:8000/img/1.jpg","图片1"
);
INSERT INTO lbimg VALUES(
    NULL,"http://127.0.0.1:8000/img/2.jpg","图片1"
);
INSERT INTO lbimg VALUES(
    NULL,"http://127.0.0.1:8000/img/3.jpg","图片1"
);
INSERT INTO lbimg VALUES(
    NULL,"http://127.0.0.1:8000/img/4.jpg","图片1"
);

CREATE TABLE tjimg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(50)
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj1.jpg","寻找逝去的童真|原创音乐"
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj2.jpg","玩出音乐，秀出自己的嘻哈"
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj6.jpg","纯音乐|曾经原来的自己"
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj5.jpg","远方有多远|音乐的深度"
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj8.jpg","听完这首歌,图片就是你的"
);
INSERT INTO tjimg VALUES(
    NULL,"http://127.0.0.1:8000/img/tj7.jpg","陌生人背后的猥琐大叔|电音"
);

CREATE TABLE mygd(
    id INT PRIMARY KEY AUTO_INCREMENT,
    mname VARCHAR(50),
    mdetail VARCHAR(255)
);
INSERT INTO mygd VALUES(NULL,"可不可以","张紫豪 · 可不可以");
INSERT INTO mygd VALUES(NULL,"爱笑的眼睛","林俊杰 · 她说 概念自选辑");
INSERT INTO mygd VALUES(NULL,"东西","林俊呈 · 东西");
INSERT INTO mygd VALUES(NULL,"输了你赢了全世界又如何（Live）","林俊杰 · 梦想声音第二季 第四期");
INSERT INTO mygd VALUES(NULL,"学猫叫","小潘潘/小峰峰 · 学猫叫");
INSERT INTO mygd VALUES(NULL,"陷阱","王北车 · 陷阱 · 《再见班花》 电影主题曲");
INSERT INTO mygd VALUES(NULL,"她说","林俊杰 · 她说 概念自选辑");