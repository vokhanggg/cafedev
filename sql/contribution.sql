use cafedev;

-- the password hash is generated by BCrypt Calculator Generator(https://www.dailycred.com/article/bcrypt-calculator)
INSERT INTO USERS (id, username, password, first_name, last_name, email, phone_number, status) VALUES (1, 'user', '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', 'Fan', 'Jin', 'user@example.com', '+1234567890', 'ACTIVE');
INSERT INTO USERS (id, username, password, first_name, last_name, email, phone_number, status) VALUES (2, 'admin', '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', 'Jing', 'Xiao', 'admin@example.com', '+0987654321', 'ACTIVE');

update users set avatar = 'assets/man.png';

INSERT INTO ROLE (id, name) VALUES (1, 'ROLE_USER');
INSERT INTO ROLE (id, name) VALUES (2, 'ROLE_ADMIN');

INSERT INTO USER_ROLE (user_id, role_id) VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id) VALUES (2, 1);
INSERT INTO USER_ROLE (user_id, role_id) VALUES (2, 2);

insert into feed(id, create_date, description, file_path, owner_id) values (1, CURRENT_TIMESTAMP(), 'Người lạ ơi', '/upload/java-01.png', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (2, CURRENT_TIMESTAMP(), 'Nơi tình yêu bắt đầu', '/upload/java-02.jpg', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (3, CURRENT_TIMESTAMP(), 'Người Tình Mùa Đông', '/upload/java-01.png', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (4, CURRENT_TIMESTAMP(), 'Tình thôi xót xa', '/upload/java-02.jpg', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (5, CURRENT_TIMESTAMP(), 'Em gái mưa', '/upload/java-01.png', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (6, CURRENT_TIMESTAMP(), 'Giấc Mơ Chỉ Là Giấc Mơ', '/upload/java-02.jpg', 1);
insert into feed(id, create_date, description, file_path, owner_id) values (7, CURRENT_TIMESTAMP(), 'I love hotel califoniha', '/upload/java-01.png', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (8, CURRENT_TIMESTAMP(), 'Tình Khúc Vàng', '/upload/java-02.jpg', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (9, CURRENT_TIMESTAMP(), 'Tình Nhạt Phai', '/upload/java-02.jpg', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (10, CURRENT_TIMESTAMP(), 'Chỉ còn những mùa nhớ', '/upload/java-01.png', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (11, CURRENT_TIMESTAMP(), 'Thà rằng như thế', '/upload/java-02.jpg', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (12, CURRENT_TIMESTAMP(), 'I love hotel califoniha', '/upload/java-01.png', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (13, CURRENT_TIMESTAMP(), 'havana', '/upload/java-01.png', 2);
insert into feed(id, create_date, description, file_path, owner_id) values (14, CURRENT_TIMESTAMP(), 'depasito', '/upload/java-01.png', 2);

insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (1, 'Bài hát này thật hay', CURRENT_TIMESTAMP(), null, 1, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (2, 'Ca sỉ nữ hát hay quá', CURRENT_TIMESTAMP(), null, 1, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (3, 'Tuyệt vời, cảm thấy yêu đời', CURRENT_TIMESTAMP(), null, 1, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (4, 'Đà lạt thật đẹp', CURRENT_TIMESTAMP(), null, 1, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (5, 'Đồi núi thật thơ mọng và hữu tình', CURRENT_TIMESTAMP(), null, 2, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (6, 'Chiếc xe nhìn thú vị quá', CURRENT_TIMESTAMP(), null, 2, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (7, 'Hàng hiếm đó bạn', CURRENT_TIMESTAMP(), null, 2, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (8, 'Ừ chắc mắc tiền lắm', CURRENT_TIMESTAMP(), null, 2, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (9, 'Sợ có tiền cũng chẳn mua được', CURRENT_TIMESTAMP(), null, 3, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (10, 'Chợ Nhât Tảo bán có mà đầy', CURRENT_TIMESTAMP(), null, 3, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (11, 'BMW là chiếc xe đẹp nhất thế giới', CURRENT_TIMESTAMP(), null, 4, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (12, 'Ca Sỉ nam tên gì vậy mọi người', CURRENT_TIMESTAMP(), null, 4, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (13, 'Ca sỉ nam tên là Minh Nhựt', CURRENT_TIMESTAMP(), null, 4, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (14, 'I love him so much!', CURRENT_TIMESTAMP(), null, 5, 2);
#subcomment
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (15, 'Mình thích mercedes', CURRENT_TIMESTAMP(), 1, 1, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (16, 'Toyota Inova hân hạnh tài trợ chương trình này', CURRENT_TIMESTAMP(), 1, 1, 1);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (17, 'O Viet Nam Toyota là so 1', CURRENT_TIMESTAMP(), 1, 1, 2);
insert into comment(id, content, create_date, parent_id, feed_id, owner_id) values (18, 'Chính xác, toyota không đối thủ', CURRENT_TIMESTAMP(), 2, 1, 2);
#topic
insert into topic(id, name, create_date, order_id) values (1, 'JAVA PROGRAMMING', CURRENT_TIMESTAMP(), 1);
insert into topic(id, name, create_date, order_id) values (2, 'FONT END', CURRENT_TIMESTAMP(), 2);
insert into topic(id, name, create_date, order_id) values (3, 'DATABASE', CURRENT_TIMESTAMP(), 3);
#article
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (1, 'Java 1', 'Java can ban 1', 'qqqqqqqqqq', CURRENT_TIMESTAMP(), 1, 1);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (2, 'Java 2', 'Java can ban 2', 'wwwwwwww', CURRENT_TIMESTAMP(), 1, 1);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (3, 'Java 3', 'Java can ban 3', 'eeeeeeeeeee', CURRENT_TIMESTAMP(), 1, 1);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (4, 'Java 4', 'Java can ban 4', 'rrrrrrrrrrrrrrrrrr', CURRENT_TIMESTAMP(), 1, 1);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (5, 'Java 5', 'Java can ban 5', 'ttttttttttttttttttttt', CURRENT_TIMESTAMP(), 1, 1);

insert into article(id, name, description, content, create_date, topic_id, owner_id) values (6, 'Fontend 1', 'Front end can ban 1', 'uuuuuuuuuuu', CURRENT_TIMESTAMP(), 2, 2);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (7, 'Front end 2', 'Front end can ban 2', 'iiiiiiiiiiiiiiiiiiiiiiii', CURRENT_TIMESTAMP(), 2, 2);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (8, 'Front end 3', 'Front end can ban 3', 'oooooooooooo', CURRENT_TIMESTAMP(), 2, 2);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (9, 'Front end 4', 'Front end can ban 4', 'pppppppppppp', CURRENT_TIMESTAMP(), 2, 2);
insert into article(id, name, description, content, create_date, topic_id, owner_id) values (10, 'Front end 5', 'Front end can ban 5', 'aaaaaaaaaaa', CURRENT_TIMESTAMP(), 2, 2);

insert into category(id,name, parent_id) values (1,'category-1', null);
insert into category(id,name, parent_id) values (2,'category-2', null);
insert into category(id,name, parent_id) values (3,'category-3', null);

insert into category(id,name, parent_id) values (4,'01-sub-category-1', 1);
insert into category(id,name, parent_id) values (5,'01-sub-category-2', 1);
insert into category(id,name, parent_id) values (6,'01-sub-category-3', 1);

insert into category(id,name, parent_id) values (7,'02-sub-category-1', 2);
insert into category(id,name, parent_id) values (8,'02-sub-category-2', 2);
insert into category(id,name, parent_id) values (9,'02-sub-category-3', 2);

insert into category(id,name, parent_id) values (10,'03-sub-category-1', 3);
insert into category(id,name, parent_id) values (11,'03-sub-category-2', 3);
insert into category(id,name, parent_id) values (12,'03-sub-category-3', 3);

insert into category(id,name, parent_id) values (13,'011-sub-category-1', 4);
insert into category(id,name, parent_id) values (14,'012-sub-category-2', 4);
insert into category(id,name, parent_id) values (15,'021-sub-category-3', 7);
insert into category(id,name, parent_id) values (16,'022-sub-category-1', 7);
insert into category(id,name, parent_id) values (17,'031-sub-category-2', 10);
insert into category(id,name, parent_id) values (18,'032-sub-category-3', 10);

insert into assignment(id, title, content) values (1, "Assignment 01", "Tim so lon nhat trong mang mot chieu");
insert into assignment(id, title, content) values (2, "Assignment 02", "Sap mang theo thu tu tang dan");
insert into assignment(id, title, content) values (3, "Assignment 03", "Kiem tra chu so nguyen duong (n) co phai la so nguyen to");
insert into assignment(id, title, content) values (4, "Assignment 04", "Kiem tra chu so nguyen duong (n) co phai la so hoan hao");
insert into assignment(id, title, content) values (5, "Assignment 05", "Kiem tra chu so nguyen duong (n) co phai la so chinh phuong");
insert into assignment(id, title, content) values (6, "Assignment 06", "Kiem tra chu so nguyen duong (n) co phai la so chan");

insert into assignment_user(user_id, assignment_id) values (1,1);
insert into assignment_user(user_id, assignment_id) values (1,2);
insert into assignment_user(user_id, assignment_id) values (1,3);
insert into assignment_user(user_id, assignment_id) values (1,4);
insert into assignment_user(user_id, assignment_id) values (1,5);
insert into assignment_user(user_id, assignment_id) values (2,2);
insert into assignment_user(user_id, assignment_id) values (2,3);
insert into assignment_user(user_id, assignment_id) values (2,4);
insert into assignment_user(user_id, assignment_id) values (2,5);
insert into assignment_user(user_id, assignment_id) values (2,6);

insert into examination(id, title, content) values (1, "Examination 01", "Tim so lon nhat trong mang mot chieu");
insert into examination(id, title, content) values (2, "Examination 02", "Sap mang theo thu tu tang dan");
insert into examination(id, title, content) values (3, "Examination 03", "Kiem tra chu so nguyen duong (n) co phai la so nguyen to");
insert into examination(id, title, content) values (4, "Examination 04", "Kiem tra chu so nguyen duong (n) co phai la so hoan hao");
insert into examination(id, title, content) values (5, "Examination 05", "Kiem tra chu so nguyen duong (n) co phai la so chinh phuong");
insert into examination(id, title, content) values (6, "Examination 06", "Kiem tra chu so nguyen duong (n) co phai la so cha");

insert into examination_user(user_id, examination_id) values (1, 1);
insert into examination_user(user_id, examination_id) values (1, 2);
insert into examination_user(user_id, examination_id) values (1, 3);
insert into examination_user(user_id, examination_id) values (1, 4);
insert into examination_user(user_id, examination_id) values (1, 5);
insert into examination_user(user_id, examination_id) values (2, 2);
insert into examination_user(user_id, examination_id) values (2, 3);
insert into examination_user(user_id, examination_id) values (2, 4);
insert into examination_user(user_id, examination_id) values (2, 5);
insert into examination_user(user_id, examination_id) values (2, 6);

update examination_user
set status = 1;

insert into notify(id,content,status,type,receiver,sender) values (1,"Khang Vo vua danh dau ban trong mot binh luan","UNREAD","MESSAGE",1,2);
insert into notify(id,content,status,type,receiver,sender) values (2,"Son Vo vua danh dau ban trong mot binh luan","UNREAD","TAGED",2,1);
insert into notify(id,content,status,type,receiver,sender) values (3,"Nhat Vo vua danh dau ban trong mot binh luan","UNREAD","MESSAGE",1,2);
insert into notify(id,content,status,type,receiver,sender) values (4,"Long Vo vua danh dau ban trong mot binh luan","UNREAD","TAGED",2,1);
insert into notify(id,content,status,type,receiver,sender) values (5,"Khang Vo vua gui tin nhan cho ban","UNREAD","MESSAGE",1,2);
insert into notify(id,content,status,type,receiver,sender) values (6,"Hong Nguyen vua danh dau ban trong mot binh luan","UNREAD","TAGED",1,2);
insert into notify(id,content,status,type,receiver,sender) values (7,"Khang Vo vua gui tin nhan cho ban","UNREAD","MESSAGE",1,2);






