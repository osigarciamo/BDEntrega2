use admision;

-- ADMINISTRADOR ---------------------------------------------------------------------------------------
create user 'administrador'@'localhost' identified by 'administrador';

grant all privileges on admision to 'administrador'@'localhost';

-- COORDINADOR ------------------------------------------------------------------------------------------
create user 'coordinadoradmisiones'@'localhost' identified by 'coordinador';

grant insert, select, update, delete on aspirante to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on inscripcion to 'coordinadoradmisiones'@'localhost';
grant select on programaacademico to 'coordinadoradmisiones'@'localhost';
grant select on facultad to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on pruebadeadmision to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on resultadopa to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on admitido to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on noadmitido to 'coordinadoradmisiones'@'localhost';

grant insert, select, update, delete on info_admitidos to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on info_noadmitidos to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on admitidos_porfacultad to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on admitidos_porprograma to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on descripcion_puntajes to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on conclusiones_admision to 'coordinadoradmisiones'@'localhost';
grant insert, select, update, delete on resumenprocadmis to 'coordinadoradmisiones'@'localhost';

-- ANAISTA -----------------------------------------------------------------------------------------------
create user 'analistadatos'@'localhost' identified by 'analista';

grant select on programaacademico to 'analistadatos'@'localhost';
grant select on facultad to 'analistadatos'@'localhost';
grant select on pruebadeadmision to 'analistadatos'@'localhost';
grant select on resultadopa to 'analistadatos'@'localhost';
grant select on admitido to 'analistadatos'@'localhost';
grant select on noadmitido to 'analistadatos'@'localhost';

grant select on info_admitidos to 'analistadatos'@'localhost';
grant select on info_noadmitidos to 'analistadatos'@'localhost';
grant insert, select, update, delete on admitidos_porfacultad to 'analistadatos'@'localhost';
grant insert, select, update, delete on admitidos_porprograma to 'analistadatos'@'localhost';
grant insert, select, update, delete on descripcion_puntajes to 'analistadatos'@'localhost';
grant select on conclusiones_admision to 'analistadatos'@'localhost';
grant select on resumenprocadmis to 'analistadatos'@'localhost';

-- INFORMACION Y DIFUSION ------------------------------------------------------

create user 'informacion'@'localhost' identified by 'informacion';

grant select on pruebadeadmision to 'informacion'@'localhost';
grant select on resultadopa to 'informacion'@'localhost';
grant select on admitido to 'informacion'@'localhost';
grant select on noadmitido to 'informacion'@'localhost';

grant select on descripcion_puntajes to 'informacion'@'localhost';
grant select on conclusiones_admision to 'informacion'@'localhost';
grant select on resumenprocadmis to 'informacion'@'localhost';

-- AUDITOR --------------------------------------------------------------------------------------
create user 'auditor'@'localhost' identified by 'auditor';

grant select, update on pruebadeadmision to 'auditor'@'localhost';
grant select, update on resultadopa to 'auditor'@'localhost';
grant insert, select, update, delete on admitido to 'auditor'@'localhost';
grant insert, select, update, delete on noadmitido to 'auditor'@'localhost';

grant insert, select, update, delete on info_admitidos to 'auditor'@'localhost';
grant insert, select, update, delete on info_noadmitidos to 'auditor'@'localhost';
grant insert, select, update, delete on admitidos_porfacultad to 'auditor'@'localhost';
grant insert, select, update, delete on admitidos_porprograma to 'auditor'@'localhost';
grant insert, select, update, delete on descripcion_puntajes to 'auditor'@'localhost';
grant insert, select, update, delete on conclusiones_admision to 'auditor'@'localhost';
grant insert, select, update, delete on resumenprocadmis to 'auditor'@'localhost';

-- ASPIRANTE ---------------------------------------------------------------------

create user 'aspirante'@'localhost' identified by 'aspirante';

grant select on aspirante to 'aspirante'@'localhost';
grant select on inscripcion to 'aspirante'@'localhost';
grant select on programaacademico to 'aspirante'@'localhost';
grant select on facultad to 'aspirante'@'localhost';
grant select on pruebadeadmision to 'aspirante'@'localhost';
grant select on resultadopa to 'aspirante'@'localhost';

grant select on admitidos_porfacultad to 'aspirante'@'localhost';
grant select on admitidos_porprograma to 'aspirante'@'localhost';
grant select on descripcion_puntajes to 'aspirante'@'localhost';
grant select on conclusiones_admision to 'aspirante'@'localhost';
