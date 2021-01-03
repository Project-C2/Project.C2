scoreboard players set @s CT1 1180
scoreboard players reset @s useCarrotStick

scoreboard players remove @s counter_2 1
function project-c:jobaction/035/setarrow

execute anchored eyes positioned ^ ^ ^3 run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 50 normal @a
execute anchored eyes positioned ^ ^ ^3 run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 2
execute anchored eyes positioned ^ ^ ^3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.5
execute anchored eyes positioned ^ ^ ^3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.5
summon minecraft:armor_stand ~ ~ ~ {Tags:["035-first","035-Bow","035-1Bow"],Invisible:1b,NoGravity:1b,Marker:1b}
execute anchored eyes positioned ^ ^ ^2 run tp @e[tag=035-first,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=035-first,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=035-first] subcounter 9


data merge block 47 2 -71 {auto:1b}
tag @e[tag=035-first] remove 035-first
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1