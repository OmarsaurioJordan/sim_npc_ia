class_name Gbl

# caracteristicas base de los NPC

enum GENERO { MUJER, HOMBRE }

enum ORIENTACION { HETERO, HOMO, BISEX }

enum GEN { BAJO, MEDIO, ALTO }

# caracteristicas fisicas de los NPC

enum CUERPO { GENERAL, CABEZA, TORAX, ABDOMEN, BRAZO_L, BRAZO_R, PIERNA_L, PIERNA_R }

enum COSA { BAJO, MEDIO, ALTO } # talla, peso, piel, intimo, fisico, intelecto

enum PELO { CALVO, CORTO, MEDIO, LARGO, MAXIMO }

enum PEINADO {
	DESORDENADO,
	LISTO,
	CRESPO,
	ONDULADO,
	COLA,
	TRENZA,
	TRENZAS,
	RASTAS,
	AFRO,
	PARADO,
	CRESTA,
	EMO,
	CAPUL,
	COLETAS,
	NUDO
}

enum FACIAL {
	NADA,
	BIGOTE,
	BARBA,
	PERILLA,
	OSO,
	TRENZA,
	TRENZAS,
	PERFILADA,
	LATERAL,
	CHIVA
}

enum VEST_ALTO {
	NADA,
	GORRA,
	CASCO,
	MASCARA,
	SOMBRERO,
	COPA,
	BOINA,
	PESCADOR,
	PAJA,
	TAPABOCAS,
	CAPUCHA,
	PASAMONTES,
	AURICULARES,
	GAFAS_NEGRAS,
	GAFAS_GRANDES,
	GAFAS_COMUNES,
	OREJAS,
	FLOR,
	DIADEMA,
	GORRO,
	CHAVO,
	BUFANDA
}

enum VEST_MEDIO {
	NADA,
}

enum VEST_BAJO {
	NADA,
	BOXER,
	TANGA,
	SUDADERA,
	BERMUDA,
	LICRA_MEDIA,
	LICRA_LARGA,
	JEAN,
	FALDA_LARGA,
	FALDA_MEDIA,
	FALDA_CORTA,
	FALDA_CRUZADA,
	BOTA_CAMPANA,
	FORMAL,
	ROTOS,
	PARCHADO,
	CAMUFLADO,
	ENTUBADO,
	TAPARRABOS,
	ELASTICO
}

const COLOR := {
	"negro" = Color(0.173, 0.173, 0.173, 1.0),
	"gris" = Color(0.408, 0.408, 0.408, 1.0),
	"blanco" = Color(0.716, 0.716, 0.716, 1.0),
	"marron" = Color(0.385, 0.216, 0.049, 1.0),
	"cafe" = Color(0.29, 0.263, 0.17, 1.0),
	"caqui" = Color(0.543, 0.454, 0.271, 1.0),
	"rojo" = Color(0.727, 0.277, 0.163, 1.0),
	"naranja" = Color(0.815, 0.51, 0.108, 1.0),
	"amarillo" = Color(0.728, 0.713, 0.091, 1.0),
	"pino" = Color(0.0, 0.356, 0.0, 1.0),
	"verde" = Color(0.0, 0.615, 0.0, 1.0),
	"limon" = Color(0.458, 0.793, 0.278, 1.0),
	"aqua" = Color(0.354, 0.776, 0.928, 1.0),
	"azul" = Color(0.299, 0.508, 0.99, 1.0),
	"rey" = Color(0.19, 0.268, 0.797, 1.0),
	"morado" = Color(0.394, 0.124, 0.488, 1.0),
	"fucsia" = Color(0.732, 0.298, 0.491, 1.0),
	"rosado" = Color(0.779, 0.589, 0.614, 1.0),
}

# estados o caracteristicas listados

enum EMOCION {
	NORMAL, # emociones serenas, estado prioritario
	FELIZ, # alegria evidente, risa o sonrisa
	EUFORICO, # carcajada y risa fuerte incontrolable
	TRISTE, # estado de bajo animo evidente
	LLANTO, # lagrimea y muy evidentemente esta mal
	SORPRENDIDO, # cuando ve o presencia algo inesperado
	PREOCUPADO, # cara de problemas, muy pensativo ensimismado
	ENOJADO, # se nota sutilmente que esta de mal humor
	FURIOSO, # muestra dientes, grita, enrojecido y agresivo
	ENAMORADO, # atontamiento leve y perdido en las nubes
	EXTASIS, # estado orgasmico o bajo drogadiccion
	ABURRIDO # ligeramente se nota apachurrado, sin animos
}

