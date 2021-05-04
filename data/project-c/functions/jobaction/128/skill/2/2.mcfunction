execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^3 {Tags:["128dummy"],Marker:1b,Invisible:1b,Marker:1b}
data modify entity @s Motion set from entity @e[tag=128dummy,limit=1] Pos
execute store result score @s counter_1 run data get entity @s Rotation[0] 100
execute store result score @s counter_2 run data get entity @s Rotation[1] 100
kill @e[tag=128dummy]