scoreboard players set @s CT1 700
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 25
scoreboard players set @s counter_1 1

tag @s add user
execute if entity @e[tag=102chest,limit=1] as @e[tag=102chest] if score @s playerNumber = @a[tag=user,limit=1] playerNumber run kill @s
tag @s remove user
summon armor_stand ~ ~-1.35 ~ {Tags:["102chest","this"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}],DisabledSlots:4144959}
tp @e[tag=this] ~ ~-1.35 ~ ~ 0
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=this,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this,limit=1]
tag @e[tag=this] remove this

playsound minecraft:block.chest.close master @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.chest.close master @a ~ ~ ~ 0.5 0.5


data merge block 119 2 89 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