enum RELACION {
	AMIGO, # alta confianza para hablar y compartir tiempo
	ENEMIGO, # se llevan muy mal personalmente
	PROGENITOR, # padre o madre
	HERMANO, # hijos e hijas de los progenitores
	HIJO, # o hija, descendientes directos
	JEFE, # en el trabajo es quien da las ordenes
	SUBDITO, # puede recibir ordenes del otro en el trabajo
	COMPA, # igual jerarquia en el trabajo
	PAREJA, # actualmente sostiene relaciones intimas
	EXPAREJA, # ha tenido anteriormente relaciones intimas con
	AUTORIDAD # una figura de poder
}

enum COLAPSO {
	NADA, # normal
	PRIOMANO, # le prende fuego a las cosas que ve cerca
	CANIBAL, # mata y come del muerto o a cadaveres
	SUICIDA, # quiere hacerse damage que puede ser letal
	NINFOMANO, # buca comulsivamente sexo de diversas formas
	PSICOPATA, # quiere asesinar o atentar contra otro u otros
	ABANDONADOR, # hulle lejos, sin rumbo, para no volverle a hallar
	PROTESTA, # se rehusa a hacer actividades productivas, obstaculiza
	ERRANTE, # modo feral, sin comunicacion ni objetivos, anda sin rumbo
	AISLADO, # no se comunica ni sale del lugar donde se resguarda
	OBSESIVO # se pone a trabajar o hacer algo sin distracciones
}

enum DESEO {
	NINGUNO, # no tiene deseo, indeciso o renuncio a ello
	RICO, # llenarse de dinero sin limites
	FAMOSO, # ser reconocido por algo
	FAMILIAR, # rodearse de hijos
	LEGADO, # dejar alguna creacion para el futuro
	SALUDABLE, # envejecer conservando su salud
	PAREJA, # conseguir una persona idonea para vivir cosas
	ILUMINACION, # retirarse de lo mundano y ascender espiritualmente
	PERVERSION, # probar muchas personas y cosas sexuales
	VIAJAR, # conocer muchos lugares del mundo
	SERVICIO, # hacer algo que impacte el bienestar colectivo
	MAESTRO, # dar ejemplo en algo a otros que le siguen
	LUCHA, # vivir para conflictuar, en nombre de sus ideales
	MALIGNO # hacer cosas ilegales y poco morales
}

enum RAZON { REPUDIO, HABILIDAD, INTERES }

const TEMA := [ # array de arrays [categoria, tema1, tema2, tema3, etc], son indices no textos tildes
	["literatura",
		"terror", "fantasia", "ficcion", "historica", "cuentos", "romance", "escribir"],
	["musica",
		"rock", "electropop", "clasica", "urbana", "ranchera", "cantar", "instrumento"],
	["videojuegos",
		"multijugador", "simulacion", "aventura", "casuales", "terror", "deportes", "desarrollo"],
	["viajes",
		"museos", "mochilear", "ciudades", "pueblos", "acampar", "bares", "playas"],
	["peliculas",
		"terror", "fantasia", "ficcion", "historica", "comedia", "romance", "animada"],
	["series",
		"terror", "fantasia", "ficcion", "historica", "comedia", "romance", "animada"],
	["deportes",
		"futbol", "tenis", "gimnasio", "yoga", "atletismo", "lucha", "escalada",
		"baloncesto", "voleibol", "baile", "patinar", "bicicleta", "patineta", "natacion"],
	["juegos",
		"billar", "bolos", "paintball", "rol", "ajedres", "punteria", "azar"],
	["politica",
		"capitalismo", "comunismo", "feminismo", "ambientalismo", "lgbt", "discapacidad", "derechos"],
	["erotismo",
		"sexologia", "nudismo", "juguetes", "rol", "masoquismo", "tantra", "swinger"],
	["religion",
		"cristianismo", "paganismo", "agnosticismo", "budismo", "hinduismo", "satanismo", "ateismo"],
	["misticismo",
		"tarot", "zodiaco", "paranormal", "chakras", "rituales", "mitologia", "astral"],
	["ciencia",
		"matematica", "medicina", "animales", "genetica", "psicologia", "astronomia", "computacion"],
	["negocios",
		"emprendimiento", "finanzas", "compras", "idiomas", "propiedades", "turismo", "trueque"],
	["comida",
		"chatarra", "vegetariana", "gastronomia", "alcohol", "nutricion", "postres", "cocinar"],
	["historia",
		"indigenas", "egipcios", "griegos", "vikingos", "medieval", "moderna", "orientales"],
	["estilo",
		"farandula", "modelaje", "streamers", "relaciones", "moda", "belleza", "mascotas"],
	["vehiculos",
		"motos", "carros", "robots", "todoterreno", "aereos", "mecanica", "carreras"]
]

