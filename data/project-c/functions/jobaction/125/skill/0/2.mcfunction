execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["125dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:1,Tags:["125fireF"]}

playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0
particle flame ~ ~1 ~ 0 0 0 0.2 10
effect give @s levitation 2 0 true

data modify entity @e[tag=125fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=125fireF,limit=1] power set from entity @e[tag=125dummy,limit=1] Pos
execute store result score @e[tag=125fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=125fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=125fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=125fireF]
kill @e[tag=125dummy]
tag @e[tag=125fireF] remove 125fireF

scoreboard players set @s subcounter 40

scoreboard players set @s counter 61

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
effect give @s minecraft:slowness 1 0 true
particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a[distance=1..]
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags:["125dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[team=Red] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["125back","125backF","125-backRed","125-Level1"],Invisible:1b}
execute if entity @s[team=Blue] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["125back","125backF","125-backBlue","125-Level1"],Invisible:1b}
data modify entity @e[tag=125backF,limit=1] Motion set from entity @e[tag=125dummy,limit=1] Pos
execute store result score @e[tag=125backF,limit=1] counter_1 run data get entity @s Rotation[0] 200
execute store result score @e[tag=125backF,limit=1] counter_2 run data get entity @s Rotation[1] 200
kill @e[tag=125dummy]
tag @e[tag=125backF] remove 125backF


data merge block 126 67 -62 {auto:1b}