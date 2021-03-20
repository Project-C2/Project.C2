execute if score @s CT1 matches 1201.. run scoreboard players set @s CT1 1200
scoreboard players remove @s CT1 80
tag @s remove SkillReady1
clear @s compass{CT:1}

execute if score @s stockcounter matches 2.. run scoreboard players set @s CT3 1200
execute if score @s stockcounter matches 2.. run scoreboard players set @s subcounter 1200
execute if score @s stockcounter matches 3.. run scoreboard players set @s stockcounter 2
scoreboard players remove @s stockcounter 1
execute unless score @s stockcounter matches 1.. run execute store result score #123- CT3 run data get entity @s SelectedItem.tag.wnkmCT 1
execute unless score @s stockcounter matches 1.. run scoreboard players operation @s CT3 -= #123- CT3
execute if score #123- CT3 matches 1.. run scoreboard players reset #123- CT3

tp @s ~ ~ ~ ~ ~-7.4
playsound minecraft:entity.wither.break_block master @a ^ ^ ^2 2.1 0.6
playsound minecraft:entity.generic.explode master @a ^ ^ ^2 2.1 0.9
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^0.01 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^0.02 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^0.03 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^-0.01 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^-0.02 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^-0.03 ^ ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^0.01 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^0.02 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^0.03 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^-0.01 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^-0.02 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ^ ^-0.03 ^0.15 {Tags:["123crossFire","first","Battle"],Duration:5,Age:0,Radius:0f}

execute as @e[tag=first] run data modify entity @s Owner set from entity @a[scores={jobNumber=123},limit=1,sort=nearest,gamemode=!spectator] UUID
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute anchored eyes positioned ^ ^ ^ as @e[tag=first] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=first] remove first

data merge block 108 61 -62 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3