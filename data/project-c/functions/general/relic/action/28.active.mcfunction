particle minecraft:dust 1 1 1 3 ~ ~1 ~ 1 1 1 0 30 force @a
playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 2

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RandomAEC"]}
execute as @e[tag=RandomAEC] store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=RandomAEC] run scoreboard players operation @s counter_3 %= #12 counter

execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=0}] run effect give @s slowness 5 1
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=1}] run effect give @s weakness 5 9
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=2}] run effect give @s glowing 5 0
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=3}] run effect give @s poison 5 0
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=4}] run effect give @s wither 5 1 true
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=5}] run effect give @s strength 5 4
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=6}] run effect give @s resistance 5 1
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=7}] run effect give @s speed 5 1
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=8}] run effect give @s jump_boost 5 0
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=9}] run effect give @s slow_falling 5 0
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=10}] run effect give @s instant_health 1 0
execute if entity @e[limit=1,tag=RandomAEC,scores={counter_3=11}] run effect give @s instant_damage 1 0

kill @e[tag=RandomAEC]

scoreboard players set @s relicCount 100
tag @s remove relic28damaged

