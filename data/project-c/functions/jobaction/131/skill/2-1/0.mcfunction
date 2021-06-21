scoreboard players set @s CT2 600
summon minecraft:armor_stand ~ ~ ~ {Tags:["131-necroB1","131-necroFirst"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @e[tag=131-necroFirst,limit=1] at @s run function project-c:jobaction/131/skill/2/0a
execute at @s anchored eyes run tp @e[tag=131-necroFirst,limit=1] ^ ^ ^ ~ ~
execute if entity @s[team=Red] run team join RedDummy @e[tag=131-necroFirst,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=131-necroFirst,limit=1]
scoreboard players operation @e[tag=131-necroFirst,limit=1] playerNumber = @s playerNumber
tag @e[tag=131-necroFirst,limit=1] remove 131-necroFirst
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force @a[distance=1..]
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5

scoreboard players set @s counter_5 0
scoreboard players set @s counter_6 0


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -60 61 -11 {auto:1b}