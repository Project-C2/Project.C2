
scoreboard players remove @s counter 1

particle dust 0.2 0 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 3 force
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["this"]}
execute anchored feet run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=this,limit=1] at @s rotated ~45 -65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~135 -65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~225 -65 run function project-c:jobaction/129/skill/2/totem/particle
execute as @e[tag=this,limit=1] at @s rotated ~315 -65 run function project-c:jobaction/129/skill/2/totem/particle

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

kill @e[tag=this]


tag @s remove 129-totem-me
scoreboard players add @s Mana 1
execute if score @s Mana matches 1 run playsound minecraft:block.conduit.ambient master @a ~ ~ ~ 1 1.3
execute if score @s Mana matches 61.. run scoreboard players set @s Mana 0

scoreboard players operation @s Damage = @s HarfHP
execute store result score @s HarfHP run data get entity @s Health 10
execute unless score @s Damage = @s HarfHP if score @s HarfHP matches 9800.. run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.2
execute unless score @s HarfHP matches 9800.. run function project-c:jobaction/129/skill/2/totem/break

execute unless score @s counter matches 1.. run function project-c:jobaction/129/skill/2/totem/end-check


scoreboard players reset #129- stockcounter