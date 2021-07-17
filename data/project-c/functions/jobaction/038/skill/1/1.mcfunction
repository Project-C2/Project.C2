scoreboard players add @s counter_1 1
particle minecraft:sweep_attack ~ ~1 ~ 0.8 1 0.8 1 2
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.35 2
execute if entity @s[scores={counter_1=101..}] run function project-c:jobaction/038/skill/1/2