scoreboard players add @s counter 1
execute if score @s counter matches 1 run function project-c:jobaction/095/skill/2/2
execute if score @s counter matches 5 run function project-c:jobaction/095/skill/2/3
execute if score @s counter matches 9 run function project-c:jobaction/095/skill/2/4
execute if score @s counter matches 13 run function project-c:jobaction/095/skill/2/5

execute if score @s counter matches 1..3 run tag @e[distance=..1.5,tag=!Battle,type=!player,tag=!Stable,tag=!095-2AEC,tag=!sdi_d,tag=!035-animaBow,type=!area_effect_cloud] add 095-2kill
execute if score @s counter matches 4..7 run tag @e[distance=..3,tag=!Battle,type=!player,tag=!Stable,tag=!095-2AEC,tag=!sdi_d,tag=!035-animaBow,type=!area_effect_cloud] add 095-2kill
execute if score @s counter matches 8..11 run tag @e[distance=..4.5,tag=!Battle,type=!player,tag=!Stable,tag=!095-2AEC,tag=!sdi_d,tag=!035-animaBow,type=!area_effect_cloud] add 095-2kill
execute if score @s counter matches 12.. run tag @e[distance=..6,tag=!Battle,type=!player,tag=!Stable,tag=!095-2AEC,tag=!sdi_d,tag=!035-animaBow,type=!area_effect_cloud] add 095-2kill

execute if entity @e[tag=095-2kill,limit=1] at @e[tag=095-2kill] run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 1 3 normal @a
execute if entity @e[tag=095-2kill,limit=1] at @e[tag=095-2kill] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
execute if entity @e[tag=095-2kill,limit=1] at @e[tag=095-2kill] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.6 2
execute if entity @e[tag=095-2kill,limit=1] run kill @e[tag=095-2kill]

