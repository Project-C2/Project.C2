scoreboard players add @s counter 1
kill @s[scores={counter=80..}]
particle minecraft:dust 1 0.2 0.2 3 ~ ~ ~ 0 0 0 1 1 force @a

teleport @s ^ ^ ^1 ~ ~
execute if entity @a[distance=..1] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-beong"],NoGravity:1b,Marker:1b}
execute if entity @a[distance=..1] run kill @s

execute unless block ^ ^ ^1 air run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-beong"],NoGravity:1b,Marker:1b}
execute unless block ^ ^ ^1 air run kill @s

execute as @e[tag=068-be] at @s run function project-c:jobaction/068/skill/0/1