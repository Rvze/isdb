select r.researcher_name
from researcher r
         join space_suit_properties ssp
              on ssp.space_suit_id = r.space_suit_id
where ssp.space_suit_properties_power = (select max(space_suit_properties_power)
                                         from space_suit_properties);


select p.planet_name
from planet p
         join planet_properties pp
              on pp.planet_properties_id = p.planet_properties_id
where pp.planet_properties_power = (select max(planet_properties_power)
                                    from planet_properties);

select danger_name
from danger
         join planet_danger pd on
    danger.danger_id = pd.danger_id
         join planet_properties pp on danger.danger_id = pp.danger_type
where pp.planet_properties_power = (select(max(planet_properties_power)) from planet_properties)

