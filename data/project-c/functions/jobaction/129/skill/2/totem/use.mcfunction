
effect give @s minecraft:blindness 1 0 true
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,NoBasePlate:1b,Marker:1b,Invisible:1b,Tags:["129-totem-using","this"]}
execute at @s run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] stockcounter = #129- stockcounter
scoreboard players operation @e[tag=this] counter = #129- counter
execute store result score @e[tag=this] subcounter run data get entity @s Health 100
execute store result score @e[tag=this] HarfHP run attribute @s minecraft:generic.max_health get
execute as @e[tag=this] run scoreboard players operation @s HarfHP *= #100 counter
execute as @e[tag=this] run scoreboard players operation @s HarfHP /= #2 counter
execute as @e[tag=this] run scoreboard players operation @s subcounter -= @s HarfHP
execute as @e[tag=this] run scoreboard players operation @s counter_9 = @s HarfHP
execute as @e[tag=this] run scoreboard players operation @s counter_9 /= #2 counter

execute at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 1.4
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 20 force
tag @s add 129-2-T-U
execute at @s run playsound minecraft:entity.generic.burn master @a[tag=!129-2-T-U] ~ ~ ~ 1 0.9
tag @s remove 129-2-T-U


execute as @e[tag=this] run tag @s remove this

effect give @s minecraft:absorption 30 4 true


data merge block -86 64 -11 {auto:1b}
