#判定
#スキル効果
#共通

playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 2 1
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0

particle flash ~ ~1.52 ~ 0 0 0 0 3 force @a
particle end_rod ~ ~1.52 ~ 0 0 0 0.4 50 force @a

effect give @s minecraft:slowness 1 8 true

execute if entity @s[scores={counter=1,counter_1=..2}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter=2,counter_2=..2}] run scoreboard players add @s counter_2 1
execute if entity @s[scores={counter=3,counter_3=..2}] run scoreboard players add @s counter_3 1
execute if entity @s[scores={counter=4,counter_4=..2}] run scoreboard players add @s counter_4 1
execute if entity @s[scores={counter=5,counter_5=..2}] run scoreboard players add @s counter_5 1
execute if entity @s[scores={counter=6,counter_6=..1}] run scoreboard players add @s counter_6 1
execute if entity @s[scores={counter=7,counter_7=..1}] run scoreboard players add @s counter_7 1
execute if entity @s[scores={counter=8,counter_8=..1}] run scoreboard players add @s counter_8 1

function project-c:jobaction/100/replaceitem/1

scoreboard players set @s counter 0