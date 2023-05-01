
create schema Admision;
use Admision;
-- -------------------------- RELACION FACULTAD --------------------------------------------------------------------------
CREATE TABLE Facultad (
  fac_IdFacultad INT NOT NULL PRIMARY KEY,
  fac_NombreFacultad CHAR(100) NOT NULL
	);
    
insert into facultad values(2049,"Facultad de Artes");
insert into facultad values(2050,"Facultad de Ciencias");
insert into facultad values(2051,"Facultad de Ciencias Economicas");
insert into facultad values(2052,"Facultad de Ciencias Humanas");
insert into facultad values(2053,"Facultad de Derecho, Ciencias Politicas y Sociales");
insert into facultad values(2054,"Facultad de Enfermeria");
insert into facultad values(2055,"Facultad de Ingenieria");
insert into facultad values(2056,"Facultad de Medicina");
insert into facultad values(2057,"Facultad de Medicina Veterinaria y Zootecnia");
insert into facultad values(2058,"Facultad de Odontologia");
insert into facultad values(2728,"Facultad de Ciencias Agrarias");


-- ---------------------------RELACION PROGRAMA ACADEMICO --------------------------------------------------------------------
CREATE TABLE ProgramaAcademico (
  pro_idProgramaAcademico INT NOT NULL PRIMARY KEY,
  pro_NombrePrograma VARCHAR(45) NOT NULL,
  pro_DuracionProgramal INT NOT NULL,
  pro_CreditosExigidosPrograma INT NOT NULL,
  pro_codSINIES int NOT NULL,
  fac_IdFacultad INT NOT NULL
    );
    
insert into programaacademico values(2506,"Arquitectura",10,179,30,2049);
insert into programaacademico values(2507,"Artes plasticas",10,166,2497,2049);
insert into programaacademico values(2508,"Cine y Television",8,158,6,2049);
insert into programaacademico values(2509,"Diseno Grafico",9,148,4,2049);
insert into programaacademico values(2510,"Diseno Industrial",10,169,5,2049);
insert into programaacademico values(2511,"Musica",10,171,3100,2049);
insert into programaacademico values(2512,"Musica Instrumental",10,183,3101,2049);
insert into programaacademico values(2513,"Biologia",10,163,31,2050);
insert into programaacademico values(2933,"Ciencias de la Computacion",9,139,106341,2050);
insert into programaacademico values(2514,"Estadistica",9,141,32,2050);
insert into programaacademico values(2515,"Farmacia",10,185,37,2050);
insert into programaacademico values(2516,"Fisica",10,160,33,2050);
insert into programaacademico values(2517,"Geologia",10,166,34,2050);
insert into programaacademico values(2518,"Matematicas",10,140,35,2050);
insert into programaacademico values(2519,"Quimica",10,160,36,2050);
insert into programaacademico values(2520,"Administracion de Empresas",10,164,19,2051);
insert into programaacademico values(2521,"Contaduria Publica",10,167,16895,2051);
insert into programaacademico values(2522,"Economia",9,151,18,2051);
insert into programaacademico values(2523,"Antropologia",8,122,13,2052);
insert into programaacademico values(2526,"Espanol y Filologia Clasica",8,125,54036,2052);
insert into programaacademico values(2534,"Estudios Literarios",8,119,106654,2052);
insert into programaacademico values(2524,"Filologia e Idiomas Aleman",9,140,23,2052);
insert into programaacademico values(2525,"Filologia e Idiomas Frances",9,140,23,2052);
insert into programaacademico values(2527,"Filologia e Idiomas Ingles",9,140,23,2052);
insert into programaacademico values(2530,"Filosofia",8,122,20,2052);
insert into programaacademico values(2531,"Geografia",8,128,3103,2052);
insert into programaacademico values(2532,"Historia",8,121,21,2052);
insert into programaacademico values(2837,"Lingui­stica",8,123,16938,2052);
insert into programaacademico values(2535,"Psicologia",10,150,14,2052);
insert into programaacademico values(2536,"Sociologia",8,131,16,2052);
insert into programaacademico values(2537,"Trabajo Social",10,148,15,2052);
insert into programaacademico values(2538,"Ciencia Politica",8,126,3140,2053);
insert into programaacademico values(2539,"Derecho",10,180,17,2053);
insert into programaacademico values(2540,"Enfermeria",10,161,7,2054);
insert into programaacademico values(2541,"Ingenieria Agricola",10,180,24,2055);
insert into programaacademico values(2542,"Ingenieria Civil",10,180,25,2055);
insert into programaacademico values(2879,"Ingenieria de Sistemas y Computacion",10,165,106661,2055);
insert into programaacademico values(2544,"Ingenieria Electrica",10,167,27,2055);
insert into programaacademico values(2545,"Ingenieria Electronica",10,172,16941,2055);
insert into programaacademico values(2546,"Ingenieria Industrial",10,168,16940,2055);
insert into programaacademico values(2547,"Ingenieria Mecanica",10,180,28,2055);
insert into programaacademico values(2548,"Ingenieria Mecatronica",10,179,16939,2055);
insert into programaacademico values(2549,"Ingenieria Quimica",10,180,29,2055);
insert into programaacademico values(2550,"Fisioterapia",10,166,8,2056);
insert into programaacademico values(2551,"Fonoaudiologia",10,155,3102,2056);
insert into programaacademico values(2552,"Medicina",12,256,9,2056);
insert into programaacademico values(2553,"Nutricion y Dietetica",10,158,10,2056);
insert into programaacademico values(2554,"Terapia Ocupacional",10,160,12,2056);
insert into programaacademico values(2555,"Medicina Veterinaria",10,209,2,2057);
insert into programaacademico values(2556,"Zootecnia",10,186,3,2057);
insert into programaacademico values(2557,"Odontologia",10,180,11,2058);
insert into programaacademico values(2505,"Ingenieria Agronomica",10,180,1,2728);


