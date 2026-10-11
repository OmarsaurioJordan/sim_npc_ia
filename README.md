# Sim NPC IA

## Objetivo

Poder entablar conversación con una IA, que sear realista en cuanto a contexto, esto se logra a travez de una simulación dinámica, donde la IA a travéz de NPCs es no solo reactiva sino también proactiva, y su estado interno se mantiene mediante la simulación a pesar de la alucinación

## Objetivos Específicos

1. Sistema de creación de personajes aleatorios dados parámetros base
2. Sistema de creación manual de personajes dados puntos paramétricos limtantes
3. Sistema de simulación social tipo The Sims, 2D cenital sin complejidad visual
4. Sistema de chat con un NPC a la vez, usar IA que obtiene información contextual
5. Sistema de multi usuario para chataear con varios NPC con memorias cruzadas
6. Sistema de chat interno entre NPCs, demandante pero hace realista a la simulación

## Arquitectura

Godot:\
  Menu, ventana principal\
  ├─ Chat, conectado con Mundo o Ficha\
  ├─ Mundo, simulación social\
  └─ Admin, administración de personajes\
	 ├─ Nuevo, permite crear un personaje paso a paso con límites o sin ellos\
	 ├─ Editar, permite hacer cambios a un personaje respetando los limites\
	 ├─ Azar, fija condiciónes para crear un personaje aleatorio\
	 ├─ Ficha, visualización de un personaje con todos sus datos y prompts\
	 ├─ Cruce, funcionalidad para reproducir dos personajes genéticamente\
	 └─ Lucha, funcionalidad para enfrentar dos personajes y ver sus daños\
Python:\
  IA, server que resuelve peticiónes LLM y TTS\
Guardado:\
  JSON, archivo que contiene un NPC\

## Tecnologías

- Godot 4
- Python
- LLM: 
- TTS: 

## Desarrollador

- Omar Jordan Jordan (Omwekiatl)
