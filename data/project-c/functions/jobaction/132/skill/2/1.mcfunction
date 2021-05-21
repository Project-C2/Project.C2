scoreboard players add @s counter 1
execute if entity @s[scores={counter=98..}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1
execute if entity @s[scores={counter=101..}] run particle minecraft:flash ^ ^1 ^ 0 0 0 1 10 force @a
execute if entity @s[scores={counter=101..}] run particle minecraft:end_rod ^ ^1 ^ 0 0 0 1 100 force @a
execute if entity @s[scores={counter=101..},tag=132-StormR] run scoreboard players reset @a[distance=..12,team=Red,tag=Battle] adDealt
execute if entity @s[scores={counter=101..},tag=132-StormB] run scoreboard players reset @a[distance=..12,team=Blue,tag=Battle] adDealt
execute if entity @s[scores={counter=101..},tag=132-StormR] run tag @a[distance=..12,team=Red,tag=Battle] add 132-Buffed
execute if entity @s[scores={counter=101..},tag=132-StormB] run tag @a[distance=..12,team=Blue,tag=Battle] add 132-Buffed
execute if entity @s[scores={counter=101..},tag=132-StormR] run tellraw @a[distance=..12,team=Red,tag=Battle] [{"text":"次の近接攻撃力が倍になった！","color":"yellow"}]
execute if entity @s[scores={counter=101..},tag=132-StormB] run tellraw @a[distance=..12,team=Blue,tag=Battle] [{"text":"次の近接攻撃力が倍になった！","color":"yellow"}]
execute if entity @s[scores={counter=101..}] run data merge block -50 64 -11 {auto:1b}
execute if entity @s[scores={counter=101..}] run kill @s
particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~36 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~72 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~108 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~144 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~180 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~216 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~252 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~288 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a
execute rotated ~324 -1.1 run particle minecraft:end_rod ^ ^0.6 ^10 ^-20000 ^10000 ^-100000 0.0000095 0 force @a

particle minecraft:dust 0 1 0 1 ^ ^1.6 ^1 0 0 0 0.095 0 force @a
execute rotated ~36 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^2 0 0 0 0.095 0 force @a
execute rotated ~72 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^1 0 0 0 0.095 0 force @a
execute rotated ~108 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^2 0 0 0 0.095 0 force @a
execute rotated ~144 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^1 0 0 0 0.095 0 force @a
execute rotated ~180 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^2 0 0 0 0.095 0 force @a
execute rotated ~216 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^1 0 0 0 0.095 0 force @a
execute rotated ~252 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^2 0 0 0 0.095 0 force @a
execute rotated ~288 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^1 0 0 0 0.095 0 force @a
execute rotated ~324 -1.1 run particle minecraft:dust 0 1 0 1 ^ ^1.6 ^2 0 0 0 0.095 0 force @a

execute if entity @s[scores={counter=..60}] run tp @s ~ ~-0.015 ~ ~8 ~
execute if entity @s[scores={counter=61..}] run tp @s ~ ~-0.015 ~ ~11 ~