-- ---------------------------RELACION INSCRIPCION --------------------------------------------------------------------
CREATE TABLE Inscripcion (
  ins_PINInscripcion INT NOT NULL PRIMARY KEY,
  ins_Fecha varchar(20) NOT NULL,
  ins_tipo VARCHAR(20) NOT NULL,
  pro_idProgramaAcademico INT NOT NULL,
  asp_DocumentoIdentidad INT NOT NULL
    );
    
insert into inscripcion values(1149576502,"27-03-2023","Normal",2536,1001527123);
insert into inscripcion values(1276358351,"15-04-2023","PEAMA",2531,1001598111);
insert into inscripcion values(1261228113,"22-04-2023","Normal",2548,1001273669);
insert into inscripcion values(1108423600,"18-03-2023","Normal",2506,1001452844);
insert into inscripcion values(1203649750,"22-04-2023","Normal",2545,1001332355);
insert into inscripcion values(1150880455,"18-04-2023","PEAMA",2516,1001672492);
insert into inscripcion values(1297387297,"22-03-2023","Normal",2506,1001930279);
insert into inscripcion values(1165255390,"20-03-2023","Normal",2513,1001058081);
insert into inscripcion values(1287210694,"24-04-2023","Normal",2933,1001687859);
insert into inscripcion values(1298580705,"21-03-2023","Normal",2537,1001429530);
insert into inscripcion values(1280351915,"10-04-2023","Normal",2547,1001840681);
insert into inscripcion values(1271474899,"15-04-2023","Normal",2555,1001762739);
insert into inscripcion values(1156254959,"13-03-2023","Normal",2520,1001843812);
insert into inscripcion values(1132318462,"23-03-2023","PEAMA",2527,1001126018);
insert into inscripcion values(1268363407,"27-04-2023","PEAMA",2524,1001259681);
insert into inscripcion values(1216099509,"21-04-2023","Normal",2548,1001643176);
insert into inscripcion values(1141929978,"15-03-2023","Normal",2516,1001277373);
insert into inscripcion values(1266984840,"23-04-2023","Normal",2531,1001716611);
insert into inscripcion values(1237018238,"18-03-2023","Normal",2524,1001775447);
insert into inscripcion values(1227773791,"16-04-2023","Normal",2535,1001957907);
insert into inscripcion values(1290236260,"16-04-2023","Normal",2879,1001723798);
insert into inscripcion values(1479819478,"11-03-2023","PEAMA",2519,1003347233);
insert into inscripcion values(1339011636,"28-04-2023","PEAMA",2512,1003257597);
insert into inscripcion values(1128826802,"18-04-2023","PEAMA",2520,1003016087);
insert into inscripcion values(1384498634,"24-03-2023","PEAMA",2544,1003845134);
insert into inscripcion values(1442327120,"14-04-2023","Normal",2512,1003851191);
insert into inscripcion values(1256416920,"15-04-2023","Normal",2549,1003423931);
insert into inscripcion values(1109889116,"22-03-2023","PEAMA",2530,1003123801);
insert into inscripcion values(1390757483,"22-03-2023","Normal",2552,1003537761);
insert into inscripcion values(1253054674,"18-04-2023","Normal",2521,1003678417);
insert into inscripcion values(1366175502,"21-03-2023","Normal",2509,1003204567);
insert into inscripcion values(1170801193,"24-03-2023","Normal",2549,1003269700);
insert into inscripcion values(1130564756,"28-04-2023","Normal",2534,1003716798);
insert into inscripcion values(1148648587,"26-03-2023","PEAMA",2536,1003367779);
insert into inscripcion values(1245916628,"10-03-2023","PEAMA",2879,1003989455);
insert into inscripcion values(1281785541,"11-03-2023","Normal",2550,1003480863);
insert into inscripcion values(1384218825,"20-04-2023","Normal",2551,1003663938);
insert into inscripcion values(1393401791,"10-04-2023","Normal",2554,1003312201);
insert into inscripcion values(1401678312,"21-04-2023","PEAMA",2510,1003713778);
insert into inscripcion values(1113974355,"19-03-2023","Normal",2553,1003874834);
insert into inscripcion values(1132080434,"10-04-2023","PEAMA",2554,1003786097);
insert into inscripcion values(1141080998,"14-04-2023","PEAMA",2510,1003659208);
insert into inscripcion values(1287142999,"23-04-2023","Normal",2879,1002052538);
insert into inscripcion values(1256937811,"13-04-2023","Normal",2545,1002496202);
insert into inscripcion values(1322321673,"18-04-2023","PEAMA",2522,1002886936);
insert into inscripcion values(1191017453,"15-04-2023","Normal",2514,1002610140);
insert into inscripcion values(1426249927,"16-03-2023","Normal",2516,1002171616);
insert into inscripcion values(1364027037,"22-03-2023","PEAMA",2508,1002794644);
insert into inscripcion values(1263024270,"21-03-2023","Normal",2512,1002367348);
insert into inscripcion values(1235415204,"24-03-2023","PEAMA",2554,1002495245);

