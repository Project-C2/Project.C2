execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1 {Tags:["125dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:shulker_bullet ^ ^ ^0.5 {Tags:["125fire","125fireF"],NoGravity:1b}

data modify entity @e[tag=125fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=125fireF,limit=1] Motion set from entity @e[tag=125dummy,limit=1] Pos
execute store result score @e[tag=125fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=125fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=125fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=125fireF]
kill @e[tag=125dummy]
tag @e[tag=125fireF] remove 125fireF

teleport @s ~ ~ ~ ~ ~
scoreboard players set @s counter 41

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
effect give @s minecraft:slowness 1 0 true
particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a[distance=1..]
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2

data merge block 126 64 -62 {auto:1b}