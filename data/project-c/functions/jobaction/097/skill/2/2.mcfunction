scoreboard players set @s CT2 800
scoreboard players reset @s counter_5
clear @s spectral_arrow

execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:["vector"],Duration:1}
execute anchored eyes run summon minecraft:spectral_arrow ^ ^ ^0.5 {Tags:["097spectralArrow","this","Arrow"],damage:3.0d,life:1200s,pickup:2b,Duration:20,Glowing:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["097bluestar","this2"],Marker:1b,Invisible:1b,NoGravity:1b}]}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
data modify entity @e[tag=this2,limit=1] Rotation set from entity @s Rotation
execute if entity @s[team=Red] run team join Red @e[tag=this]
execute if entity @s[team=Blue] run team join Blue @e[tag=this]
execute if entity @s[team=Red] run team join RedDummy @e[tag=this2]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this2]
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=vector] remove vector
tag @e[tag=this] remove this
tag @e[tag=this2] remove this2

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0.5


data merge block 61 2 89 {auto:1b}
tag @s remove SkillDelay2
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2