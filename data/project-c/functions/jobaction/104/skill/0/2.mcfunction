particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 25 force @a

execute if entity @s[tag=104bombR] if entity @e[tag=Battle,team=!Red,distance=..1.5,limit=1] run tag @s add 104flag
execute if entity @s[tag=104bombB] if entity @e[tag=Battle,team=!Blue,distance=..1.5,limit=1] run tag @s add 104flag
execute if entity @s[tag=104flag] run function project-c:jobaction/104/skill/1/chance

summon creeper ~ -10 ~ {Tags:["104"],Fuse:0,ExplosionRadius:1,CustomName:'{"text": "爆弾投げ","color":"red","italic":false}'}
tp @e[tag=104,limit=1] ~ ~ ~
tag @e[tag=104] remove 104

kill @s
