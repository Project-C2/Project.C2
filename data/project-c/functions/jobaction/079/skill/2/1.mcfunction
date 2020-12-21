scoreboard players add @s counter 1
kill @s[scores={counter=21..}]

particle flash ~ ~ ~ 0 0 0 1 3 force @a
particle end_rod ~ ~ ~ 0 0 0 1 1 force @a
particle end_rod ~ ~ ~ 0 0 0 0.1 5 force @a



execute if entity @s[tag=079-starabyssR] run tag @a[distance=..3,team=Red] add 079starheal
execute if entity @s[tag=079-starabyssR] run effect give @e[team=Blue,distance=..3] instant_damage 1 1

execute if entity @s[tag=079-starabyssB] run tag @a[distance=..3,team=Blue] add 079starheal
execute if entity @s[tag=079-starabyssB] run effect give @e[team=Red,distance=..3] instant_damage 1 1



execute if entity @s[scores={counter=20}] as @a[tag=079starheal] at @s run effect give @s instant_health 1 1
execute if entity @s[scores={counter=20}] as @a[tag=079starheal] at @s run tag @s remove 079starheal

execute if entity @s[tag=079-starabyss1] run tp @s ~1 ~ ~
execute if entity @s[tag=079-starabyss2] run tp @s ~-1 ~ ~
execute if entity @s[tag=079-starabyss3] run tp @s ~ ~ ~1
execute if entity @s[tag=079-starabyss4] run tp @s ~ ~ ~-1