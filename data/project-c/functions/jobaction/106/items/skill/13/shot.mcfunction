#スキル16

scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 1
scoreboard players add @s counter_3 1
execute unless score @s counter_4 matches 0.. run scoreboard players set @s counter_4 0

execute if score @s counter_3 matches 1 unless score @s counter_4 matches 6.. run scoreboard players add @s counter_4 1
#execute if score @s[tag=106_perforate_bullet_no_1] counter_3 matches 1 run tellraw @a ["",{"score":{"name": "@s","objective": "counter_4"}},{"text":"            "},{"score":{"name": "@s","objective": "counter_1"}}]
execute if score @s counter_3 matches 12.. run scoreboard players set @s counter_3 0

scoreboard players operation #team_number value = @s team_number


execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~ ~ 0.05 0.05 0.05 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~ ~ 0.05 0.05 0.05 0 2 force @a

particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force


execute at @s run teleport @s ^ ^ ^0.5


tag @s add 106_perforate_anchor
execute if entity @s[team=Red] as @e[team=!Red,distance=..4,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=106_perforate_anchor,distance=..0.9] run tag @s add 106_perforate_hit
execute if entity @s[team=Red] as @e[team=!Red,distance=..4,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=106_perforate_anchor,distance=..0.9] run tag @s add 106_perforate_hit

execute if entity @s[team=Blue] as @e[team=!Blue,distance=..4,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=106_perforate_anchor,distance=..0.9] run tag @s add 106_perforate_hit
execute if entity @s[team=Blue] as @e[team=!Blue,distance=..4,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=106_perforate_anchor,distance=..0.9] run tag @s add 106_perforate_hit

execute if entity @e[tag=106_perforate_hit,limit=1] run tag @s add kill
execute if entity @e[tag=106_perforate_hit,limit=1] run function project-c:jobaction/106/items/skill/13/hit
tag @s remove 106_perforate_anchor

scoreboard players reset #team_number

execute if score @s counter_1 matches 200.. run tag @s add kill

execute if entity @s[tag=kill] run teleport @s ~ ~-512 ~
execute if entity @s[tag=kill] run kill @s


execute unless entity @s[tag=kill] if score @s counter_2 matches ..4 at @s run function project-c:jobaction/106/items/skill/13/shot
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=kill] unless score @s counter_2 matches ..4 run scoreboard players set @s counter_2 0