-- ---------------------------RELACION ADMITIDO --------------------------------------------------------------------
CREATE TABLE Admitido (
  resPA_IdResultado INT NOT NULL,
  pruebad_IdPruebaAdmison INT NOT NULL,
  asp_DocumentoIdentidad INT NOT NULL
  );
insert into admitido values(16623,12290,1001527123);
insert into admitido values(17076,11796,1001598111);
insert into admitido values(17185,11454,1001273669);
insert into admitido values(18829,11774,1001332355);
insert into admitido values(18823,11330,1001930279);
insert into admitido values(18970,12069,1001058081);
insert into admitido values(18795,11223,1001687859);
insert into admitido values(17277,12496,1001840681);
insert into admitido values(19000,11694,1001762739);
insert into admitido values(18494,12331,1001843812);
insert into admitido values(17018,12933,1001126018);
insert into admitido values(18857,11254,1001259681);
insert into admitido values(17300,11582,1001643176);
insert into admitido values(17674,11112,1001775447);
insert into admitido values(17701,12327,1001957907);
insert into admitido values(18868,14702,1003347233);
insert into admitido values(19017,11851,1003016087);
insert into admitido values(18837,14291,1003845134);
insert into admitido values(16529,14436,1003851191);
insert into admitido values(17486,11555,1003423931);
insert into admitido values(17184,12282,1003123801);
insert into admitido values(16920,12911,1003678417);
insert into admitido values(17143,12175,1003204567);
insert into admitido values(16900,11731,1003716798);
insert into admitido values(17991,13909,1003367779);
insert into admitido values(16389,14342,1003989455);
insert into admitido values(18809,14635,1003480863);
insert into admitido values(18406,13382,1003312201);
insert into admitido values(18194,14719,1003713778);
insert into admitido values(17504,11257,1003874834);
insert into admitido values(16185,14305,1003659208);
insert into admitido values(18082,13018,1002496202);
insert into admitido values(17963,13634,1002886936);
insert into admitido values(17563,12034,1002610140);
insert into admitido values(19016,13716,1002171616);
insert into admitido values(18839,11319,1002794644);
insert into admitido values(16036,14014,1002367348);

  
-- ---------------------------RELACION NO ADMITIDO --------------------------------------------------------------------
CREATE TABLE NoAdmitido (
  resPA_IdResultado INT NOT NULL,
  pruebad_IdPruebaAdmison INT NOT NULL,
  asp_DocumentoIdentidad INT NOT NULL
  );

