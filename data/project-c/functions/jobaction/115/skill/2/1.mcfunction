execute unless score @s counter_6 matches 1..2 run function project-c:jobaction/115/skill/2/pattern/1
execute if score @s counter_6 matches 1 run function project-c:jobaction/115/skill/2/pattern/2
execute if score @s counter_6 matches 2 run function project-c:jobaction/115/skill/2/pattern/3

execute if entity @s[scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/115/skill/2/2

scoreboard players add @s counter_8 1
execute unless score @s counter_8 matches 1..10 run scoreboard players set @s counter_8 1
