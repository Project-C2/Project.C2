scoreboard players set @s CT3 1140
item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 3

summon armor_stand ~ ~ ~ {Tags:["096_3operate","096first"],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=096first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=096first]
scoreboard players operation @e[tag=096first,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=096first,limit=1] subcounter 2
tag @s add 096_3using
execute if entity @e[tag=096first,limit=1] as @e[tag=096first] at @s run function project-c:jobaction/096/skill/3/1
tag @e[tag=096first] remove 096first

schedule function project-c:jobaction/096/skill/3/schedule 1t replace
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

