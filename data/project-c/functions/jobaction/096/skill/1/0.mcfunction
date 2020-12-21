scoreboard players set @s CT1 1040
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 8

summon armor_stand ~ ~ ~ {Tags:["096shine","this"],NoGravity:1b,Marker:1b,Invisible:1b}
execute anchored eyes run tp @e[tag=this] ^ ^ ^ ~ ~
execute if entity @s[team=Red] run team join RedDummy @e[tag=this]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this]
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.2 0.5


data merge block 47 2 89 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
