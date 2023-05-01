-- --------------------------BORRADO TABLAS----------------------
DROP TABLE Admitido;
DROP TABLE Aspirante;
DROP TABLE Facultad;
DROP TABLE Inscripcion;
DROP TABLE NoAdmitido;
DROP TABLE ProgramaAcademico;
DROP TABLE PruebaDeAdmision;
DROP TABLE ResultadoPA;
-- -----------------------ACTUALIZACION DATOS--------------------------------
-- -Actualiza el Id del resultado del admitido
UPDATE Admitido SET resPA_IdResultado = 000000 WHERE resPA_IdResultado = 16623;
-- -Actualiza el Id de la prueba de admisión del admitido
UPDATE Admitido SET pruebad_IdPruebaAdmison = 99999 WHERE pruebad_IdPruebaAdmison = 12290;
-- -Actualiza el Id del Documento de Identidad del admitido
UPDATE Admitido SET asp_DocumentoIdentidad = 000000000000 WHERE asp_DocumentoIdentidad = 1001527123;
-- -Actualiza el tipo de Id del aspirante. Este es un cambio usual teniendo en cuenta el cambio de TI a CC-
UPDATE Aspirante SET asp_TipoDoc = "CC" WHERE asp_TipoDoc = "TI";
-- -Actualiza el Id del aspirante. Este es un cambio usual teniendo en cuenta el cambio de TI a CC-
UPDATE Aspirante SET asp_DocumentoIdentidad = 1002052539 WHERE asp_TipoDoc = 1001058081;
-- -Actualiza el Nombre del aspirante.
UPDATE Aspirante SET asp_Nombre = "Alisson " WHERE asp_Nombre  = "Alison";
-- -Actualiza el Apellido del aspirante.
UPDATE Aspirante SET asp_Apellido = "Martínez" WHERE asp_Apellido = "Martinez";
-- -Actualiza la Edad del aspirante.
UPDATE Aspirante SET asp_Edad = 18 WHERE asp_Edad = 17;
-- -Actualiza el Telefono Fijo del aspirante.
UPDATE Aspirante SET asp_TelefonoFijo = 7440330038 WHERE asp_TelefonoFijo = 7711641200;
-- -Actualiza el Telefono Celular del aspirante.
UPDATE Aspirante SET asp_TelefonoCelular = 3387297819 WHERE asp_TelefonoCelular = 3200351061;
-- -Actualiza el Correo Electrónico del aspirante.
UPDATE Aspirante SET asp_Email = "emilianoalvarez@gmail.com" WHERE asp_Email = "emiliano.alvarez@gmail.com";
-- -Actualiza el id de la Facultad.
UPDATE Facultad SET fac_IdFacultad = 0000 WHERE fac_IdFacultad = 2049 ;
-- -Actualiza el Nombre de la Facultad.
UPDATE Facultad SET fac_NombreFacultad ="Facultad de Ciencias Exactas"  WHERE fac_NombreFacultad = "Facultad de Ciencias " ;
-- -Actualiza el id de la inscripción.
UPDATE Inscripcion SET ins_PINInscripcion = 111111111  WHERE ins_PINInscripcion = 1108423600 ;
-- -Actualiza la fecha de la inscripción.
UPDATE Inscripcion SET ins_Fecha = "20-03-2023"  WHERE ins_Fecha = "19-03-2023" ;
-- -Actualiza el tipo de la inscripción.
UPDATE Inscripcion SET ins_tipo = "Normal"  WHERE ins_tipo = "PEAMA" ;
-- -Actualiza el id del programa académico de la inscripción.
UPDATE Inscripcion SET pro_idProgramaAcademico = 1111  WHERE pro_idProgramaAcademico = 2506 ;
-- -Actualiza el documento de identidad de la inscripción.
UPDATE Inscripcion SET asp_DocumentoIdentidad = 11111111111  WHERE asp_DocumentoIdentidad =  1001452844 ;
-- -Actualiza el Id del resultado del NO admitido
UPDATE NoAdmitido SET resPA_IdResultado = 000000 WHERE resPA_IdResultado = 18933;
-- -Actualiza el Id de la prueba de admisión del NO admitido
UPDATE NoAdmitido SET pruebad_IdPruebaAdmison = 99999 WHERE pruebad_IdPruebaAdmison = 12929;
-- -Actualiza el Id del Documento de Identidad del NO admitido
UPDATE NoAdmitido SET asp_DocumentoIdentidad = 000000000000 WHERE asp_DocumentoIdentidad = 1001452844;
-- -Actualiza el Id del Programa Académico
UPDATE ProgramaAcademico SET  pro_idProgramaAcademico = 000000000000 WHERE  pro_idProgramaAcademico = 2505;
-- -Actualiza el NOMBRE del Programa Académico
UPDATE ProgramaAcademico SET  pro_NombrePrograma = "Ingenieria Agronómica" WHERE  pro_NombrePrograma = "Ingenieria Agronomica";
-- -Actualiza la duración del Programa Académico
UPDATE ProgramaAcademico SET pro_DuracionProgramal = 11 WHERE pro_DuracionProgramal = 10;
-- -Actualiza los créditos exigidos del Programa Académico
UPDATE ProgramaAcademico SET pro_CreditosExigidosPrograma = 184 WHERE pro_CreditosExigidosPrograma = 180;
-- -Actualiza el código SINIES del Programa Académico
UPDATE ProgramaAcademico SET pro_codSINIES = 184 WHERE pro_codSINIES = 1;
-- -Actualiza el id de la Facultad del Programa Académico
UPDATE ProgramaAcademico SET fac_IdFacultad = 18400 WHERE fac_IdFacultad = 2728;
-- -Actualiza el id de la Prueba de Admisión
UPDATE PruebaDeAdmision SET pruebad_IdPruebaAdmision = 18400 WHERE pruebad_IdPruebaAdmision = 11023;
-- -Actualiza la Fecha de la Prueba de Admisión
UPDATE PruebaDeAdmision SET pruebad_FechaPruebaAdmision = "20-05-2023" WHERE pruebad_FechaPruebaAdmision  = "18-05-2023";
-- -Actualiza el lugar de la Prueba de Admisión
UPDATE PruebaDeAdmision SET pruebad_LugarPruebaAdmision = "Facultad de Ciencias" WHERE pruebad_LugarPruebaAdmision = "Ciencias"; 
-- -Actualiza el documento de identidad de la Prueba de Admisión
UPDATE PruebaDeAdmision SET asp_DocumentoIdentidad = 111111111111 WHERE asp_DocumentoIdentidad = 1001716611;
-- -Actualiza el Id del resultado de la prueba de admisión
UPDATE ResultadoPA SET resPA_IdResultado = 20036 WHERE resPA_IdResultado = 16036;
-- -Actualiza la puntuación del resultado de la prueba de admisión
UPDATE PruebaDeAdmision SET resPA_Puntuacion = 999 WHERE resPA_Puntuacion = 645;
-- -Actualiza la fecha de Publicación del resultado de la prueba de admisión
UPDATE PruebaDeAdmision SET resPA_FechaPublicacion = "01-01-1999" WHERE resPA_FechaPublicacion = "25-06-2023";
-- -Actualiza el id de la prueba de admisión del resultado de la prueba de admisión
UPDATE PruebaDeAdmision SET pruebad_IdPruebaAdmision = 18400 WHERE pruebad_IdPruebaAdmision = 14014;
-- -Actualiza el documento de identidad del resultado de la prueba de admisión
UPDATE PruebaDeAdmision SET asp_DocumentoIdentidad = 111111111111 WHERE asp_DocumentoIdentidad = 1002367348;