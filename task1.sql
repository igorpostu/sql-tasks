-- @block
CREATE TABLE members(
    memid INT,
    surname VARCHAR(200),
    firstname VARCHAR(200),
    address VARCHAR(300),
    zipcode INT,
    telephone VARCHAR(20),
    recommendedby INT,
    joindate TIMESTAMP,
    PRIMARY KEY (memid),
    FOREIGN KEY (recommendedby) REFERENCES members(memid)
);

-- @block
CREATE TABLE facilities(
    facid INT,
    name VARCHAR(100),
    membercost NUMERIC,
    guestcost NUMERIC,
    initialoutlay NUMERIC,
    monthlymaintenance NUMERIC,
    PRIMARY KEY (facid)
);

-- @block
CREATE TABLE bookings(
    bookid INT,
    facid INT,
    memid INT,
    starttime TIMESTAMP,
    slots INT,
    PRIMARY KEY (bookid),
    FOREIGN KEY (facid) REFERENCES facilities(facid),
    FOREIGN KEY (memid) REFERENCES members(memid)
);