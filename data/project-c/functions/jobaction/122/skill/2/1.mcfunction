scoreboard players reset @s counter_2
effect clear @s slowness
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 0.55
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.7
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.7

particle minecraft:cloud ~ ~ ~ 0 0 0 1 800 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 200 force @a

execute rotated ~060 0 run summon minecraft:armor_stand ^ ^-0.3 ^3 {Tags:["this","112_eternal","112_eternal_big"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:gilded_blackstone",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~050 0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["this","112_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:gilded_blackstone",Count:1b,tag:{}}]}
execute rotated ~070 0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["this","112_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:gilded_blackstone",Count:1b,tag:{}}]}

summon armor_stand ~ ~ ~ {Tags:["this","112_circle"],Marker:1b,Invisible:1b,NoGravity:1b}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @s add user
execute as @e[tag=this] at @s facing entity @a[tag=user,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @s remove user
execute if entity @s[team=Red] run team join RedDummy @e[tag=this]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this]
#execute as @e[tag=this] store result score @s counter_1 run data get entity @s Rotation[0] 1
tag @e[tag=this] remove this
data merge block -26 61 -62 {auto:1b}
data merge block -26 64 -62 {auto:1b}