insert into noadmitido values(18933,12929,1001452844);
insert into noadmitido values(18353,12213,1001672492);
insert into noadmitido values(16924,11075,1001429530);
insert into noadmitido values(17910,11706,1001277373);
insert into noadmitido values(17793,11023,1001716611);
insert into noadmitido values(17665,12150,1001723798);
insert into noadmitido values(17884,13205,1003257597);
insert into noadmitido values(17433,13066,1003537761);
insert into noadmitido values(18185,11933,1003269700);
insert into noadmitido values(17697,12528,1003663938);
insert into noadmitido values(18097,13877,1003786097);
insert into noadmitido values(18156,13588,1002052538);
insert into noadmitido values(18410,12890,1002495245);

-- ---------------------------RELACION RESULTADO PA --------------------------------------------------------------------
CREATE TABLE ResultadoPA (
  resPA_IdResultado INT NOT NULL primary key,
  resPA_Puntuacion INT NOT NULL,
  resPA_FechaPublicacion varchar(20) NOT NULL,
  pruebad_IdPruebaAdmision INT NOT NULL,
  asp_DocumentoIdentidad INT NOT NULL
    );

insert into resultadopa values(16623,672,"25-06-2023",12290,1001527123);
insert into resultadopa values(17076,591,"25-06-2023",11796,1001598111);
insert into resultadopa values(17185,638,"25-06-2023",11454,1001273669);
insert into resultadopa values(18933,557,"25-06-2023",12929,1001452844);
insert into resultadopa values(18829,754,"25-06-2023",11774,1001332355);
insert into resultadopa values(18353,561,"25-06-2023",12213,1001672492);
insert into resultadopa values(18823,742,"25-06-2023",11330,1001930279);
insert into resultadopa values(18970,688,"25-06-2023",12069,1001058081);
insert into resultadopa values(18795,660,"25-06-2023",11223,1001687859);
insert into resultadopa values(16924,575,"25-06-2023",11075,1001429530);
insert into resultadopa values(17277,727,"25-06-2023",12496,1001840681);
insert into resultadopa values(19000,765,"25-06-2023",11694,1001762739);
insert into resultadopa values(18494,607,"25-06-2023",12331,1001843812);
insert into resultadopa values(17018,747,"25-06-2023",12933,1001126018);
insert into resultadopa values(18857,700,"25-06-2023",11254,1001259681);
insert into resultadopa values(17300,751,"25-06-2023",11582,1001643176);
insert into resultadopa values(17910,586,"25-06-2023",11706,1001277373);
insert into resultadopa values(17793,572,"25-06-2023",11023,1001716611);
insert into resultadopa values(17674,708,"25-06-2023",11112,1001775447);
insert into resultadopa values(17701,606,"25-06-2023",12327,1001957907);
insert into resultadopa values(17665,589,"25-06-2023",12150,1001723798);
insert into resultadopa values(18868,620,"25-06-2023",14702,1003347233);
insert into resultadopa values(17884,560,"25-06-2023",13205,1003257597);
insert into resultadopa values(19017,713,"25-06-2023",11851,1003016087);
insert into resultadopa values(18837,680,"25-06-2023",14291,1003845134);
insert into resultadopa values(16529,755,"25-06-2023",14436,1003851191);
insert into resultadopa values(17486,600,"25-06-2023",11555,1003423931);
insert into resultadopa values(17184,719,"25-06-2023",12282,1003123801);
insert into resultadopa values(17433,581,"25-06-2023",13066,1003537761);
insert into resultadopa values(16920,631,"25-06-2023",12911,1003678417);
insert into resultadopa values(17143,759,"25-06-2023",12175,1003204567);
insert into resultadopa values(18185,552,"25-06-2023",11933,1003269700);
insert into resultadopa values(16900,600,"25-06-2023",11731,1003716798);
insert into resultadopa values(17991,613,"25-06-2023",13909,1003367779);
insert into resultadopa values(16389,661,"25-06-2023",14342,1003989455);
insert into resultadopa values(18809,675,"25-06-2023",14635,1003480863);
insert into resultadopa values(17697,557,"25-06-2023",12528,1003663938);
insert into resultadopa values(18406,608,"25-06-2023",13382,1003312201);
insert into resultadopa values(18194,734,"25-06-2023",14719,1003713778);
insert into resultadopa values(17504,613,"25-06-2023",11257,1003874834);
insert into resultadopa values(18097,563,"25-06-2023",13877,1003786097);
insert into resultadopa values(16185,678,"25-06-2023",14305,1003659208);
insert into resultadopa values(18156,572,"25-06-2023",13588,1002052538);
insert into resultadopa values(18082,642,"25-06-2023",13018,1002496202);
insert into resultadopa values(17963,772,"25-06-2023",13634,1002886936);
insert into resultadopa values(17563,635,"25-06-2023",12034,1002610140);
insert into resultadopa values(19016,768,"25-06-2023",13716,1002171616);
insert into resultadopa values(18839,619,"25-06-2023",11319,1002794644);
insert into resultadopa values(16036,645,"25-06-2023",14014,1002367348);
insert into resultadopa values(18410,584,"25-06-2023",12890,1002495245);