enum SALUD {
	# damage acumulativo
	HERIDA, # corte superficial abierto que sangra
	GOLPE, # impacto a nivel muscular, no suele empeorar
	FRACTURA, # impacto en hueso, requiere largo tiempo para curar
	PERFORACION, # corte interno en organos que sangra
	QUEMADURA, # aplicacion local de calor que calcina la piel
	CONGELACION, # aplicacion local de frio que paraliza zonas
	PICADURA, # ligero veneno localizado, grano en la piel
	# enfermedades e infecciones
	HONGOS, # de transmision sexual, inicia por suciedad
	GRIPA, # ligero resfriado, ligeramente contagioso pero no grave, epidemico
	PESTE, # contagio alto y gravedad alta, damage a pulmones, pandemico
	INFECCION, # bacterias que se comen el tejido, fiebre, grave no contagioso
	PARASITOS, # no contagiosa, no grave, causa vomitos y diarrea
	VENENO, # grave ingreso de toxinas al cuerpo, empeora y mata
	CANCER, # vomita sangre, ruleta rusa vive o muere
	RENAL, # infeccion tratable pero de larga duracion, orina sangre
	# estados especiales
	DESNUTRICION, # falta de alimento que lleva a la muerte
	EMBARAZO, # por un largo tiempo, ira incrementando hasta el parto
	POSPARTO, # tiempo de atolondramiento, no puede usar sus genitales
	CALOR, # temperatura intensa que va reduciendo la vida
	HIPOTERMIA, # frio intenso que va reduciendo la vida
	ASFIXIA, # falta de oxigeno que va reduciendo la vida, ejemplo al ahogarse
	DIARREA, # por ingerir algo en mal estado pasable, expulsion retardada
	VOMITO, # por ingerir algo muy en mal estado, expulsion instantanea
	CONSTRIPADO, # acumulacion de caca dentro, dificultad de salida
	LOCURA, # esquizofrenia que hace ver u oir cosas, suele durar largo tiempo
	DROGADO, # intoxicacion alucinogena, fuerte pero de corta duracion
	CEGUERA, # infeccion ocular que impide ver con claridad
	SORDERA, # leve infeccion auditiva que impide escuchar bien
	AFONIA, # voz muy ronca inentendible, dolor de garganta
	ALERGIA, # zarpullido que cubre la piel de puntos rojos con escozor
	ACNE, # brote en piel especialmente en cara, larga duracion, estetico
	INFARTO, # grave, si no se trata causa muerte instantanea
	# limitantes temporales
	DESMAYO, # perdida de conciencia momentanea
	SEDADO, # perdida de conciencia inducida y duradera
	FRIGIDEZ, # disfuncion genital, sin ereccion ni dilatacion
	RIGIDEZ, # alguna de las cuatro extremidades esta en recuperacion
	CALAMBRE, # bloqueo del cuerpo por golpe, extremidades inmoviles
	# irreversibles
	AMPUTADO, # alguna de las cuatro extremidades ya no esta
	SIDA, # sexual, cada tanto enferma de algo, por si solo no hace damage
	RABIA, # mordedura, lentamente destruye la salud, al final deja un zombie
	MINUSVALIDO, # perdida de movilidad inferior
	CUADRAPLEJICO, # perdida de movilidad corporal
	DEMENCIA, # damage cerebral a causa de vejez o golpes
	CASTRADO, # perdida de genitales
	CIEGO, # perdida de los ojos
	SORDO, # perdida de la audicion u oidos
	MUDO, # perida de la capacidad de hablar
	APACHURRADO, # cuerpo completamente destripado, muerte instantanea
	DIVIDIDO, # cuerpo partido en dos, muerte instantanea
	DECAPITADO, # sin cabeza, muerte instantanea
	ARTRITIS, # enfermedad hereditaria, cada tanto hace damage fisico
	MUECO, # damage grave en los dientes, que se pierden
	DESTETADA # pedio los senos
}

