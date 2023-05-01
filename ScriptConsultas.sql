use admision;
-- -------------------------- 10 CONSULTAS COMPLEJAS --------------------------------
-- 1. Listar la información personal de los 10 puntajes más altos de las pruebas de admisión
SELECT resPA_Puntuacion, resPA_IdResultado , pruebad_IdPruebaAdmision, Aspirante.asp_DocumentoIdentidad, asp_TipoDoc, asp_Nombre, asp_Apellido, asp_Email 
FROM ResultadoPA INNER JOIN Aspirante ON ResultadoPA.asp_DocumentoIdentidad = Aspirante.asp_DocumentoIdentidad ORDER BY resPA_Puntuacion DESC LIMIT 10;

-- 2. Listar los puntajes de los aspirantes no admitidos.
SELECT NoAdmitido.resPA_IdResultado, pruebad_IdPruebaAdmison, NoAdmitido.asp_DocumentoIdentidad, resPA_Puntuacion
FROM NoAdmitido INNER JOIN ResultadoPA ON ResultadoPA.asp_DocumentoIdentidad = NoAdmitido.asp_DocumentoIdentidad ORDER BY resPA_Puntuacion DESC;

-- 3. Listar la información personal de los aspirantes no admitidos.
SELECT NoAdmitido.resPA_IdResultado, pruebad_IdPruebaAdmison, NoAdmitido.asp_DocumentoIdentidad, asp_TipoDoc, asp_Nombre, asp_Apellido, asp_Email 
FROM NoAdmitido INNER JOIN Aspirante ON Aspirante.asp_DocumentoIdentidad = NoAdmitido.asp_DocumentoIdentidad ORDER BY asp_Apellido ASC;

-- 4. Listar los programas académicos con mayor número de aspirantes.
SELECT  COUNT(*) TotalCount, Inscripcion.pro_idProgramaAcademico, ProgramaAcademico.pro_NombrePrograma FROM Inscripcion
INNER JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico GROUP BY Inscripcion.pro_idProgramaAcademico 
ORDER BY TotalCount desc;

-- 5. Listar el total de los admitidos a los programas de la Facultad de Ciencias
SELECT  COUNT(*) TotalCount, Facultad.fac_NombreFacultad, Inscripcion.pro_idProgramaAcademico, ProgramaAcademico.pro_NombrePrograma  FROM Inscripcion
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico 
JOIN Facultad ON ProgramaAcademico.fac_IdFacultad = Facultad.fac_IdFacultad
JOIN admitido on (admitido.asp_DocumentoIdentidad=inscripcion.asp_DocumentoIdentidad)
WHERE fac_NombreFacultad = "Facultad de Ciencias"
GROUP BY Inscripcion.pro_idProgramaAcademico, Facultad.fac_NombreFacultad 
ORDER BY TotalCount desc;

-- 6. Listar las facultades con mayor número de aspirantes.
select count(ins_PINInscripcion) as NumAspirantes, fac_NombreFacultad as Facultad
from Inscripcion
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico 
JOIN Facultad ON ProgramaAcademico.fac_IdFacultad = Facultad.fac_IdFacultad
group by Facultad
order by NumAspirantes desc;

-- 7. Listar los nombres de programa y su respectiva puntuación por documento de identidad.
SELECT pro_NombrePrograma, resPA_Puntuacion, Inscripcion.asp_DocumentoIdentidad
FROM ResultadoPA 
JOIN Inscripcion ON ResultadoPA.asp_DocumentoIdentidad = Inscripcion.asp_DocumentoIdentidad 
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico
ORDER BY resPA_Puntuacion DESC;

-- 8. Listar los estudiantes que presentaron su prueba en la Facultad de Ciencias y que son PEAMA
SELECT pruebad_IdPruebaAdmision, pruebad_LugarPruebaAdmision, Inscripcion.asp_DocumentoIdentidad, ins_tipo, Aspirante.asp_Nombre, Aspirante.asp_Apellido
FROM PruebaDeAdmision
JOIN Inscripcion ON PruebaDeAdmision.asp_DocumentoIdentidad = Inscripcion.asp_DocumentoIdentidad
JOIN Aspirante ON Inscripcion.asp_DocumentoIdentidad = Aspirante.asp_DocumentoIdentidad
WHERE pruebad_LugarPruebaAdmision = "Ciencias" AND ins_tipo = "PEAMA";

