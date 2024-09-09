-- *** The Lost Letter ***

-- Anneke: 900 Somerville Avenue.
-- special letter, friend: Varsha
-- Varsha: 2 Finnegan Street, uptown.
-- congratulatory note
select id, address, type
from addresses
where address = '900 Somerville Avenue';

-- id: 432 | 900 Somerville Avenue | Residential


select id, contents, from_address_id, to_address_id
from packages
where from_address_id = 432;
 --- id  |       contents        | from_address_id | to_address_id |
-- | 384  | Congratulatory letter | 432             | 854           |
-- | 2437 | String                | 432             | 484           |
-- | 3529 | Letter opener         | 432             | 585           |
-- | 5436 | Whiteboard            | 432             | 4984

-- Interested in: -- | 384  | Congratulatory letter | 432             | 854           |

select p.id, contents, driver_id, package_id, address_id, action
from packages p join scans on scans.package_id = p.id
where p.id = 384;
-- 384 | Congratulatory letter | 1         | 384        | 432        | Pick
-- 384 | Congratulatory letter | 1         | 384        | 854        | Drop

select id, address, type
from addresses
where id = 854;
-- 854 | 2 Finnigan Street | Residential

-- *** The Devious Delivery ***
-- town of Fiftyville
-- certain box
--  grown wings and flown away.

select id, contents, from_address_id
from packages
where from_address_id is null;

-- 5098 | Duck debugger | NULL
select id, driver_id, package_id, address_id, action, timestamp
from scans
where package_id = 5098;
-- 30123 | 10        | 5098       | 50         | Pick   | 2023-10-24 08:40:16.246648
-- 30140 | 10        | 5098       | 348        | Drop   | 2023-10-24 10:08:55.610754 

-- *** The Forgotten Gift ***
-- mystery gift
-- from: 109 Tileston Street
-- to: 728 Maple Place
-- time:  two weeks ago.
-- delivery date has passed by seven whole days
select id, address, type
from addresses
where address = '109 Tileston Street';
--  9873 | 109 Tileston Street | Residential

select id, contents, from_address_id, to_address_id
from packages
where from_address_id = 9873;
-- 9523 | Flowers  | 9873            | 4983

select p.id, package_id, driver_id, address_id, action, timestamp
from packages p left join scans s on s.package_id = p.id
 where p.id = 9523;

 -- 9523 | 9523       | 11        | 9873       | Pick   | 2023-08-16 21:41:43.219831
 -- 9523 | 9523       | 11        | 7432       | Drop   | 2023-08-17 03:31:36.856889
 -- 9523 | 9523       | 17        | 7432       | Pick   | 2023-08-23 19:41:47.913410
select driver_id, package_id, address_id, action, timestamp
from scans
where package_id = 9523;

-- 11        | 9523       | 9873       | Pick   | 2023-08-16 21:41:43.219831
-- 11        | 9523       | 7432       | Drop   | 2023-08-17 03:31:36.856889
-- 17        | 9523       | 7432       | Pick   | 2023-08-23 19:41:47.913410

select distinct name, driver_id
from scans join drivers on drivers.id = scans.driver_id
where driver_id = 11 or driver_id = 17
-- Maegan, Mikel