const NECESIDAD := [
	"aseo", # empeora cuando se va ensuciando
	"hambre", # cada tiempo consume sus reservas de comida ingerida
	"ocio", # debe hacer actividades divertidas para subirlo
	"sexo", # empeora cuando pasa tiempo sin actividad intima
	"social", # debe interactuar con otros para subirlo
	"descanso", # cada tiempo consume energia y debera dormir
	"trabajo", # satisfaccion con el dinero y empleo actual, quehacer
	"vestimenta", # evalua la calidad y desgaste de su ropa
	"vida", # disminuye cuando hay conflictos de salud a ravez del tiempo
	"bienestar" # medida general de estado mental, disminuye con el estres
]

const ADN := [
	# relacionales sociales
	["amigos", "solitario", "comunicativo"],
	["enemigos", "diplomatico", "conflictivo"],
	["familia", "esteril", "fertil"],
	["relacion", "monogamo", "poligamo"],
	["obediencia", "sumiso", "dominante"],
	# estado evolutivo
	["edad", "efimero", "longevo"],
	["fisico", "peresoso", "activo"],
	["intelecto", "bruto", "genio"],
	["salud", "enfermizo", "inmune"],
	# reacciones a experiencias
	["moral", "egoista", "empatico"],
	["valentia", "temeroso", "heroico"],
	["apertura", "rutinario", "explorador"],
	["creencia", "esceptico", "credulo"],
	# necesidades
	["aseo", "cochino", "pulcro"],
	["hambre", "ayunador", "gloton"],
	["ocio", "serio", "divertido"],
	["sexo", "asexual", "pervertido"],
	["social", "introvertido", "extrovertido"],
	["descanso", "ansioso", "dormilon"],
	["trabajo", "conformista", "ambicioso"],
	["vestimenta", "nudista", "glamoroso"],
	["vida", "delicado", "resistente"],
	["bienestar", "neurotico", "resiliente"]
]

enum SUCESO { TRAUMA, BASICO, EXITO }

enum IDEA {
	NINGUNA,
	CAPITALISMO,
	COMUNISMO,
	ATEISMO,
	MONOTEISMO,
	POLITEISMO,
	AGNOSTICISMO,
	FEMINISMO,
	MACHISMO,
	AUTORITARISMO,
	ANARQUISMO,
	PROGRESISMO,
	TRADICIONALISMO,
	PACIFISMO,
	FASCISMO,
	AMBIENTALISMO,
	HEDONISMO
}

# nombres y apellidos segun genero

const NOMBRES_FEM := [
	"Andrea", "Adriana", "Angy", "Ana", "Amanda", "Angela", "Astrid", "Ashly", "Alba",
	"Beatriz", "Berenice", "Brenda", "Bianca", "Blanca", "Bonnie", "Berta", "", "",
	"Camila", "Cony", "Cecilia", "Clara", "Carolina", "Catalina", "Carmen", "Claudia", "",
	"Diana", "Dayana", "Daniela", "Derlyn", "Dora", "Debora", "", "", "",
	"Emily", "Estefania", "Eliana", "Emperatriz", "Esmeralda", "Elena", "", "", "",
	"Francia", "Fernanda", "Fatima", "Florencia", "Fabiana", "", "", "", "",
	"Gloria", "Geraldine", "Guadalupe", "Gabriela", "Gema", "", "", "", "",
	"Hilda", "Hilary", "", "", "", "", "", "", "",
	"Irina", "Irma", "Ines", "Isabella", "", "", "", "", "",
	"Jimena", "Janeth", "Johana", "", "", "", "", "", "",
	"Kelly", "Karla", "Keila", "Katherine", "Kiara", "Kassandra", "Karen", "Kendra", "",
	"Luisa", "Laura", "Liliana", "Lina", "Leonor", "Leticia", "Lola", "Luz", "Leidy",
	"Maria", "Martha", "Mercedes", "Merlina", "Manuela", "Muriel", "Magnolia", "Mia", "Monica",
	"Natalia", "Nereida", "Nayeli", "Naomi", "Nieves", "Nadia", "", "", "",
	"Oriana", "Omaira", "Olga", "Ofelia", "Olivia", "Ornella", "", "", "",
	"Paula", "Perla", "Policarpa", "Paloma", "Pamela", "Pilar", "Penelope", "Priscila", "Pilar",
	"Quiana",
	"Regina", "Rita", "Romina", "Rosa", "Rocio", "Renata", "Raquel", "Rafaela", "",
	"Sara", "Selene", "Sonia", "Samantha", "", "", "", "", "",
	"Tatiana", "Teresa", "Trinidad", "Tamara", "Tina", "", "", "", "",
	"Ursula", "", "", "", "", "", "", "", "",
	"Victoria", "Veronica", "Valeria", "Valentina", "Violeta", "Virginia", "Vanessa", "", "",
	"Wanda", "Xiomara", "Yolanda", "Zaira"
]

