summon area_effect_cloud ~ ~ ~ {Tags:["114-ToheiRailGunBullet"]}
execute rotated as @s run tp @e[tag=114-ToheiRailGunBullet] ^ ^ ^9.6 ~ ~
execute as @e[tag=114-ToheiRailGunBullet,limit=1] at @s run function project-c:jobaction/114/skill/3/schedule_loop/4


