scoreboard players reset @s counter_5
scoreboard players set @s counter_6 200
scoreboard players set @s Mana 1000
effect clear @s slowness
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 0.55
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.7
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.7

particle minecraft:cloud ~ ~ ~ 0 0 0 1 800 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 200 force @a

execute rotated ~072 0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["this","048_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}]}
execute rotated ~144 0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["this","048_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
execute rotated ~216 0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["this","048_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_stained_glass",Count:1b}]}
execute rotated ~288 0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["this","048_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}]}
execute rotated ~360 0 run summon minecraft:armor_stand ^ ^ ^2 {Tags:["this","048_eternal"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:brown_stained_glass",Count:1b}]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber

tag @s add user
execute as @e[tag=this] at @s facing entity @a[tag=user,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @s remove user
tag @s add 048using
#execute as @e[tag=this] store result score @s counter_1 run data get entity @s Rotation[0] 1
tag @e[tag=this] remove this
data merge block -45 2 -20 {auto:1b}
