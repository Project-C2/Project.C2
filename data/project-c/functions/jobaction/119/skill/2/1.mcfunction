scoreboard players add @s counter 1
execute if score @s counter matches 3 run function project-c:jobaction/119/skill/2/tick1
execute if score @s counter matches 4.. run function project-c:jobaction/119/skill/2/check_motion
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s counter_1
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s counter_2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s counter_3

scoreboard players operation #119- playerNumber = @s playerNumber
execute as @a[tag=119_2using] if score @s playerNumber = #119- playerNumber run tag @s add user

particle block pink_wool ~ ~ ~ 0 0 0 1 4 normal @a[tag=user]
particle block pink_wool ~ ~ ~ 0 0 0 1 1 force @a[tag=user]
particle falling_dust snow ~ ~ ~ 0.34 0.34 0.34 1 4 normal @a[tag=user]
particle falling_dust snow ~ ~ ~ 0.34 0.34 0.34 1 1 force @a[tag=user]
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.24 1.4

execute if score @s counter matches 200.. run function project-c:jobaction/119/skill/2/2
tag @a[tag=user] remove user
