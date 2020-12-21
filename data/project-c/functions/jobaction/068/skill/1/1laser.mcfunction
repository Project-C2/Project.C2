scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[scores={counter=60..}]

particle lava ~ ~ ~ 0 0 0 1 1 force @a

teleport @s ^ ^ ^1 ~ ~
execute if entity @a[distance=..1] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-kmong"],NoGravity:1b,Marker:1b}
execute if entity @a[distance=..1] run kill @s

execute unless block ^ ^ ^1 air run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-kmong"],NoGravity:1b,Marker:1b}
execute unless block ^ ^ ^1 air run kill @s

execute if entity @e[tag=068-kmong] run data merge block -37 2 31 {auto:1b}

execute as @e[tag=068-km] at @s run function project-c:jobaction/068/skill/1/1laser