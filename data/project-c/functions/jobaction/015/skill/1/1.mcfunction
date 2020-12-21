#実行者     -> tag=15-1-Stand && tag=skillStage1
#実行地点   -> tag=15-1-particle

scoreboard players add @s counter 1

#Particle
particle minecraft:cloud ~ ~0.35 ~ 1 0 1 0 1 force
particle block minecraft:purple_wool ~ ~ ~ 1 0 1 0 8 force
execute if entity @s[scores={counter=21..}] run particle minecraft:dragon_breath ~ ~0.5 ~ 1 0 1 0.1 2 force
execute if entity @s[scores={counter=21..}] run particle block minecraft:red_nether_bricks ~ ~0.5 ~ 1 0 1 0 8 force

#Sounds
execute if entity @s[scores={counter=1}] run playsound minecraft:ambient.cave master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=21}] run playsound minecraft:entity.ghast.ambient master @a ~ ~ ~ 1 0.5

#teleport
execute positioned as @s run teleport @s[scores={counter=21..60}] ~ ~0.05 ~

execute if entity @s[scores={counter=60..}] run function project-c:jobaction/015/skill/1/1-2