-- 9. Listar los estudiantes que tuvieron resultados mayores a 600 en su examen de admisión
SELECT resPA_Puntuacion, pruebad_IdPruebaAdmision, Aspirante.asp_DocumentoIdentidad, asp_TipoDoc,asp_Nombre, asp_Apellido, asp_TelefonoFijo,asp_TelefonoCelular,asp_Email 
FROM ResultadoPA
JOIN Aspirante ON ResultadoPA.asp_DocumentoIdentidad = Aspirante.asp_DocumentoIdentidad
WHERE resPA_Puntuacion>=600
ORDER BY resPA_Puntuacion DESC;

-- 10. Listar los ASPIRANTES QUE TUVIERON UN TIPO DE INSCIRPCION NORMAL AL PROGRAMA DE ESTADISTICA
SELECT pruebad_IdPruebaAdmision, pruebad_LugarPruebaAdmision, Inscripcion.asp_DocumentoIdentidad, ins_tipo, Aspirante.asp_Nombre, Aspirante.asp_Apellido
FROM PruebaDeAdmision
JOIN Inscripcion ON PruebaDeAdmision.asp_DocumentoIdentidad = Inscripcion.asp_DocumentoIdentidad
JOIN Aspirante ON Inscripcion.asp_DocumentoIdentidad = Aspirante.asp_DocumentoIdentidad
JOIN ProgramaAcademico ON Inscripcion.pro_idProgramaAcademico = ProgramaAcademico.pro_idProgramaAcademico
WHERE ins_tipo = "Normal" AND pro_NombrePrograma = "Estadistica";

-- -------------------------- CONSULTAS: SELECCION TABLAS COMPLETAS --------------------------------
SELECT * FROM Admitido;
SELECT * FROM Aspirante;
SELECT * FROM Facultad;
SELECT * FROM Inscripcion;
SELECT * FROM NoAdmitido;
SELECT * FROM ProgramaAcademico;
SELECT * FROM PruebaDeAdmision;
SELECT * FROM ResultadoPA;

-- -------------------------- CONSULTAS: SELECCION COLUMNAS  --------------------------------
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS ADMITIDO  --------------------------------
SELECT resPA_IdResultado FROM Admitido;
SELECT pruebad_IdPruebaAdmison FROM Admitido;
SELECT asp_DocumentoIdentidad FROM Admitido;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS ASPIRANTE  --------------------------------
SELECT asp_DocumentoIdentidad FROM Aspirante;
SELECT asp_TipoDoc FROM Aspirante;
SELECT asp_Nombre FROM Aspirante;
SELECT asp_Apellido FROM Aspirante;
SELECT asp_Edad FROM Aspirante;
SELECT asp_TelefonoFijo FROM Aspirante;
SELECT asp_TelefonoCelular FROM Aspirante;
SELECT asp_Email FROM Aspirante;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS FACULTAD  --------------------------------
SELECT fac_IdFacultad FROM Facultad;
SELECT fac_NombreFacultad FROM Facultad;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS INSCRIPCION  --------------------------------
SELECT ins_PINInscripcion FROM Inscripcion;
SELECT ins_Fecha FROM Inscripcion;
SELECT ins_tipo FROM Inscripcion;
SELECT pro_idProgramaAcademico FROM Inscripcion;
SELECT asp_DocumentoIdentidad FROM Inscripcion;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS NOADMITIDO  --------------------------------
SELECT resPA_IdResultado FROM NoAdmitido;
SELECT pruebad_IdPruebaAdmison FROM NoAdmitido;
SELECT asp_DocumentoIdentidad FROM NoAdmitido;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS PROGRAMAACADEMICO  --------------------------------
SELECT pro_idProgramaAcademico FROM ProgramaAcademico;
SELECT pro_NombrePrograma FROM ProgramaAcademico;
SELECT pro_DuracionProgramal FROM ProgramaAcademico;
SELECT pro_CreditosExigidosPrograma FROM ProgramaAcademico;
SELECT pro_codSINIES FROM ProgramaAcademico;
SELECT fac_IdFacultad FROM ProgramaAcademico;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS PRUEBADEADMISION  --------------------------------
SELECT pruebad_IdPruebaAdmision FROM PruebaDeAdmision;
SELECT pruebad_FechaPruebaAdmision FROM PruebaDeAdmision;
SELECT pruebad_LugarPruebaAdmision FROM PruebaDeAdmision;
SELECT asp_DocumentoIdentidad FROM PruebaDeAdmision;
-- -------------------------- CONSULTAS: SELECCIONA COLUMNAS RESULTADOPA  --------------------------------
SELECT resPA_IdResultado FROM ResultadoPA;
SELECT resPA_Puntuacion FROM ResultadoPA;
SELECT resPA_FechaPublicacion FROM ResultadoPA;
SELECT pruebad_IdPruebaAdmision FROM ResultadoPA;
SELECT asp_DocumentoIdentidad FROM ResultadoPA;

