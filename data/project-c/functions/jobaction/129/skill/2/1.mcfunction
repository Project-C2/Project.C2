
scoreboard players remove @s counter 1

particle dust 0.2 0 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 3 force
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["this"]}
execute anchored feet run tp @e[tag=this,limit=1] ~ ~2.05 ~ ~ ~
execute as @e[tag=this,limit=1] at @s rotated ~45 65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~135 65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~225 65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~315 65 run function project-c:jobaction/129/skill/2/totem/particle

execute at @s run tp @s ~ ~ ~ ~1 0

scoreboard players operation #129- stockcounter = @s stockcounter

execute as @e[tag=129-totem-skull] if score @s stockcounter = #129- stockcounter run tag @s add 129-totem-set
tag @s add 129-totem-me

execute as @e[tag=129-totem-set,tag=129-ts1] rotated as @e[tag=129-totem-me] rotated ~ 0 positioned ^ ^ ^0.7 facing entity @e[tag=129-totem-me,limit=1] feet positioned ^-0.15 ^ ^ run tp @s ~ ~0.5 ~ ~3 ~
execute as @e[tag=129-totem-set,tag=129-ts2] rotated as @e[tag=129-totem-me] rotated ~90 0 positioned ^ ^ ^0.7 facing entity @e[tag=129-totem-me,limit=1] feet positioned ^-0.15 ^ ^ run tp @s ~ ~0.5 ~ ~3 ~
execute as @e[tag=129-totem-set,tag=129-ts3] rotated as @e[tag=129-totem-me] rotated ~180 0 positioned ^ ^ ^0.7 facing entity @e[tag=129-totem-me,limit=1] feet positioned ^-0.15 ^ ^ run tp @s ~ ~0.5 ~ ~3 ~
execute as @e[tag=129-totem-set,tag=129-ts4] rotated as @e[tag=129-totem-me] rotated ~270 0 positioned ^ ^ ^0.7 facing entity @e[tag=129-totem-me,limit=1] feet positioned ^-0.15 ^ ^ run tp @s ~ ~0.5 ~ ~3 ~
execute as @e[tag=129-totem-set] run tag @s remove 129-totem-set



execute at @s rotated ~ 0 positioned ^ ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~ 0 positioned ^0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~ 0 positioned ^-0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~ 0 positioned ^0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~ 0 positioned ^-0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force


execute at @s rotated ~90 0 positioned ^ ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~90 0 positioned ^0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~90 0 positioned ^-0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~90 0 positioned ^0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~90 0 positioned ^-0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force


execute at @s rotated ~180 0 positioned ^ ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~180 0 positioned ^0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~180 0 positioned ^-0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~180 0 positioned ^0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~180 0 positioned ^-0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force


execute at @s rotated ~270 0 positioned ^ ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~270 0 positioned ^0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~270 0 positioned ^-0.1 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~270 0 positioned ^0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force
execute at @s rotated ~270 0 positioned ^-0.2 ^ ^0.35 run particle dust 0.7 0 0 0.3 ~ ~1 ~ 0 0 0 0 1 force


execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 18 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 36 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 54 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 72 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 108 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 126 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 144 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 162 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 198 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 216 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 234 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 252 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 288 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 306 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 324 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 342 0 run particle dust 0.3 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force



kill @e[tag=this]


scoreboard players add @s Mana 1
execute if score @s Mana matches 1 run playsound minecraft:block.conduit.ambient master @a ~ ~ ~ 1 1.3
execute if score @s Mana matches 61.. run scoreboard players set @s Mana 0


execute as @e[type=villager,tag=129-totemV] if score @s stockcounter = #129- stockcounter run tag @s add 129-totemV-check

execute if entity @e[tag=129-totemV-check,limit=1] as @e[tag=129-totemV-check] store result score #129- HarfHP run data get entity @s Health 10

execute unless entity @e[tag=129-totemV-check,limit=1] run function project-c:jobaction/129/skill/2/totem/replace-villager

execute if entity @e[tag=129-totemV-check,limit=1] as @e[tag=129-totemV-check] run tag @s remove 129-totemV-check

scoreboard players operation @s Damage = @s HarfHP
scoreboard players operation @s HarfHP = #129- HarfHP
#10000-nを値にします　nは体力のx10
scoreboard players set #129- counter_6 10001
scoreboard players remove #129- counter_6 250
execute unless score @s Damage = @s HarfHP if score @s HarfHP > #129- counter_6 run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.2
execute unless score @s HarfHP > #129- counter_6 run function project-c:jobaction/129/skill/2/totem/break

execute unless score @s counter matches 1.. run function project-c:jobaction/129/skill/2/totem/end-check


scoreboard players reset #129-

tag @s remove 129-totem-me