scoreboard players add @s counter 1


particle end_rod ~ ~ ~ 0 0 0 0.1 1 force @a

execute at @s if block ^ ^ ^1 #project-c:wancomatter/like_air run teleport @s ^ ^ ^1 ~ ~

execute as @s[tag=126-graifRed,scores={counter=30..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Tags:["126-typhoon","126-typhoonR"],Marker:1b}
execute as @s[tag=126-graifBlue,scores={counter=30..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Tags:["126-typhoon","126-typhoonB"],Marker:1b}

execute if entity @s[scores={counter=30..}] run data merge block -126 64 -11 {auto:1b}

kill @s[scores={counter=30..}]
execute as @e[tag=126-graif] at @s run function project-c:jobaction/126/skill/2/1laser