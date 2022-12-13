-- СОГЛАШЕНИЕ О ПОСТАВКЕ/ДОГОВОР ПОСТАВКИ
create table delivery_agreement
(
    delivery_agreement_id serial primary key,
    carrier_id            serial references carrier (carrier_id),
    delivery_price        integer not null,
    deal_price            integer not null
);
-- СЕКТОР
create table sector
(
    sector_id    serial primary key,
    pirate_scale numeric check ( pirate_scale >= 0::numeric and pirate_scale <= 1::numeric ) not null,
    transitive   boolean                                                                     not null
);
-- ПЛАНЕТА
create table planet
(
    planet_id   serial primary key,
    planet_name varchar(255) not null,
    sector_id   serial references sector (sector_id)
);
-- ЗАВОД
create table factory
(
    factory_id   serial primary key,
    planet_id    serial references planet (planet_id),
    factory_name varchar(255) not null,
    type_name    varchar(20)  not null unique
);

-- ТРЕБОВАНИЕ О ПОСТАВКЕ
create table delivery_require
(
    delivery_require_id serial primary key,
    factory_buyer_id    serial references factory (factory_id),
    factory_seller_id   serial references factory (factory_id)
);
-- ШНЫРЬ КУРЬЕР
create table carrier
(
    carrier_id              serial primary key,
    carrier_name            varchar(255) not null,
    carrier_power           real         not null,
    carrier_speed           real         not null,
    carrier_fame            real         not null,
    delivery_performance_id integer references delivery_require (delivery_require_id)
);

-- ПРОИЗВОДИТЕЛЬНОСТЬ ДОСТАВКИ
create table delivery_performance
(
    delivery_performance_id serial primary key,
    result                  boolean,
    delivery_require_id     serial references delivery_require (delivery_require_id)
);

-- ВЕЩЬ
create table item
(
    item_id    serial primary key,
    factory_id serial references factory (factory_id),
    item_name  varchar(255) not null
);
-- СДЕЛКА О ПОСТАВКЕ
create table delivery_require_deal
(
    dlvr_req_prdct_rel_id serial primary key,
    factory_buyer_id      serial references factory (factory_id) not null,
    factory_seller_id     serial references factory (factory_id) not null,
    item_id               serial references item (item_id),
    amount                integer                                not null
);
-- ПУТЬ
create table way
(
    way_id             serial primary key,
    delivery_agreement serial references delivery_agreement (delivery_agreement_id),
    sector_id          serial references sector (sector_id),
    way_order          integer not null
);
-- КОСМИЧЕСКИЙ ПИРАТ
create table space_pirate
(
    pirate_id    serial primary key,
    pirate_name  varchar(20) not null unique check ( length(pirate_name) > 2 ),
    pirate_power real        not null check ( pirate_power > 0 ),
    sector_id    serial references sector (sector_id)
);

create table sector_restrict_import
(
    sector_id serial primary key,
    item_id   serial references item (item_id)
);

create table sector_restrict_come
(
    sector_id            serial primary key,
    sector_restricted_id serial references sector (sector_id)
);

create table item_factory_production
(
    item_factory_rel_id serial primary key,
    factory_id          serial references factory (factory_id),
    item_id             serial references item (item_id),
    item_price_to_sell  real,
    item_amount_instock integer
);

create table sector_come_price
(
    sector_id_to       serial references sector (sector_id),
    sector_id_from     serial references sector (sector_id),
    sector_custom_duty real
);