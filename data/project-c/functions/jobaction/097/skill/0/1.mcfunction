scoreboard players add @s counter 1

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.5 1.1
tag @s add 097dummy
execute if entity @s[tag=097razer_Red] as @e[distance=..2.6,tag=Battle,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=097dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..0.8] run tag @s add hit
execute if entity @s[tag=097razer_Blue] as @e[distance=..2.6,tag=Battle,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=097dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..0.8] run tag @s add hit
execute if entity @s[tag=097razer_Red] as @e[distance=..2.6,tag=Battle,team=!Red,team=!RedDummy,tag=!097-0hit] run function project-c:jobaction/097/skill/0/eyes-check
execute if entity @s[tag=097razer_Blue] as @e[distance=..2.6,tag=Battle,team=!Blue,team=!BlueDummy,tag=!097-0hit] run function project-c:jobaction/097/skill/0/eyes-check
tag @s remove 097dummy

execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/097/skill/0/reflect
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/097/skill/0/reflect
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/097/skill/0/reflect
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/097/skill/0/reflect
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/097/skill/0/reflect
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/097/skill/0/reflect

execute if entity @e[tag=hit,limit=1] run tag @s add 097
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function project-c:jobaction/097/skill/0/hit
execute if entity @s[tag=097] run scoreboard players set @s counter 50
execute if entity @s[tag=097] run tag @s remove 097
execute if score @s counter matches 40.. run kill @s