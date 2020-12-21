#CT
scoreboard players set @s CT1 1180
scoreboard players set @s CT2 1180
scoreboard players set @s CT3 1180

#スキル効果
#共通
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 1
particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a
effect give @s slowness 1 1 true

execute anchored eyes if entity @s[team=Red] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["059-2","059-2R","059-2Summoned"]}
#Blue
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["059-2","059-2B","059-2Summoned"]}

execute at @e[tag=059-2Summoned] rotated as @s run teleport @e[limit=1,sort=nearest,tag=059-2Summoned] ~ ~ ~ ~ ~

tag @e[tag=059-2Summoned] remove 059-2Summoned

#リセット
tag @s remove SkillReady1
tag @s remove SkillReady2
tag @s remove SkillReady3
scoreboard players set @s usedSkill 2
execute as @e[tag=059-2] at @s run function project-c:jobaction/059/skill/2/1
