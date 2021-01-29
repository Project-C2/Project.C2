scoreboard players set @s CT3 800

scoreboard players set @s counter_3 10

effect clear @s slowness

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["121dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["121fire","121fireF"],Invisible:1b}
data modify entity @e[tag=121fireF,limit=1] Motion set from entity @e[tag=121dummy,limit=1] Pos
execute store result score @e[tag=121fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=121fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
kill @e[tag=121dummy]
tag @e[tag=121fireF] remove 121fireF

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
effect give @s resistance 1 4
effect give @s levitation 1 0 true

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
data merge block 84 61 -62 {auto:1b}