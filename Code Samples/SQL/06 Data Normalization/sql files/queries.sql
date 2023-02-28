SELECT
  owner_name,
  pet_name
FROM
  owners
  INNER JOIN pet_names ON owners.id = pet_names.owner_id;

SELECT
  owners.owner_name,
  pet_names_new.pet_name,
  pet_names_new.type,
  service.service_type
FROM
  owners
  INNER JOIN pet_names_new ON owners.ID = pet_names_new.owner_id
  INNER JOIN service ON service.id = pet_names_new.service_id;