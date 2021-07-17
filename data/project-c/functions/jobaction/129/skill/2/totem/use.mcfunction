
effect give @s minecraft:blindness 1 0 true
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,NoBasePlate:1b,Marker:1b,Invisible:1b,Tags:["129-totem-using","this"]}
execute at @s run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] stockcounter = #129- stockcounter
scoreboard players operation @e[tag=this] counter = #129- counter
execute store result score @e[tag=this] subcounter run data get entity @s Health 100
execute store result score @e[tag=this] HarfHP run attribute @s minecraft:generic.max_health get
execute as @e[tag=this] run scoreboard players operation @s counter_2 = @s HarfHP
execute as @e[tag=this] run scoreboard players add @s counter_2 2000
execute as @e[tag=this] run scoreboard players operation @s counter_8 = @s HarfHP
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

effect clear @s regeneration
tag @s add Regene


execute as @e[tag=this] run tag @s remove this

attribute @s generic.max_health modifier add 0-0-129-2-0 "129-totem" 20 add
effect give @s instant_health 1 19 true


data merge block -86 64 -11 {auto:1b}
