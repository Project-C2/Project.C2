playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 2
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.75
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:lava ~ ~2 ~ 4 2 4 1 120 normal @a
particle minecraft:lava ~ ~2 ~ 4 2 4 1 40 force @a
particle minecraft:explosion ~ ~ ~ 2 4 2 1 150
execute if entity @s[tag=041-stand-red] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"アビスインフェルノ\"}",ExplosionRadius:2b,Fuse:0s,ignited:1b,Team:"Red"}
execute if entity @s[tag=041-stand-blue] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"アビスインフェルノ\"}",ExplosionRadius:2b,Fuse:0s,ignited:1b,Team:"Blue"}
