scoreboard players add @s counter_2 1

execute if entity @s[nbt={OnGround:1b}] run tag @s add flag
execute if entity @s[tag=flag] if score @s counter_2 matches 5.. run function project-c:jobaction/116/skill/2/2
execute if entity @s[tag=flag] run scoreboard players reset @s counter_2
execute if entity @s[tag=flag] run tag @s remove flag