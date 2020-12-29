execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^10 {Tags:["101dummy"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["101fire","101fireF","Arrow"],damage:1d,life:1198s,pickup:2b,Color:-1,PierceLevel:127b,NoGravity:1b,crit:1b}

tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!SniperArrow] add SniperArrowC
tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!SniperArrow] add SniperArrow
execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] store result score @s counter_2 run data get entity @s damage

execute if entity @s[scores={counter_4=0..5}] run execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] store result entity @s damage float 0.4 run scoreboard players get @s counter_2
execute if entity @s[scores={counter_4=6..7}] run execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] store result entity @s damage float 0.8 run scoreboard players get @s counter_2
execute if entity @s[scores={counter_4=8..10}] run execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] store result entity @s damage float 0.6 run scoreboard players get @s counter_2
execute if entity @s[scores={counter_4=11..}] run execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] store result entity @s damage float 0.4 run scoreboard players get @s counter_2
execute if entity @e[tag=SniperArrowC,limit=1] as @e[tag=SniperArrowC] run tag @s remove SniperArrowC

execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrowC
execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrow
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result score @s relicCount run data get entity @s damage
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result entity @s damage float 1.2 run scoreboard players get @s relicCount
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] run tag @s remove DoubleArrowC

data modify entity @e[tag=101fireF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=101fireF,limit=1] Motion set from entity @e[tag=101dummy,limit=1] Pos
execute store result score @e[tag=101fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=101fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=101fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=101fireF]
kill @e[tag=101dummy]
tag @e[tag=101fireF] remove 101fireF

teleport @s ~ ~ ~ ~ ~-4

scoreboard players set @s counter_1 1
scoreboard players set @s counter_2 1
scoreboard players set @s counter_3 6
scoreboard players set @s counter_4 0

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick

particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1