-- КУРЬЕР
insert into carrier(carrier_name, carrier_power, carrier_speed, carrier_fame)
values ('Nurgun',
        random() * 10.0 + 1,
        random() * 100.0 + 1,
        random() * 10.0 + 0);

insert into sector(pirate_scale, transitive)
values (random() * 1.0 + 0,
        true);

insert into planet (planet_name, sector_id)
values ('Земля',
        1);

insert into planet (planet_name, sector_id)
values ('Юпитер',
        1);

insert into factory (planet_id, factory_name, type_name)
values (2,
        'Zavod',
        'type2');
insert into factory (planet_id, factory_name, type_name)
values (3,
        'Zavod2',
        'type1');

insert into delivery_require(factory_buyer_id, factory_seller_id)
values (2,
        4);

insert into delivery_performance(result, delivery_require_id)
values (null,
        2);

insert into space_pirate(pirate_name, pirate_power, sector_id)
values ('Makson',
        random() * 10.0 + 1,
        1);

update delivery_performance set result = false where delivery_performance.delivery_performance_id = 2;
