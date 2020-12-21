playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
particle portal ~ ~1 ~ 0 0 0 4 300

teleport @s @e[tag=canTPBeacon,limit=1]
effect give @s levitation 1 2 true

execute positioned as @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute positioned as @s run particle portal ~ ~1 ~ 0 0 0 4 300