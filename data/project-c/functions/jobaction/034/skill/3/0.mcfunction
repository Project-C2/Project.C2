scoreboard players set @s CT3 400
summon minecraft:armor_stand ~ ~ ~ {Tags:["034-houndF"],Invisible:1b,NoGravity:1b,Marker:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=034-houndF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=034-houndF]
execute at @s anchored eyes run tp @e[tag=034-houndF] ^ ^ ^ ~ ~
execute as @e[tag=034-houndF] run function project-c:jobaction/034/skill/3/0a
kill @e[tag=034-houndF]

replaceitem entity @s hotbar.3 compass{display:{Name:"\"CoolTime\""}} 40
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3