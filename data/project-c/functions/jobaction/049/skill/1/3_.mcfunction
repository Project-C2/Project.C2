execute if data entity @s {OnGround:0b} run tag @s add flag
execute if entity @s[tag=flag] run data modify storage wnkm_tmp: Motion set from entity @s Motion
tp @s ~ ~ ~ ~30 ~
execute if entity @s[tag=flag] run data modify entity @s Motion set from storage wnkm_tmp: Motion
execute if entity @s[tag=flag] run data remove storage wnkm_tmp: Motion
execute if entity @s[tag=flag] run tag @s remove flag
execute rotated ~000 0 run particle minecraft:dust 1 1 0 3 ^2.5 ^ ^ 0 0 0 0 1 force @a
execute rotated ~015 0 run particle minecraft:dust 1 1 0 3 ^2.5 ^ ^ 0 0 0 0 1 force @a
execute rotated ~120 0 run particle minecraft:dust 1 1 0 2.4 ^1.8 ^ ^ 0 0 0 0 1 force @a
execute rotated ~135 0 run particle minecraft:dust 1 1 0 2.4 ^1.8 ^ ^ 0 0 0 0 1 force @a
execute rotated ~240 0 run particle minecraft:dust 1 1 0 1.8 ^1.1 ^ ^ 0 0 0 0 1 force @a
execute rotated ~255 0 run particle minecraft:dust 1 1 0 1.8 ^1.1 ^ ^ 0 0 0 0 1 force @a
scoreboard players set @s counter_2 0