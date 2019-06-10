CREATE DATABASE IF NOT EXISTS  job;
USE job;
CREATE TABLE IF NOT EXISTS work_fields(id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
	name_worker VARCHAR(30) NOT NULL, 
    surname_worker VARCHAR(30) NOT NULL,
    post_worker VARCHAR(30) NOT NULL,
    salary_worker INT NOT NULL
);
INSERT INTO work_fields(name_worker, surname_worker, post_worker, salary_worker) 
VALUES ('Vlad', 'Ivanov', 'director', 200000);
INSERT INTO work_fields(name_worker, surname_worker, post_worker, salary_worker) 
VALUES ('Kate', 'Ivanova', 'cleaner', 15000);
INSERT INTO work_fields(name_worker, surname_worker, post_worker, salary_worker) 
VALUES ('Darya', 'Makarova', 'manager', 75000);
INSERT INTO work_fields(name_worker, surname_worker, post_worker, salary_worker) 
VALUES ('Igor', 'Lolov', 'accountant', 20500);
INSERT INTO work_fields(name_worker, surname_worker, post_worker, salary_worker) 
VALUES ('Danil', 'Dvachevskiy', 'programmer', 130600);

CREATE TABLE IF NOT EXISTS who_is_chief(id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
		chief VARCHAR(30)
);
INSERT INTO who_is_chief(chief) VALUES ('Vlad');
INSERT INTO who_is_chief(chief) VALUES ('Darya');

CREATE TABLE IF NOT EXISTS worker_chief(worker_id INT UNSIGNED NOT NULL, 
		chief_id INT UNSIGNED NOT NULL,
        FOREIGN KEY (worker_id) REFERENCES work_fields(id),
        FOREIGN KEY (chief_id) REFERENCES who_is_chief(id)
);
INSERT INTO worker_chief(worker_id, chief_id) VALUE (2, 1);
INSERT INTO worker_chief(worker_id, chief_id) VALUE (2, 2);
INSERT INTO worker_chief(worker_id, chief_id) VALUE (3, 1);
INSERT INTO worker_chief(worker_id, chief_id) VALUE (4, 1);
INSERT INTO worker_chief(worker_id, chief_id) VALUE (5, 1);


        