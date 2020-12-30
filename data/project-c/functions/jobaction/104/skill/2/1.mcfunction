scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 2..7 run tp @s ~ ~ ~ ~-60 ~
execute if score @s counter_3 matches 2..7 run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1 1.6
execute if score @s counter_3 matches 5 run function project-c:jobaction/104/skill/2/2
execute if score @s counter_3 matches 5..9 run function project-c:jobaction/104/skill/2/3
execute if score @s counter_3 matches 10 run function project-c:jobaction/104/skill/2/4
