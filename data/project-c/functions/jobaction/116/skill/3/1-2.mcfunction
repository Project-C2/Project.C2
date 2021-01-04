execute if data entity @s {OnGround:1b} run tag @s add flag
execute unless block ~ ~-0.9 ~ #project-c:wancomatter/like_air run tag @s add flag
execute unless block ~ ~0.9 ~ #project-c:wancomatter/like_air run tag @s add flag
execute if entity @s[tag=flag] run summon area_effect_cloud ~ ~ ~ {Age:0,Duration:3,Tags:["116_3AEC","116first"]}
execute if entity @s[tag=flag] run scoreboard players operation @e[tag=116first,limit=1] playerNumber = @s playerNumber
execute if entity @s[tag=flag] run tag @e[tag=116first] remove 116first
execute if entity @s[tag=flag] run tag @s remove flag
