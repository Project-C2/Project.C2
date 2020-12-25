scoreboard players add #093- counter 1
summon area_effect_cloud ~ ~ ~ {Tags:["093_4","this"],Duration:70}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute if score #093- counter matches 1 run tp @e[tag=this] ~ ~4 ~ ~-25 0
execute if score #093- counter matches 2 run tp @e[tag=this] ~ ~4 ~ ~-15 0
execute if score #093- counter matches 3 run tp @e[tag=this] ~ ~4 ~ ~-5 0
execute if score #093- counter matches 4 run tp @e[tag=this] ~ ~4 ~ ~5 0
execute if score #093- counter matches 5 run tp @e[tag=this] ~ ~4 ~ ~15 0
execute if score #093- counter matches 6 run tp @e[tag=this] ~ ~4 ~ ~25 0
scoreboard players operation @e[tag=this] counter = #093- counter
scoreboard players remove @e[tag=this] counter 1
tag @e[tag=this] remove this
execute unless score #093- counter matches 6.. positioned ^-1 ^ ^ run function project-c:jobaction/093/skill/4/2-

