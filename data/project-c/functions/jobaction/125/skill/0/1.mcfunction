scoreboard players add @s counter 1

kill @e[tag=125bulletStand,distance=..5,limit=1]
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["125bulletStand"]}

kill @s[scores={counter=60..}]