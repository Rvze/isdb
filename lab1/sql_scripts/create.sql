create table danger
(
    danger_id   serial primary key,
    danger_name varchar(255) not null
);



create table planet_properties
(
    planet_properties_id    serial primary key,
    danger_type             integer references danger,
    planet_properties_power double precision not null check ( planet_properties_power > 0 )
);

create table planet
(
    planet_id            serial primary key,
    planet_properties_id bigint references planet_properties,
    planet_name          varchar(255) not null
);
create table space_suit
(
    space_suit_id   serial primary key,
    space_suit_name varchar(255)     not null,
    cost            double precision not null,
    planet_id       bigint references planet
);



create table planet_danger
(
    planet_id        integer references planet,
    danger_id        integer references danger,
    primary key (planet_id, danger_id)
);



create table researcher
(
    researcher_id   serial primary key,
    researcher_name varchar(255) not null,
    space_suit_id   bigint references space_suit
);
create table space_suit_properties
(
    space_suit_properties_id    serial primary key,
    saves_from_the_danger_type  integer references danger,
    space_suit_id               bigint references space_suit,
    space_suit_properties_power double precision not null check ( space_suit_properties_power > 0 )
);
