execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^5 {Tags:["021dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["021fire","021fireF","Arrow"],damage:0.4d,life:1198s,pickup:2b,Color:-1,NoGravity:1b}

data modify entity @e[tag=021fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=021fireF,limit=1] Motion set from entity @e[tag=021dummy,limit=1] Pos
execute store result score @e[tag=021fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=021fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=021fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=021fireF]
kill @e[tag=021dummy]
tag @e[tag=021fireF] remove 021fireF

teleport @s ~ ~ ~ ~ ~-3
scoreboard players add @s counter_1 1
scoreboard players set @s counter_6 80

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick

particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a[distance=1..]
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2

data merge block 129 5 -122 {auto:1b}