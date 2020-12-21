execute unless block ^ ^ ^2 air run tag @s add 061-iceWall
execute unless block ^ ^ ^1 air run tag @s add 061-iceWall
teleport @s[tag=!061-iceWall] ^ ^ ^2 ~ ~
data merge entity @s[tag=061-iceWall] {NoGravity:0b}
execute if entity @s[tag=061-iceWall] unless block ~ ~-0.1 ~ air run tag @s add 061-iceHit

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1 force @a

scoreboard players add @s counter 1

execute as @s[tag=061-iceHit] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 2 2 2 1 100 force @a
execute as @s[tag=061-iceHit] at @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 1 1 1 1 20 force @a
execute as @s[tag=061-iceHit] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 force @a

execute as @s[tag=061-iceHit,tag=061-iceR] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ices","061-ice2","061-iceR2"]}
execute as @s[tag=061-iceHit,tag=061-iceR] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ices","061-ice3","061-iceR2"]}

execute as @s[tag=061-iceHit,tag=061-iceB] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ices","061-ice2","061-iceB2"]}
execute as @s[tag=061-iceHit,tag=061-iceB] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ices","061-ice3","061-iceB2"]}

execute as @s[tag=061-iceHit] at @s run teleport @e[limit=1,sort=nearest,tag=061-ice2] ^ ^0.3 ^ ~90 0
execute as @s[tag=061-iceHit] at @s run teleport @e[limit=1,sort=nearest,tag=061-ice3] ^ ^0.3 ^ ~-90 0
execute as @s[tag=061-iceHit] at @s run data merge block 133 5 20 {auto:1b}
execute as @s[tag=061-iceHit] at @s run kill @s

kill @s[scores={counter=100..}]