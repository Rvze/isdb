-- СТЫЧКА МЕЖДУ КУРЬЕРОМ И ПИРАТОМ
-- ПРИ ПОРАЖЕНИИ КОГО-ТО ИЗ НИХ НАСТУПАЕТ СМЕРТЬ, А СИЛА ПЕРЕХОДИТ ПОБЕДИТЕЛЮ
create or replace procedure  skirmish_between_pirate_courier(_carrier_id integer, _space_pirate_id integer)
    language plpgsql
as
$$
declare
    _carrier_power           real;
    _space_pirate_power      real;
    _delivery_performance_id integer;
BEGIN
    select pirate_power from space_pirate where pirate_id = _space_pirate_id into _space_pirate_power;
    select carrier_power from carrier where carrier_id = _carrier_id into _carrier_power;
    select delivery_performance_id from carrier where carrier_id = _carrier_id into _delivery_performance_id;

    if _carrier_power < _space_pirate_power then
        delete from carrier where carrier.carrier_id = _carrier_id;
        update delivery_performance
        set result = false
        where delivery_performance.delivery_performance_id = _delivery_performance_id;
        update space_pirate set pirate_power = _carrier_power + _space_pirate_power where pirate_id = _space_pirate_id;
    else
        delete from space_pirate where space_pirate.pirate_id = _space_pirate_id;
        update delivery_performance
        set result = true
        where delivery_performance.delivery_performance_id = _delivery_performance_id;
        update carrier set carrier_power = _carrier_power + _space_pirate_power where carrier_id = _carrier_id;

    end if;
end;
$$
