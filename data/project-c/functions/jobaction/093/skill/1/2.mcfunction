execute store result entity @s Rotation[0] float 0.1 run scoreboard players add @s counter_1 93
execute if score @s counter_2 matches ..-185 store result entity @s Rotation[1] float 0.1 run scoreboard players add @s counter_2 15
execute at @s run function project-c:jobaction/093/skill/1/2-shot
execute at @s run tp @s ~ ~ ~ ~120 ~
execute at @s run function project-c:jobaction/093/skill/1/2-shot
execute at @s run tp @s ~ ~ ~ ~120 ~
execute at @s run function project-c:jobaction/093/skill/1/2-shot
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2.25 1
particle minecraft:explosion ~ ~0.2 ~ 0.1 0.1 0.1 1 1 normal @a
particle minecraft:flash ~ ~0.2 ~ 0 0 0 1 1 force @a

