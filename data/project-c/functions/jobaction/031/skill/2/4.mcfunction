scoreboard players set @s CT2 1100
scoreboard players remove @s subcounter 10
summon minecraft:armor_stand ~ ~ ~ {Tags:["031-BloodMoon"],Invisible:1b,NoGravity:1b,Marker:1b}
particle minecraft:dust 0.4 0 0 2 ~ ~ ~ 2 0 2 1 160 normal @a
particle minecraft:dust 0.4 0 0 2 ~ ~ ~ 2 0 2 1 40 force @a
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0.7
playsound minecraft:block.portal.travel master @a ~ ~ ~ 2 1
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"血の夜が始まった!!","bold":true}]

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 1 8 -71 {auto:1b}