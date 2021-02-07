scoreboard players set @s CT3 1200
execute store result score #-118 counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #-118 counter *= #20 counter

playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
particle dust 1 1 0 1 ~ ~1 ~ 1 1 1 0 60 force @a
particle firework ~ ~1 ~ 0.3 0.3 0.3 0.5 40 force @a

execute if entity @s[team=Red] run tag @a[tag=Battle,team=Red] add -118-3-h
execute if entity @s[team=Blue] run tag @a[tag=Battle,team=Blue] add -118-3-h
tag @s remove -118-3-h
tag @s add -118-3

execute store result score #-118 counter_2 if entity @a[tag=-118-3-h]
execute unless score #-118 counter_2 matches 1.. run scoreboard players set #-118 counter_2 1

scoreboard players operation #-118 counter *= #-118 counter_2

execute as @a[tag=-118-3-h] run tellraw @s ["",{"text":"バフ共有","color":"gold"},{"text":" <- "},{"selector":"@a[tag=-118-3,limit=1]"}]
execute as @a[tag=-118-3-h] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"Angel Grant","italic": false,"color": "gold","bold":true}',Tags:["-118-angel"],Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{}]}
execute as @a[tag=-118-3-h] at @s run particle dust 1 1 0 1 ~ ~1 ~ 1 1 1 0 60 force @a
execute as @a[tag=-118-3-h] at @s run particle firework ~ ~1 ~ 0.3 0.3 0.3 0.5 40 force @a
execute as @a[tag=-118-3-h] at @s run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2

execute as @e[tag=-118-angel] run data modify entity @s Effects set from entity @a[tag=-118-3,limit=1] ActiveEffects
execute as @e[tag=-118-angel,nbt={Effects:[{Id:2b}]}] run data remove entity @s Effects[{Id:2b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:4b}]}] run data remove entity @s Effects[{Id:4b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:9b}]}] run data remove entity @s Effects[{Id:9b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:15b}]}] run data remove entity @s Effects[{Id:15b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:17b}]}] run data remove entity @s Effects[{Id:17b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:18b}]}] run data remove entity @s Effects[{Id:18b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:19b}]}] run data remove entity @s Effects[{Id:19b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:20b}]}] run data remove entity @s Effects[{Id:20b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:24b}]}] run data remove entity @s Effects[{Id:24b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:25b}]}] run data remove entity @s Effects[{Id:25b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:27b}]}] run data remove entity @s Effects[{Id:27b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:28b}]}] run data remove entity @s Effects[{Id:28b}]
execute as @e[tag=-118-angel,nbt={Effects:[{Id:31b}]}] run data remove entity @s Effects[{Id:31b}]
execute as @e[tag=-118-angel] run tag @s remove -118-angel

execute as @a[tag=-118-3-h] run tag @s remove -118-3-h

scoreboard players operation @s CT3 -= #-118 counter

execute if score @s CT3 matches ..-1 run scoreboard players set @s CT3 0
scoreboard players reset #-118

tag @s remove -118-3

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3