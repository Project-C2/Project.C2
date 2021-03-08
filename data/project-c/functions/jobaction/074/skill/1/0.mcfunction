scoreboard players set @s CT1 940
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 13

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["074dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["074fire","074fireF","Arrow"],damage:0.1d,Fire:32767s,life:1198s,pickup:2b,Color:-1,PierceLevel:127b,Potion:"minecraft:harming"}
data modify entity @e[tag=074fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=074fireF,limit=1] Motion set from entity @e[tag=074dummy,limit=1] Pos
execute store result score @e[tag=074fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=074fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=074fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=074fireF]
kill @e[tag=074dummy]
tag @e[tag=074fireF] remove 074fireF

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
data merge block 35 2 31 {auto:1b}
#data merge block 35 2 33 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1