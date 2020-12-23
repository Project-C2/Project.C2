scoreboard players add @s counter_2 1
execute if score @s counter_2 matches ..2 run tp @s @s

execute if score @s counter_2 matches 6 run playsound entity.arrow.hit_player master @a ~ ~ ~ 0.85 0.5
execute if score @s counter_2 matches 7..10 run tp @s @s
execute if score @s counter_2 matches 12 run function project-c:jobaction/109/skill/1/2
