execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^4 {Tags:["vector"],Duration:1}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["096_2arrow","this","Arrow"],damage:1.0d,life:1200s,pickup:2b,Passengers:[{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["096_2stand","this2"]}]}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
execute if entity @s[team=Red] run team join RedDummy @e[tag=this2]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this2]
data modify entity @e[tag=this2,limit=1] Rotation set from entity @s Rotation
kill @e[tag=vector]
tag @e[tag=this] remove this
tag @e[tag=this2] remove this2


playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2


data merge block 49 2 89 {auto:1b}
scoreboard players reset @s counter_1
