CREATE TABLE phonebook (id INTEGER PRIMARY KEY, first_name VARCHAR(64), last_name VARCHAR(32), company VARCHAR(64),
job_title VARCHAR(32), phone_number TEXT, email TEXT);
INSERT INTO phonebook(first_name, last_name, company, job_title, phone_number, email)
VALUES
('Anna', 'Ermak', 'Branch', 'manager', '380632376345', 'yermakanna@gmail.com'),
('Vlad', 'Petrov', 'PM', 'accounter', '380502376345', 'vladpetrov@gmail.com'),
('Max', 'Leonov', 'Unit City', 'CEO', '380931265347', 'maxleonov@gmail.com');
____________________________________________________________________________________________
CREATE TABLE company (id INTEGER PRIMARY KEY, title VARCHAR(32), description TEXT);
INSERT INTO company (title, description)
VALUES
('Branch', 'coworking'),
('PMI', 'manufacturing company', ),
('Unit City', 'coworking');
CREATE TABLE employee (id INTEGER PRIMARY KEY, first_name VARCHAR(32), last_name VARCHAR(32),job_title VARCHAR(32),
phone_number TEXT, company_id FOREIGN KEY company(id));
INSERT INTO employee (first_name, last_name, job_title, phone_number)
VALUES
('Anna', 'Ermak', 'manager', '380632376345'),
('Vlad', 'Petrov', 'accounter', '380502376345'),
('Max', 'Leonov', 'CEO', '380931265347');
SELECT employee.first_name, employee.last_name, company.title FROM employee JOIN company ON employee.company_id = company_id

