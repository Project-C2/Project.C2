#CT
execute if entity @s[scores={subcounter=0}] run scoreboard players set @s counter_1 3
execute if entity @s[scores={subcounter=1}] run scoreboard players set @s counter_2 3
execute if entity @s[scores={subcounter=2}] run scoreboard players set @s counter_3 3

scoreboard players add @s subcounter 1

execute if entity @s[scores={subcounter=3..}] run scoreboard players set @s subcounter 0

function project-c:jobaction/059/effectope

playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.25 1