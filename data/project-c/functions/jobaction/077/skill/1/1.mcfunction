scoreboard players set @s CT1 1000

scoreboard players set @s Mana 10

effect clear @s slowness

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["077dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["077fire","077fireF"],Invisible:1b}
data modify entity @e[tag=077fireF,limit=1] Motion set from entity @e[tag=077dummy,limit=1] Pos
execute store result score @e[tag=077fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=077fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
kill @e[tag=077dummy]
tag @e[tag=077fireF] remove 077fireF

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
effect give @s resistance 1 4
effect give @s levitation 1 0 true

scoreboard players operation @s subcounter = @s counter_1
scoreboard players operation @s subcounter /= #2 counter
scoreboard players set @s counter_1 0

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
data merge block 71 2 31 {auto:1b}