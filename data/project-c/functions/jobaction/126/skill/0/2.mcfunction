particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

teleport @a[] @e[tag=126-teleportS,limit=1]

execute if entity @e[tag=126-teleportS] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2

execute if entity @e[tag=126-teleportS] at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

execute if entity @e[tag=126-teleportS] run kill @e[tag=126-teleportS]
