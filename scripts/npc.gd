extends Area2D

# informacion basica
var quien := {
	"id" = 0, # unico, empiezan en 1, asignados globalmente
	"year" = 0, # en que year nacio
	"day" = 0, # a los cuantos dias del year nacio
	"genero" = Gbl.GENERO.MUJER,
	"orientacion" = Gbl.ORIENTACION.HETERO,
	"nombre" = "",
	"apellido1" = "",
	"apellido2" = "",
	"apodo" = "",
	"deseo" = Gbl.DESEO.NINGUNO
}

# informacion fisica
var fisico := {
	# estructura
	"talla" = Gbl.COSA.MEDIO,
	"peso" = Gbl.COSA.MEDIO,
	"piel" = Gbl.COSA.MEDIO,
	"intimo" = Gbl.COSA.MEDIO,
	# fisico
	"fuerza" = Gbl.COSA.MEDIO,
	"cardio" = Gbl.COSA.MEDIO,
	"agilidad" = Gbl.COSA.MEDIO,
	# mente
	"logica" = Gbl.COSA.MEDIO,
	"imagina" = Gbl.COSA.MEDIO,
	"carisma" = Gbl.COSA.MEDIO
}

# apariencia segun accesorios esteticos
var estilo := {
	# pelo
	"pelo_pei" = Gbl.PEINADO.DESORDENADO,
	"pelo_fac" = Gbl.FACIAL.NADA,
	"pelo_col" = Gbl.COLOR["negro"],
	"pelo_niv" = 0.0, # crecimiento del pelo, si llega a 1 crece y se desordena
	# sombrero
	"alto_tip" = Gbl.VEST_ALTO.NADA,
	"alto_col" = Gbl.COLOR["blanco"],
	"alto_vid" = 1.0, # si llega a 0 se rompe y queda como NADA
	# camisa
	"medio_tip" = Gbl.VEST_MEDIO.NADA,
	"medio_col" = Gbl.COLOR["blanco"],
	"medio_vid" = 1.0, # si llega a 0 se rompe y queda como NADA
	# pantalon
	"bajo_tip" = Gbl.VEST_BAJO.NADA,
	"bajo_col" = Gbl.COLOR["blanco"],
	"bajo_vid" = 1.0 # si llega a 0 se rompe y queda como NADA
}

# informacion dinamica
var estado := {
	"colapso" = Gbl.COLAPSO.NADA,
	"emocion" = Gbl.EMOCION.NORMAL,
	"casa" = 0, # id de la casa
	"trabajo" = 0, # id del puesto de trabajo
	"objeto_l" = [0, null], # id, ind del objeto en mano izquierda
	"objeto_r" = [0, null] # id, ind del objeto en mano derecha
}

# el sistema de creencias afecta el ADN
var creencia := {
	"idea": Gbl.IDEA.NINGUNA, # la ideologia actual, puede cambiar
	"nivel": 0.5, # fuerza de la ideologia, en 0 se elimina
	"gen": "", # nombre del gen del ADN a ser afectado
	"deseo": Gbl.GEN.MEDIO # como quiere que el gen sea cambiado
}

# necesidades que cambian con el tiempo 1-0
var necesidades := {
	"aseo": 0.5,
	"hambre": 0.5,
	"ocio": 0.5,
	"sexo": 0.5,
	"social": 0.5,
	"descanso": 0.5,
	"trabajo": 0.5,
	"vestimenta": 0.5,
	"vida": 0.5,
	"bienestar": 0.5
}

# cadena del ADN, se creara en _ready()
var adn := {
	#"gen" = Gbl.GEN.MEDIO
}

# listado de NPCs conocidos
var gente = [
	#{
	#	"id" = 0, # indice unico del otro NPC
	#	"nivel" = 0.5, # que tan fuerte es el tipo de relacion
	#	"relacion" = Gbl.RELACION.AMIGO # tipo de relacion
	#	"chat" = [] # lista de mensajes:
	#		{
	#			"year" = 0, # en que year fue que sucedio
	#			"day" = 0, # a los cuantos dias del year sucedio
	#			"is_self" = true, # true es el quien habla, false el otro (id)
	#			"texto" = "" # el mensaje como tal, una entrada del chat
	#		}
	#}
]

# lista de percances de salud
var salud := [
	#{
	#	"id" = Gbl.SALUD.HERIDA,
	#	"donde" = Gbl.CUERPO.GENERAL,
	#	"nivel" = 0.5, # cuando sube se pone mas grave 0-1
	#}
]

var temas := [
	#{
	#	"categ": 0, # indice en el array de Gbl.TEMA
	#	"id": 0, # indice en el array de Gbl.TEMA[categ], 0 todo
	#	"nivel": 0.0, # que tanto sabe de ese tema
	#	"razon": Gbl.RAZON.HABILIDAD # es repudio, habilidad, interes
	#}
]

var historial := [
	#{
	#	"year": 0, # en que year fue que sucedio
	#	"day": 0, # a los cuantos dias del year sucedio
	#	"quien": 0, # id de NPC involucrado o 0 si ninguno
	#	"tipo": Gbl.SUCESO.BASICO, # segun el impacto del hito
	#	"texto": "" # descripcion breve de lo ocurrido
	#}
]

# inicializacion y guardado

func _ready() -> void:
	# genera la estructura completa de ADN
	for gen in Gbl.ADN:
		adn[gen[0]] = Gbl.GEN.MEDIO

func aleatorio() -> void:
	# crea un personaje al azar
	pass

func save_npc() -> void:
	# para almacenarlo en un archivo
	var datos := {
		"quien": quien,
		"fisico": fisico,
		"estilo": estilo,
		"estado": estado,
		"creencia": creencia,
		"necesidades": necesidades,
		"adn": adn,
		"gente": gente,
		"salud": salud,
		"temas": temas,
		"historial": historial
	}
	var json := JSON.stringify(datos, "\t")
	var archivo := FileAccess.open("user://npc_" + str(quien["id"]) + ".json", FileAccess.WRITE)
	archivo.store_string(json)
	archivo.close()

func open_npc(open_id: int) -> void:
	# para cargarlo desde un archivo
	var ruta := "user://npc_" + str(open_id) + ".json"
	if not FileAccess.file_exists(ruta):
		return
	var archivo := FileAccess.open(ruta, FileAccess.READ)
	var contenido := archivo.get_as_text()
	archivo.close()
	var json := JSON.new()
	if json.parse(contenido) != OK:
		return
	quien = json["quien"]
	fisico = json["fisico"]
	estilo = json["estilo"]
	estado = json["estado"]
	creencia = json["creencia"]
	necesidades = json["necesidades"]
	adn = json["adn"]
	gente = json["gente"]
	salud = json["salud"]
	temas = json["temas"]
	historial = json["historial"]
