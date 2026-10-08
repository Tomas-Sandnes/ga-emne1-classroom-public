INSERT INTO rooms (name)
VALUES ('Studio A');

INSERT INTO rooms (name)
VALUES ('Studio B'),
       ('Practice Room');

INSERT INTO instruments (name, purchase_price, acquired_on, room_id)
VALUES ('Piano', 18000.00, '2026-09-01', 1);

UPDATE instruments
SET purchase_price = purchase_price * 1.10,
    name = 'Grand piano'
WHERE id = 1;