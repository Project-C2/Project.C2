scoreboard players set @s CT3 1200
execute store result score #118-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #118-- counter *= #20 counter

playsound minecraft:entity.enderman.death master @a ~ ~ ~ 10 0.86
particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.7 20 force @a
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.7 20 force @a

execute if entity @s[team=Red] run tag @a[tag=Battle,team=!Red] add 118-3---h
execute if entity @s[team=Blue] run tag @a[tag=Battle,team=!Blue] add 118-3---h
tag @s add 118-3--

execute store result score #118-- counter_2 if entity @a[tag=118-3---h]
execute unless score #118-- counter_2 matches 1.. run scoreboard players set #118-- counter_2 1

scoreboard players operation #118-- counter *= #118-- counter_2

execute as @a[tag=118-3---h] run tellraw @s ["",{"text":"デバフ共有","color":"dark_purple"},{"text":" <- "},{"selector":"@a[tag=118-3--,limit=1]"}]
execute as @a[tag=118-3---h] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"Evil Resonance","italic": false,"color": "dark_purple","bold":true}',Tags:["118-evil"],Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{}]}
execute as @a[tag=118-3---h] at @s run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.7 20 force @a
execute as @a[tag=118-3---h] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.7 20 force @a
execute as @a[tag=118-3---h] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 0.86

execute as @e[tag=118-evil] run data modify entity @s Effects set from entity @a[tag=118-3--,limit=1] ActiveEffects
execute as @e[tag=118-evil,nbt={Effects:[{Id:1b}]}] run data remove entity @s Effects[{Id:1b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:3b}]}] run data remove entity @s Effects[{Id:3b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:5b}]}] run data remove entity @s Effects[{Id:5b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:6b}]}] run data remove entity @s Effects[{Id:6b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:8b}]}] run data remove entity @s Effects[{Id:8b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:10b}]}] run data remove entity @s Effects[{Id:10b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:11b}]}] run data remove entity @s Effects[{Id:11b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:12b}]}] run data remove entity @s Effects[{Id:12b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:13b}]}] run data remove entity @s Effects[{Id:13b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:14b}]}] run data remove entity @s Effects[{Id:14b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:16b}]}] run data remove entity @s Effects[{Id:16b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:21b}]}] run data remove entity @s Effects[{Id:21b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:22b}]}] run data remove entity @s Effects[{Id:22b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:23b}]}] run data remove entity @s Effects[{Id:23b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:26b}]}] run data remove entity @s Effects[{Id:26b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:28b}]}] run data remove entity @s Effects[{Id:28b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:29b}]}] run data remove entity @s Effects[{Id:29b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:30b}]}] run data remove entity @s Effects[{Id:30b}]
execute as @e[tag=118-evil,nbt={Effects:[{Id:32b}]}] run data remove entity @s Effects[{Id:32b}]
execute as @e[tag=118-evil] run tag @s remove 118-evil

execute as @a[tag=118-3---h] run tag @s remove 118-3---h

scoreboard players operation @s CT3 -= #118-- counter

execute if score @s CT3 matches ..-1 run scoreboard players set @s CT3 0
scoreboard players reset #118--

tag @s remove 118-3--

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3