scoreboard players set @s CT1 1000

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Glowing:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b}],Pose:{Head:[90f,45f,60f]},Tags:["039-short","039-first"]}
scoreboard players operation @e[tag=039-first,limit=1] playerNumber = @s playerNumber
gamemode spectator @s
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 90 normal @a
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 30 force @a
execute if entity @s[team=Red] run team join RedDummy @e[tag=039-first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=039-first]
tag @e[tag=039-first] remove 039-first
data merge block 95 2 -71 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1