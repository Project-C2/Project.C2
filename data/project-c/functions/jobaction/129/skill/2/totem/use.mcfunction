
effect give @s minecraft:blindness 1 0 true
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,NoBasePlate:1b,Tags:["129-totem-using","this"]}
execute at @s run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] stockcounter = #129- stockcounter
scoreboard players operation @e[tag=this] counter = #129- counter
execute store result score @e[tag=this] HP run data get entity @s Health 100
execute store result score @e[tag=this] HarfHP run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 50


execute as @e[tag=this] run tag @s remove this

effect give @s minecraft:absorption 30 4 true


data merge block -86 64 -11 {auto:1b}
