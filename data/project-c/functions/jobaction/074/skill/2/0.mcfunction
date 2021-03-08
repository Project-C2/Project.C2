scoreboard players set @s CT2 940
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 13

execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["074dummy","074lavajav"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run tp @e[tag=074dummy] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=074dummy] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=074dummy]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=074dummy]
tag @e[tag=074dummy] remove 074dummy


kill @e[tag=074test]
data merge block 37 2 31 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2