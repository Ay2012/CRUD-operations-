USE uni;
-- Drop table if exists people;
CREATE TABLE IF NOT EXISTS uni.people (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    phone_no BIGINT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

ALTER TABLE uni.people AUTO_INCREMENT = 100;

INSERT IGNORE INTO uni.people (first_name, last_name, phone_no, email) VALUES
("Anil", "Ambani", 8800621076, "anil123@xyz.com"),
("Akash", "", 9990567666, "akash_amb@monster.com"),
("Muskeh", "Singh", 8888111223, "muk_sh229@gmail.com"),
("Nita", "", 5454637896, "nita_k@hotmail.com");
update uni.people set first_name="Tina" , last_name="Munim", email="munim1234@mobster.com" where user_id=104;
update uni.people set first_name="Ayush" where user_id=101;
update uni.people set last_name="Gaur" where user_id=101;
update uni.people set first_name="Lisa" where user_id=105;
update uni.people set phone_no=9988346571 where user_id=104;
update uni.people set phone_no=7814899012 where user_id=105;
delete from uni.people where user_id=103;
delete from uni.people where user_id=105;
delete from uni.people where user_id=100;
delete from uni.people where user_id=100;
SELECT * FROM uni.people;
