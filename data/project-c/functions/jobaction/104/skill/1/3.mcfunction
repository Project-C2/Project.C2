particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 400 normal @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 100 force @a
particle minecraft:lava ~ ~ ~ 1 0 1 1 40 normal @a
particle minecraft:lava ~ ~ ~ 1 0 1 1 10 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.6

summon creeper ~ -10 ~ {Tags:["104"],Fuse:0,ExplosionRadius:2,CustomName:'{"text": "爆裂花火","color":"red","bold":true,"italic":false}'}
tp @e[tag=104,limit=1] ~ ~ ~
tag @e[tag=104] remove 104

execute if entity @s[tag=104powerbombR] if entity @e[tag=Battle,team=!Red,distance=..3.1,limit=1] run tag @s add 104flag
execute if entity @s[tag=104powerbombB] if entity @e[tag=Battle,team=!Blue,distance=..3.1,limit=1] run tag @s add 104flag
execute if entity @s[tag=104flag] run function project-c:jobaction/104/skill/3/charge


scoreboard players set @s counter 50