-- ---------------------------RELACION PRUEBA DE ADMISION --------------------------------------------------------------------
CREATE TABLE PruebaDeAdmision (
  pruebad_IdPruebaAdmision INT NOT NULL PRIMARY KEY,
  pruebad_FechaPruebaAdmision VARCHAR(20) NOT NULL,
  pruebad_LugarPruebaAdmision VARCHAR(45) NOT NULL,
  asp_DocumentoIdentidad INT NOT NULL
    );
    
insert into pruebadeadmision values(12290,"18-05-2023","Ingenieria",1001527123);
insert into pruebadeadmision values(11796,"18-05-2023","Ciencias",1001598111);
insert into pruebadeadmision values(11454,"18-05-2023","Artes",1001273669);
insert into pruebadeadmision values(12929,"18-05-2023","Economia",1001452844);
insert into pruebadeadmision values(11774,"18-05-2023","Artes",1001332355);
insert into pruebadeadmision values(12213,"18-05-2023","Ingenieria",1001672492);
insert into pruebadeadmision values(11330,"18-05-2023","Ciencias",1001930279);
insert into pruebadeadmision values(12069,"18-05-2023","Economia",1001058081);
insert into pruebadeadmision values(11223,"18-05-2023","Economia",1001687859);
insert into pruebadeadmision values(11075,"18-05-2023","Ciencias",1001429530);
insert into pruebadeadmision values(12496,"18-05-2023","Artes",1001840681);
insert into pruebadeadmision values(11694,"18-05-2023","Artes",1001762739);
insert into pruebadeadmision values(12331,"18-05-2023","Economia",1001843812);
insert into pruebadeadmision values(12933,"18-05-2023","Economia",1001126018);
insert into pruebadeadmision values(11254,"18-05-2023","Ingenieria",1001259681);
insert into pruebadeadmision values(11582,"18-05-2023","Ingenieria",1001643176);
insert into pruebadeadmision values(11706,"18-05-2023","Ingenieria",1001277373);
insert into pruebadeadmision values(11023,"18-05-2023","Ciencias",1001716611);
insert into pruebadeadmision values(11112,"18-05-2023","Ciencias",1001775447);
insert into pruebadeadmision values(12327,"18-05-2023","Ingenieria",1001957907);
insert into pruebadeadmision values(12150,"18-05-2023","Economia",1001723798);
insert into pruebadeadmision values(14702,"18-05-2023","Ciencias",1003347233);
insert into pruebadeadmision values(13205,"18-05-2023","Ciencias",1003257597);
insert into pruebadeadmision values(11851,"18-05-2023","Economia",1003016087);
insert into pruebadeadmision values(14291,"18-05-2023","Artes",1003845134);
insert into pruebadeadmision values(14436,"18-05-2023","Economia",1003851191);
insert into pruebadeadmision values(11555,"18-05-2023","Artes",1003423931);
insert into pruebadeadmision values(12282,"18-05-2023","Ingenieria",1003123801);
insert into pruebadeadmision values(13066,"18-05-2023","Economia",1003537761);
insert into pruebadeadmision values(12911,"18-05-2023","Ciencias",1003678417);
insert into pruebadeadmision values(12175,"18-05-2023","Ingenieria",1003204567);
insert into pruebadeadmision values(11933,"18-05-2023","Artes",1003269700);
insert into pruebadeadmision values(11731,"18-05-2023","Ciencias",1003716798);
insert into pruebadeadmision values(13909,"18-05-2023","Economia",1003367779);
insert into pruebadeadmision values(14342,"18-05-2023","Economia",1003989455);
insert into pruebadeadmision values(14635,"18-05-2023","Ciencias",1003480863);
insert into pruebadeadmision values(12528,"18-05-2023","Artes",1003663938);
insert into pruebadeadmision values(13382,"18-05-2023","Artes",1003312201);
insert into pruebadeadmision values(14719,"18-05-2023","Ingenieria",1003713778);
insert into pruebadeadmision values(11257,"18-05-2023","Economia",1003874834);
insert into pruebadeadmision values(13877,"18-05-2023","Artes",1003786097);
insert into pruebadeadmision values(14305,"18-05-2023","Ciencias",1003659208);
insert into pruebadeadmision values(13588,"18-05-2023","Ciencias",1002052538);
insert into pruebadeadmision values(13018,"18-05-2023","Artes",1002496202);
insert into pruebadeadmision values(13634,"18-05-2023","Ciencias",1002886936);
insert into pruebadeadmision values(12034,"18-05-2023","Artes",1002610140);
insert into pruebadeadmision values(13716,"18-05-2023","Ciencias",1002171616);
insert into pruebadeadmision values(11319,"18-05-2023","Ciencias",1002794644);
insert into pruebadeadmision values(14014,"18-05-2023","Ingenieria",1002367348);
insert into pruebadeadmision values(12890,"18-05-2023","Artes",1002495245);

