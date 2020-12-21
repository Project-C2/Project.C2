scoreboard players set @s CT2 900
scoreboard players remove @s subcounter 18
summon minecraft:armor_stand ~ ~ ~ {Tags:["031-necroB","031-necroFirst"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @e[tag=031-necroFirst,limit=1] at @s run function project-c:jobaction/031/skill/2/0a
execute at @s anchored eyes run tp @e[tag=031-necroFirst,limit=1] ^ ^ ^ ~ ~
execute if entity @s[team=Red] run team join RedDummy @e[tag=031-necroFirst,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=031-necroFirst,limit=1]
scoreboard players operation @e[tag=031-necroFirst,limit=1] playerNumber = @s playerNumber
tag @e[tag=031-necroFirst,limit=1] remove 031-necroFirst
particle minecraft:dust 0.4 0 0 2 ~ ~ ~ 2 0 2 1 160 normal @a
particle minecraft:dust 0.4 0 0 2 ~ ~ ~ 2 0 2 1 40 force @a
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 1 2 -71 {auto:1b}