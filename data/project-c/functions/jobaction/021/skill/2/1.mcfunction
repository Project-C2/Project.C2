scoreboard players add @s counter 1

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.5 1.1
tag @s add 021dummy
execute if entity @s[tag=021razer_Red] as @e[distance=..2.6,tag=Battle,team=!Red,team=!RedDummy,tag=!021-0hit] run function project-c:jobaction/021/skill/2/eyes-check
execute if entity @s[tag=021razer_Blue] as @e[distance=..2.6,tag=Battle,team=!Blue,team=!BlueDummy,tag=!021-0hit] run function project-c:jobaction/021/skill/2/eyes-check
tag @s remove 021dummy

execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/021/skill/2/reflect
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/021/skill/2/reflect
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 normal @a
function project-c:jobaction/021/skill/2/reflect

execute if entity @s[tag=021] run scoreboard players set @s counter 50
execute if entity @s[tag=021] run tag @s remove 021
execute if score @s counter matches 80.. run kill @s