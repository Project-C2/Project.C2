effect give @s instant_health 1 0 true
execute if score @s CT1 matches ..1199 run scoreboard players add @s CT1 40
execute if score @s CT2 matches ..1199 run scoreboard players add @s CT2 40
execute if score @s CT3 matches ..1199 run scoreboard players add @s CT3 40


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.45 2
particle minecraft:dust 0 0.6 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a
particle minecraft:dust 0 0.6 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 20 normal @s

scoreboard players set @e[tag=065,scores={counter=40}] counter 0