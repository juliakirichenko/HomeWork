CREATE TABLE library (id INTEGER PRIMARY KEY, book_title VARCHAR(64), author TEXT, manufacture_year VARCHAR(8),
category VARCHAR(32), number_of_pages VARCHAR(16), tags TEXT);
INSERT INTO library (book_title, author, manufacture_year, category, number_of_pages, tags)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '1925', 'Tragedy', '256', 'Jazz Age, American Society, the riches, materialism'),
('War and Peace', 'Leo Tolstoy', '1869 ', 'Historical novel', '1300', 'Napoleon, invasion, Russia, Tsarist society'),
('Pride and Prejudice', 'Jane Austen', '1813', 'Romance novel', '480', 'Aristocratic society, marriage, moral rightness');
____________________________________________________________________________________________
CREATE TABLE book_description (id INTEGER PRIMARY KEY, category VARCHAR(32), tags TEXT);
INSERT INTO book_description (category, tags)
VALUES
('Tragedy', 'Jazz Age, American Society, the riches, materialism'),
('Historical novel', 'Napoleon, invasion, Russia, Tsarist society', ),
('Romance novel', 'Aristocratic society, marriage, moral rightness');
CREATE TABLE book_list (id INTEGER PRIMARY KEY, book_title VARCHAR(64), author TEXT, manufacture_year VARCHAR(8),
number_of_pages VARCHAR(16), book_description_id FOREIGN KEY book_description(id));
INSERT INTO book_list (book_title, author, manufacture_year, number_of_pages)
VALUES
('The Great Gatsb', 'F. Scott Fitzgerald', '1925', '256'),
('War and Peace', 'Leo Tolstoy', '1869', '1300'),
('Pride and Prejudice', 'Jane Austen', '1813', '480');
SELECT book_list.book_title, book_list.author, book_description.category FROM book_list JOIN book_description
ON book_list.book_list_id = book_description_id

