summon area_effect_cloud ~ ~ ~ {Tags:["114-ToheiRailGunBullet"]}
execute rotated as @s run tp @e[tag=114-ToheiRailGunBullet] ^ ^ ^9.6 ~ ~
execute as @e[tag=114-ToheiRailGunBullet,limit=1] at @s run function project-c:jobaction/114/skill/3/schedule_loop/4

###自壊演出
particle minecraft:explosion_emitter ^ ^ ^ 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^1 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^2 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^3 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^4 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^5 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^6 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^7 0 0 0 1 1 force @a[distance=..64]
particle minecraft:explosion_emitter ^ ^ ^8 0 0 0 1 1 force @a[distance=..64]