-- ---------------------------RELACION ASPIRANTE --------------------------------------------------------------------
CREATE TABLE Aspirante (
  asp_DocumentoIdentidad INT NOT NULL PRIMARY KEY,
  asp_TipoDoc Varchar(45) NOT NULL,
  asp_Nombre VARCHAR(45) NOT NULL,
  asp_Apellido VARCHAR(45) NOT NULL,
  asp_Edad INT NOT NULL,
  asp_TelefonoFijo varchar(45) NULL,
  asp_TelefonoCelular varchar(45) NOT NULL,
  asp_Email VARCHAR(45) NOT NULL
  );

insert into Aspirante values(1001527123,"CC","Maria","Rodriguez",23,8781199344,3358407964,"maria.rodriguez@gmail.com");
insert into Aspirante values(1001598111,"TI","Ana","Martinez",15,3550960128,3347691099,"ana.martinez@gmail.com");
insert into Aspirante values(1001273669,"CC","Sara","Garcia",23,9837366169,3460591690,"sara.garcia@gmail.com");
insert into Aspirante values(1001452844,"TI","Dana","Gomez",14,1326463761,3399578383,"dana.gomez@gmail.com");
insert into Aspirante values(1001332355,"CC","Emily","Lopez",19,9356867663,3110333315,"emily.lopez@gmail.com");
insert into Aspirante values(1001672492,"CC","Emma","Gonzalez",21,8026604735,3487057210,"emma.gonzalez@gmail.com");
insert into Aspirante values(1001930279,"TI","Laura","Hernandez",15,7864411186,3166989840,"laura.hernandez@gmail.com");
insert into Aspirante values(1001058081,"CC","Valery","Sanchez",19,3100739421,3316833240,"valery.sanchez@gmail.com");
insert into Aspirante values(1001687859,"CC","Emiliano","Perez",21,9106098801,3333850461,"emiliano.perez@gmail.com");
insert into Aspirante values(1001429530,"TI","Maximiliano","Ramirez",16,5070826442,3369759781,"maximiliano.ramirez@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1001840681,"TI","Emmanuel","Diaz",14,3329015575,"emmanuel.diaz@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1001762739,"CC","Santiago","Torres",20,3484980467,"santiago.torres@gmail.com");
insert into Aspirante values(1001843812,"TI","Jeronimo","Munoz",17,1671289541,3322344015,"jeronimo.munoz@gmail.com");
insert into Aspirante values(1001126018,"CC","Samuel","Rojas",19,3848120969,3296848281,"samuel.rojas@gmail.com");
insert into Aspirante values(1001259681,"CC","Thiago","Moreno",19,9250231871,3178725201,"thiago.moreno@gmail.com");
insert into Aspirante values(1001643176,"TI","Mathias","Vargas",14,7268894984,3278974107,"mathias.vargas@gmail.com");
insert into Aspirante values(1001277373,"CC","Isaac","Ortiz",20,1998261828,3443334249,"isaac.ortiz@gmail.com");
insert into Aspirante values(1001716611,"CC","Celeste","Jimenez",22,2019610571,3179445302,"celeste.jimenez@gmail.com");
insert into Aspirante values(1001775447,"TI","John","Castro",14,3247541393,3282319704,"john.castro@gmail.com");
insert into Aspirante values(1001957907,"CC","Alison","Gutierrez",21,9456856084,3387297813,"alison.gutierrez@gmail.com");
insert into Aspirante values(1001723798,"CC","Andres","Alvarez",20,6538906217,3309803229,"andres.alvarez@gmail.com");
insert into Aspirante values(1003347233,"TI","Laura","Gutierrez",15,7440330036,3093223945,"laura.gutierrez@gmail.com");
insert into Aspirante values(1003257597,"CC","Emily","Martinez",23,7312895247,3042880821,"emily.martinez@gmail.com");
insert into Aspirante values(1003016087,"CC","Jeronimo","Jimenez",22,6845286308,3003088411,"jeronimo.jimenez@gmail.com");
insert into Aspirante values(1003845134,"TI","Alison","Gomez",15,5697416314,3275150001,"alison.gomez@gmail.com");
insert into Aspirante values(1003851191,"TI","John","Jimenez",17,7190508568,3257086579,"john.jimenez@gmail.com");
insert into Aspirante values(1003423931,"TI","Emmanuel","Martinez",17,6550923626,3131502476,"emmanuel.martinez@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003123801,"TI","Valery","Castro",17,3108049202,"valery.castro@gmail.com");
insert into Aspirante values(1003537761,"TI","Andres","Moreno",17,7241704417,3496405112,"andres.moreno@gmail.com");
insert into Aspirante values(1003678417,"CC","Mathias","Gutierrez",23,6365762648,3072553073,"mathias.gutierrez@gmail.com");
insert into Aspirante values(1003204567,"TI","Samuel","Vargas",17,6284027003,3252098914,"samuel.vargas@gmail.com");
insert into Aspirante values(1003269700,"CC","Emma","Ortiz",20,5522735726,3248255873,"emma.ortiz@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003716798,"TI","Sara","Gonzalez",14,3409164483,"sara.gonzalez@gmail.com");
insert into Aspirante values(1003367779,"CC","Emmanuel","Lopez",19,6320393101,3342426022,"emmanuel.lopez@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003989455,"TI","Samuel","Torres",17,3396356646,"samuel.torres@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003480863,"CC","Celeste","Ortiz",22,3092617081,"celeste.ortiz@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003663938,"TI","Emmanuel","Ramirez",17,3290782183,"emmanuel.ramirez@gmail.com");
insert into Aspirante values(1003312201,"TI","Valery","Alvarez",17,7902586105,3474609005,"valery.alvarez@gmail.com");
insert into Aspirante values(1003713778,"CC","Emiliano","Castro",21,6352648241,3244430249,"emiliano.castro@gmail.com");
insert into Aspirante values(1003874834,"CC","Santiago","Rodriguez",18,6793273746,3243505534,"santiago.rodriguez@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1003786097,"CC","Samuel","Alvarez",23,3042097353,"samuel.alvarez@gmail.com");
insert into Aspirante values(1003659208,"TI","Andres","Martinez",14,6026135132,3019688632,"andres.martinez@gmail.com");
insert into Aspirante values(1002052538,"TI","Emiliano","Alvarez",14,5795569982,3276483381,"emiliano.alvarez@gmail.com");
insert into Aspirante values(1002496202,"CC","Maria","Rodriguez",18,6477071687,3451269321,"maria_rodriguez@gmail.com");
insert into Aspirante(asp_DocumentoIdentidad,asp_TipoDoc,asp_Nombre,asp_Apellido,asp_Edad,asp_TelefonoCelular,asp_Email) values(1002886936,"TI","Isaac","Sanchez",17,3194446833,"isaac.sanchez@gmail.com");
insert into Aspirante values(1002610140,"CC","Laura","Gomez",20,7711641200,3200351061,"laura.gomez@gmail.com");
insert into Aspirante values(1002171616,"CC","Alison","Ramirez",20,7901602277,3173001914,"alison.ramirez@gmail.com");
insert into Aspirante values(1002794644,"TI","Mathias","Ramirez",15,5290041220,3146691448,"mathias.ramirez@gmail.com");
insert into Aspirante values(1002367348,"CC","Santiago","Garcia",20,7171727414,3480467031,"santiago.garcia@gmail.com");
insert into Aspirante values(1002495245,"TI","Alison","Hernandez",14,6670428174,3216284132,"alison.hernandez@gmail.com");




    

    
    






    
  
