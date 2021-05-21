execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1.2 {Tags:["132dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["132fire","132fireF","Arrow"],damage:11d,life:1198s,pickup:2b,Color:-1,PierceLevel:127b,NoGravity:1b}

data modify entity @e[tag=132fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=132fireF,limit=1] Motion set from entity @e[tag=132dummy,limit=1] Pos
execute store result score @e[tag=132fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=132fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=132fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=132fireF]
kill @e[tag=132dummy]
tag @e[tag=132fireF] remove 132fireF

effect clear @s minecraft:slowness
particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a[distance=1..]
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
scoreboard players set @s counter_3 0
data merge block -48 61 -11 {auto:1b}