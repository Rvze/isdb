insert into danger(danger_name)
values ('radiation'),
       ('pressure'),
       ('toxic');
insert into planet_properties(danger_type, planet_properties_power)
values (1, 23),
       (2, 20),
       (3, 19);


insert into planet(planet_properties_id, planet_name)
values (1, 'abas'),
       (2, 'jupyter'),
       (3, 'mars');

insert into space_suit(space_suit_name, cost, planet_id)
values ('MK-V', '500', 1),
       ('MK-2', '1000', 3),
       ('AA-V', '700', 2);

insert into space_suit_properties(saves_from_the_danger_type, space_suit_id, space_suit_properties_power)
values (1, 1, 23.0),
       (2, 2, 24.0),
       (3, 3, 25.0);



insert into planet_danger(planet_id, danger_id)
values (1, 1),
       (2, 2),
       (3, 3);



insert into researcher(researcher_name, space_suit_id)
values ('Nurgun Makarov', 1),
       ('Kolya Tsypandin', 2),
       ('Maksim Panchuk', 3);