const NOMBRES_MAS := [
	"Andres", "Armando", "Alberto", "Alfonso", "Alejandro", "Arturo", "Augusto", "Adrian", "Agustin",
	"Boris", "Brayan", "Breiner", "Bruno", "Benjamin", "Baltazar", "Bernardo", "Benito", "Braulio",
	"Carlos", "Cesar", "Camilo", "Cristian", "Cristobal", "Ciro", "Cayetano", "", "",
	"Daniel", "Dante", "Dario", "Dorian", "", "", "", "", "",
	"E", "", "", "", "", "", "", "", "",
	"Felipe", "", "", "", "", "", "", "", "",
	"G", "", "", "", "", "", "", "", "",
	"Harold", "", "", "", "", "", "", "", "",
	"Ignacio", "", "", "", "", "", "", "", "",
	"Juan", "Jesus", "Javier", "Jaime", "", "", "", "", "",
	"Kevin", "Kaiser", "Kenner", "", "", "", "", "", "",
	"Lucas", "", "", "", "", "", "", "", "",
	"Mateo", "Michael", "Mauricio", "Marcos", "Manuel", "Martin", "Maximiliano", "Matias", "",
	"Norman", "Nairo", "Nelson", "Norberto", "", "", "", "", "",
	"Omar", "Oswaldo", "Orlando", "", "", "", "", "", "",
	"Pablo", "Peter", "", "", "", "", "", "", "",
	"Querubin",
	"Romeo", "Ricardo", "Rafael", "Ramon", "Rodrigo", "Ramiro", "", "", "",
	"S", "", "", "", "", "", "", "", "",
	"Tomas", "", "", "", "", "", "", "", "",
	"Ulises", "Walter", "William", "Winston", "Wilmer", "", "", "", "",
	"Valentino", "Vlad", "Victor", "Vladimir", "", "", "", "", "",
	"Wilfredo", "X", "Y", "Z"
]

const NOMBRES_MIX := [
	"Ariel", "Azul", "Alex", "Andy",
	"Belen", "Cruz", "Denise", "Eden",
	"F", "", "", "", "", "", "", "", "",
	"Genesis", "Harley",
	"Ira", "", "", "", "", "", "", "", "",
	"Jazz",
	"Kim", "", "", "", "", "", "", "", "",
	"Lujan", "", "", "", "", "", "", "", "",
	"M", "", "", "", "", "", "", "", "",
	"N", "", "", "", "", "", "", "", "",
	"Orion", "", "", "", "", "", "", "", "",
	"Paris", "", "", "", "", "", "", "", "",
	"Quinn", "Robin", "Sol", "Taylor", "Uri", "Viridian"
]

const NOMBRES_APE := [
	"A", "", "", "", "", "", "", "", "",
	"Buitrago", "", "", "", "", "", "", "", "",
	"C", "", "", "", "", "", "", "", "",
	"Duque", "", "", "", "", "", "", "", "",
	"Escobar", "", "", "", "", "", "", "", "",
	"Franco", "", "", "", "", "", "", "", "",
	"Goyes", "", "", "", "", "", "", "", "",
	"H", "", "", "", "", "", "", "", "",
	"I", "", "", "", "", "", "", "", "",
	"Jordan", "", "", "", "", "", "", "", "",
	"K", "", "", "", "", "", "", "", "",
	"L", "", "", "", "", "", "", "", "",
	"M", "", "", "", "", "", "", "", "",
	"Narvaez", "", "", "", "", "", "", "", "",
	"O", "", "", "", "", "", "", "", "",
	"Paplacios", "", "", "", "", "", "", "", "",
	"Quiroga",
	"Rojas", "", "", "", "", "", "", "", "",
	"Sterling", "Sinisterra", "Solarte", "Salas", "Salazar", "", "", "", "",
	"T", "", "", "", "", "", "", "", "",
	"U", "", "", "", "", "", "", "", "",
	"V", "", "", "", "", "", "", "", "",
	"W", "X", "Y", "Z"
]
