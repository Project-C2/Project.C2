scoreboard players set @s CT2 1180
summon minecraft:armor_stand ~ ~ ~ {Tags:["131-necroB","131-necroFirst"],Invisible:1b,NoGravity:1b,Marker:1b}
execute as @e[tag=131-necroFirst,limit=1] at @s run function project-c:jobaction/131/skill/2/0a
execute at @s anchored eyes run tp @e[tag=131-necroFirst,limit=1] ^ ^ ^ ~ ~
execute if entity @s[team=Red] run team join RedDummy @e[tag=131-necroFirst,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=131-necroFirst,limit=1]
scoreboard players operation @e[tag=131-necroFirst,limit=1] playerNumber = @s playerNumber
tag @e[tag=131-necroFirst,limit=1] remove 131-necroFirst
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force @a[distance=1..]
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5

scoreboard players set @s counter_5 100
scoreboard players set @s counter_6 1



tag @s add user

execute if entity @e[tag=131-necroC,limit=1] as @e[tag=131-necroC] if score @s playerNumber = @a[tag=user,limit=1] playerNumber run kill @s

tag @s remove user

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -62 61 -11 {auto:1b}