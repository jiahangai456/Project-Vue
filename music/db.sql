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