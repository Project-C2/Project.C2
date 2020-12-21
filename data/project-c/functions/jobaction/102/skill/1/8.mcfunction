execute facing entity @e[tag=102target3,limit=1,sort=nearest] feet rotated ~ 0 positioned 0.0 0.5 0.0 run summon area_effect_cloud ^ ^ ^-0.5 {Duration:1,Tags:["102vector"]}
data modify entity @s Motion set from entity @e[tag=102vector,limit=1] Pos
kill @e[tag=102vector,limit=1]
scoreboard players add @s counter 30
scoreboard players remove @s counter_1 80
execute unless score @s counter_1 matches 0.. run scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 0
tag @e[tag=102target3] remove 102target3


playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.8 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1.2
particle minecraft:cloud ^ ^1 ^-1 0.1 0.1 0.1 0.5 100 normal @a
particle minecraft:cloud ^ ^1 ^-1 0.1 0.1 0.1 0.5 25 force @a
