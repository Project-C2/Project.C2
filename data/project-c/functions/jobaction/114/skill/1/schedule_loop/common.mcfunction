scoreboard players add @s counter 1
scoreboard players add @s counter_1 40
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s counter_1
execute if score @s counter_1 matches 360.. run scoreboard players set @s counter_1 0