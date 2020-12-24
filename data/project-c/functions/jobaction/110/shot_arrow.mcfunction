execute if data entity @s {Color:11184810} store result entity @s damage double 0.01 run data get entity @s damage 150
execute if data entity @s {Color:43520} run tag @s add 110creeperArrow
execute if entity @s[tag=110creeperArrow] store result score @s counter_4 run data get entity @s UUID[1] 1
execute if entity @s[tag=110creeperArrow] run data merge block -54 64 -62 {auto:1b}
