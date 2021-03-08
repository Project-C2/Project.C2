function project-c:jobaction/091/skill/0/3

#execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["091dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["091fire","091fireF","Arrow"],damage:1.5d,life:1198s,pickup:2b,Color:-1,PierceLevel:4b,OwnerUUIDMost:1L,OwnerUUIDLeast:1L,CustomName:'{"text":"アウトライダー","color":"gold"}'}
data modify entity @e[tag=091fireF,limit=1] OwnerUUID set from entity @s UUID
data modify entity @e[tag=091fireF,limit=1] Motion set from entity @e[tag=091dummy,limit=1] Pos
execute store result score @e[tag=091fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=091fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=091fireF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=091fireF]
kill @e[tag=091dummy]
tag @e[tag=091fireF] remove 091fireF
particle minecraft:cloud ~ ~ ~ 0 0 0 1 5
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1
scoreboard players remove @s counter_2 1
data merge block -15 5 89 {auto:1b}