ALTER TABLE rooms
ADD COLUMN capacity INT NOT NULL DEFAULT 1;

ALTER TABLE rooms
MODIFY COLUMN capacity INT NOT NULL DEFAULT 2;

ALTER TABLE rooms
DROP COLUMN capacity;

CREATE TABLE scratch_notes (
  note VARCHAR(100)
);

DROP TABLE scratch_notes;

SELECT id, name
FROM rooms
ORDER BY id;

SELECT id, name
FROM rooms
WHERE name = 'Studio A';

SELECT *
FROM instruments;

DELETE FROM instruments
WHERE id = 1;