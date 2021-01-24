scoreboard players set @s counter_4 60
execute unless entity @e[tag=119_2vector,limit=1] run summon area_effect_cloud 0.0 1.0 0.0 {Tags:["119_2vector"],Duration:1}
execute positioned ~ ~0.5 ~ run function project-c:jobaction/119/skill/2/summon1
scoreboard players set @s counter_4 50
execute positioned ~ ~0.5 ~ run function project-c:jobaction/119/skill/2/summon2
scoreboard players set @s counter_4 40
execute positioned ~ ~0.5 ~ run function project-c:jobaction/119/skill/2/summon3
data merge block 56 61 -62 {auto:1b}

playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 0.7 1
playsound minecraft:entity.illusioner.prepare_blindness master @a[tag=!user] ~ ~ ~ 1.3 1
particle falling_dust minecraft:pink_wool ~ ~ ~ 1.1 1.1 1.1 0 80 normal @s
particle falling_dust minecraft:pink_wool ~ ~ ~ 1.1 1.1 1.1 0 20 force @s
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0 40 normal @a
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
particle minecraft:crimson_spore ~ ~ ~ 0.4 0.4 0.4 1 400 normal @a
particle minecraft:crimson_spore ~ ~ ~ 0 0 0 1 100 force a
particle flash ~ ~ ~ 0.2 0.2 0.2 1 4 normal @a
particle flash ~ ~ ~ 0 0 0 1 1 force @a

execute as @a[tag=user] run function project-c:jobaction/119/skill/2/3

kill @s