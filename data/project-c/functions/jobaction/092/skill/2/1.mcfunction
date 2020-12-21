scoreboard players add @s counter 1

execute if score @s counter matches 10 run data merge entity @s {Marker:1b,NoGravity:1b}
execute if score @s counter matches 10 run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 1
execute if score @s counter matches 11..62 run function project-c:jobaction/092/skill/2/2
#execute if score @s counter matches 11 run 

execute if score @s counter matches 65 run function project-c:jobaction/092/skill/2/3
execute if score @s counter matches 135 run function project-c:jobaction/092/skill/2/3
execute if score @s counter matches 205 run function project-c:jobaction/092/skill/2/4