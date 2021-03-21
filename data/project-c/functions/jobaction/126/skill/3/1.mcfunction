scoreboard players add @s counter 1
scoreboard players add @s counter_1 1

execute if entity @s[tag=126-virvelR,scores={counter_1=11..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-typhoon","126-typhoonR"],Marker:1b}
execute if entity @s[tag=126-virvelB,scores={counter_1=11..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-typhoon","126-typhoonB"],Marker:1b}

execute if entity @s[scores={counter_1=11..}] run scoreboard players set @s counter_1 0

particle dust 1 1 1 3 ^ ^ ^ 0 0 0 0 0

teleport @s[scores={counter=..11}] ^ ^ ^1 ~12 ~
teleport @s[scores={counter=11..20}] ^ ^ ^1 ~6 ~
teleport @s[scores={counter=21..30}] ^ ^ ^1 ~4 ~
teleport @s[scores={counter=31..}] ^ ^ ^1 ~2 ~

data merge block -126 64 -11 {auto:1b}
kill @s[scores={counter=61..}]