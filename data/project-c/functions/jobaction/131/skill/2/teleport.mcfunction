playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
particle portal ~ ~1 ~ 0 0 0 4 300

teleport @s @e[tag=canTPGate1,tag=131-necroC1,limit=1]
effect give @s levitation 1 2 true

scoreboard players set @s 131-GateCT 50
execute positioned as @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute positioned as @s run particle portal ~ ~1 ~ 0 0 0 4 300