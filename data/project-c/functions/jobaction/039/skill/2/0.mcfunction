scoreboard players set @s CT2 1000

summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Glowing:1b,ArmorItems:[{},{},{},{id:"minecraft:bow",Count:1b}],Pose:{Head:[135f,0f,0f]},Tags:["039-bow","039-first"]}
scoreboard players operation @e[tag=039-first,limit=1] playerNumber = @s playerNumber
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.2 2
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 90 normal @a
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 30 force @a
execute if entity @s[team=Red] run team join RedDummy @e[tag=039-first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=039-first]
tag @e[tag=039-first] remove 039-first
data merge block 97 2 -71 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2