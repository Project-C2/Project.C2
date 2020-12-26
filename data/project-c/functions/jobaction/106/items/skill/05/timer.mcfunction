#スキル5
execute if score @s counter matches 1.. run scoreboard players remove @s counter 1

#0.2 0.3 0.2 0 1



execute if score @s deathCount matches 1.. run scoreboard players reset @s counter

execute if entity @s[x_rotation=90] unless score @s counter matches 0 run scoreboard players set @s counter 0
execute if score @s counter matches 0 run function project-c:jobaction/106/items/skill/05/return


execute if score @s counter matches 0 run scoreboard players reset @s counter