scoreboard players add @s counter 1
particle minecraft:flash ^ ^ ^ 0.1 0.1 0.1 1 1 force
execute if entity @s[scores={counter=..49}] run teleport @s ^ ^ ^ ~6 ~

execute rotated ~120 -1.1 run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 0 0 ^ ^ ^4 0.1 0.1 0.1 3 4 force
execute rotated ~240 -1.1 run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 0 0 ^ ^ ^4 0.1 0.1 0.1 3 4 force
execute rotated ~0 -1.1 run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 0 0 ^ ^ ^4 0.1 0.1 0.1 3 4 force

execute if entity @s[scores={counter=50..83}] run teleport @s ^ ^0.3 ^ ~6 ~
execute if entity @s[scores={counter=83..}] run teleport @s ^ ^1 ^ ~6 ~
execute if entity @s[scores={counter=55}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1.9
execute if entity @s[scores={counter=55}] run function project-c:jobaction/017/skill/3/2
execute if entity @s[scores={counter=62}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1.6
execute if entity @s[scores={counter=62}] run function project-c:jobaction/017/skill/3/2
execute if entity @s[scores={counter=69}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1.3
execute if entity @s[scores={counter=69}] run function project-c:jobaction/017/skill/3/2
execute if entity @s[scores={counter=76}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1.2
execute if entity @s[scores={counter=76}] run function project-c:jobaction/017/skill/3/2
execute if entity @s[scores={counter=83}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1
execute if entity @s[scores={counter=83}] run function project-c:jobaction/017/skill/3/2

execute if entity @s[scores={counter=50..}] run particle minecraft:end_rod ^ ^ ^ 0 4 0 0 30 force
execute if entity @s[scores={counter=50..}] run particle minecraft:flame ^ ^ ^ 0 0 0 0.2 20 force
execute if entity @s[scores={counter=141}] run function project-c:jobaction/017/skill/3/3
kill @s[scores={counter=141..}]