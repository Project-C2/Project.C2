scoreboard players set #110- counter_3 900
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this","110suirou"],Duration:200}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID

execute positioned ~ ~ ~ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
execute if entity @s[team=Red] run tag @e[tag=this] add 110suirouR
execute if entity @s[team=Blue] run tag @e[tag=this] add 110suirouB
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
data merge block -52 76 -62 {auto:1b}