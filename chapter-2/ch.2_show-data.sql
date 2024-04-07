USE LibraryManagement;

SELECT 
    authors.author_id AS author_id,
    author_name,
    books.book_id AS book_id,
    title,
    publication_year,
    genres.genre_id AS genre_id,
    genre_name,
    borrowed_books.borrow_id AS borrow_id,
    borrowed_books.user_id AS borrowed_user_id,
    borrow_date,
    return_date,
    users.user_id AS user_id,
    username,
    email
FROM 
    authors 
JOIN 
    books 
    ON authors.author_id = books.author_id
JOIN 
    genres 
    ON books.genre_id = genres.genre_id
JOIN 
    borrowed_books
    ON books.book_id = borrowed_books.book_id
JOIN 
    users 
    ON borrowed_books.user_id = users.user_id;
