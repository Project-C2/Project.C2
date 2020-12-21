teleport @s ^ ^ ^1
execute if entity @s[tag=047-3R] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-32","047-32R"]}
execute if entity @s[tag=047-3B] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-32","047-32B"]}
teleport @s ^ ^ ^1
execute if entity @s[tag=047-3R] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-32","047-32R"]}
execute if entity @s[tag=047-3B] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-32","047-32B"]}
kill @s[scores={counter=50..}]
scoreboard players add @s counter 1
data merge block -57 2 -16 {auto:1b}