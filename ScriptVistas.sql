use admision;

-- VISTA INFO_ADMITIDOS --------------------------------------------------------

create view Info_Admitidos as
select concat(asp_Nombre, concat(" ",asp_Apellido)) as NombreCompleto,
asp_TipoDoc as TipoDoc, aspirante.asp_DocumentoIdentidad as DI, pruebad_IdPruebaAdmison as ID_PA,
resultadopa.resPA_IdResultado as ResID, resPA_Puntuacion as Puntuacion
from aspirante inner join admitido on (admitido.asp_DocumentoIdentidad=aspirante.asp_DocumentoIdentidad)
inner join resultadopa on (resultadopa.resPA_IdResultado=admitido.resPA_IdResultado)
order by Puntuacion desc;

select * from Info_Admitidos;

-- VISTA INFO_NOADMITIDOS -------------------------------------------------------
create view Info_NoAdmitidos as
select concat(asp_Nombre, concat(" ",asp_Apellido)) as NombreCompleto,
asp_TipoDoc as TipoDoc, aspirante.asp_DocumentoIdentidad as DI, pruebad_IdPruebaAdmison as ID_PA,
resultadopa.resPA_IdResultado as ResID, resPA_Puntuacion as Puntuacion
from aspirante inner join noadmitido on (noadmitido.asp_DocumentoIdentidad=aspirante.asp_DocumentoIdentidad)
inner join resultadopa on (resultadopa.resPA_IdResultado=noadmitido.resPA_IdResultado)
order by Puntuacion desc;

select * from Info_NoAdmitidos;

-- VISTA ADMITIDOS_PORFACULTAD ------------------------------------------------------------
create view Admitidos_porFacultad as
select count(admitido.asp_DocumentoIdentidad) as NumAdmitidos, fac_NombreFacultad as Facultad
from admitido inner join
Inscripcion on (admitido.asp_DocumentoIdentidad=Inscripcion.asp_DocumentoIdentidad)
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico 
JOIN Facultad ON ProgramaAcademico.fac_IdFacultad = Facultad.fac_IdFacultad
group by Facultad
order by NumAdmitidos desc;

select * from Admitidos_porfacultad;

-- VISTA ADMITIDOS_PORPROGRAMA -----------------------------------------------------------
create view Admitidos_porPrograma as 
select count(admitido.asp_DocumentoIdentidad) as NumAdmitidos, pro_NombrePrograma as Programa
from admitido inner join Inscripcion 
on (admitido.asp_DocumentoIdentidad=Inscripcion.asp_DocumentoIdentidad)
INNER JOIN ProgramaAcademico 
ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico
group by Programa
order by NumAdmitidos desc;

select * from Admitidos_porPrograma;

-- VISTA DESCRIPCION_PUNTAJES -------------------------------------------------------
create view Descripcion_Puntajes as
select fac_NombreFacultad as Facultad, min(resPA_Puntuacion) as PuntajeMin, max(resPA_Puntuacion) as PuntajeMax,
avg(resPA_Puntuacion) as PuntajePromedio, std(resPA_Puntuacion) as SDPuntaje, 
std(resPA_Puntuacion)/ avg(resPA_Puntuacion) as CoefVar_Puntaje 
from Inscripcion
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico
Join resultadopa on (Inscripcion.asp_DocumentoIdentidad=resultadopa.asp_DocumentoIdentidad) 
JOIN Facultad ON ProgramaAcademico.fac_IdFacultad = Facultad.fac_IdFacultad
group by Facultad
order by Facultad desc;

select * from Descripcion_Puntajes;

-- VISTA CONCLUSIONES_ADMISION ----------------------------------------------------------
create view Conclusiones_Admision as
select 
asp_TipoDoc as TipoDoc, aspirante.asp_DocumentoIdentidad as DI,
resultadopa.pruebad_IdPruebaAdmision as ID_PA,
resPA_FechaPublicacion as FechaPublicacion,
resultadopa.resPA_IdResultado as ResID, resPA_Puntuacion as Puntuacion,
case when aspirante.asp_DocumentoIdentidad in (select asp_DocumentoIdentidad from admitido) then 'Admitido'
else 'NoAdmitido' end as Estado
from aspirante inner join resultadopa on (resultadopa.asp_DocumentoIdentidad=aspirante.asp_DocumentoIdentidad)
order by Puntuacion desc;

select * from  Conclusiones_Admision;

-- VISTA RESUMENPROCADMIS ---------------------------------------------------------------------
create view ResumenProcAdmis as
select aspirante.asp_DocumentoIdentidad as DI, asp_Nombre as Nombre, asp_Apellido as Apellido,
asp_Email as Email,ins_PINInscripcion as PINInscripcion, ins_Fecha as FechaInscripcion, ins_tipo as TipoInscripcion,
pro_NombrePrograma as Programa, fac_NombreFacultad as Facultad, resPA_IdResultado as IDPrueba,
resPA_Puntuacion as Puntuacion, resPA_FechaPublicacion as FechaPublicacion,
case when aspirante.asp_DocumentoIdentidad in (select asp_DocumentoIdentidad from admitido) then 'Admitido'
else 'NoAdmitido' end as Estado
from  aspirante inner join inscripcion 
on (aspirante.asp_DocumentoIdentidad=inscripcion.asp_DocumentoIdentidad) inner join
programaacademico on (inscripcion.pro_idProgramaAcademico=programaacademico.pro_idProgramaAcademico)
inner join facultad on (programaacademico.fac_IdFacultad=facultad.fac_IdFacultad)
inner join resultadopa on (resultadopa.asp_DocumentoIdentidad=aspirante.asp_DocumentoIdentidad)
order by Puntuacion desc;

select * from ResumenProcAdmis;