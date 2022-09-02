-- SELECT *
-- FROM authors
-- WHERE author_id IN (
--   SELECT author_id FROM books WHERE pages > 1000
-- );

SELECT * 
FROM invoice_line
WHERE invoice_id IN (
    SELECT invoice_id FROM invoice_line WHERE unit_price > .99
);

SELECT *
FROM playlist_track
WHERE playlist_id IN (
    SELECT playlist_id FROM playlist WHERE name = 'Music'
);

SELECT name
FROM track
WHERE track_id IN (
    SELECT track_id FROM playlist_track WHERE playlist_id = 5 
);

SELECT track_id, name
FROM track
WHERE genre_id IN (
    SELECT genre_id FROM genre WHERE name = 'Comedy'
);

SELECT track_id, name
FROM track
WHERE album_id IN (
    SELECT album_id FROM album WHERE title = 'Fireball'
);

SELECT track_id, name
FROM track
WHERE album_id IN (
    SELECT album_id FROM album
    WHERE artist_id IN (
        SELECT artist_id FROM artist WHERE name = 'Queen'
    )
);