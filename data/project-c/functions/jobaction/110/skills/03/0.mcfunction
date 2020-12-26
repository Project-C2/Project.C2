scoreboard players set #110- counter_3 1020
summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["this","110drainplant"],Duration:200}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
execute positioned ~ ~1 ~ run tp @e[tag=this,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=this] at @s run function project-c:jobaction/110/skills/03/check
execute if entity @s[team=Red] run tag @e[tag=this] add 110drainplantR
execute if entity @s[team=Blue] run tag @e[tag=this] add 110drainplantB
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this

tag @s add 110drainplant_user
data merge block -52 67 -62 {auto:1b}