summon area_effect_cloud ~ ~ ~ {Age:0,Duration:3,Tags:["116_1AEC","116first"]}
scoreboard players operation @e[tag=116first,limit=1] playerNumber = @s playerNumber
tag @e[tag=116first] remove 116first
