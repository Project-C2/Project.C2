effect give @s minecraft:invisibility 1 0

execute if entity @s[scores={walk=1..}] if score #MenuTeamarmor counter matches 1..2 run scoreboard players set @s counter 1
execute if entity @s[scores={sprint=1..}] if score #MenuTeamarmor counter matches 1..2 run scoreboard players set @s counter 1

tag @s[scores={counter=1}] add SetArmor
execute if entity @s[scores={counter=1}] run data merge block -111 50 -122 {auto:1b}

scoreboard players reset @s counter

scoreboard players reset @s[scores={walk=1..}] counter_1
scoreboard players reset @s[scores={sprint=1..}] counter_1

effect clear @s[scores={walk=1..}] minecraft:invisibility
effect clear @s[scores={sprint=1..}] minecraft:invisibility