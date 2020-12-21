particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:cloud ~ ~ ~ 2 2 2 1 1000 normal @a
particle minecraft:cloud ~ ~ ~ 2 2 2 1 250 force @a
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3.5 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1
execute positioned 0.0 0.9 0.0 run summon area_effect_cloud ^ ^ ^0.3 {Tags:["vector"],Duration:1}
execute positioned ~ ~-0.365 ~ run data modify entity @e[tag=095setMotion,limit=1,distance=..0.2,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
