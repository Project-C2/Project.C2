data merge entity @s {Motion:[0d,-1d,0d]}
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:[SushiAEC],Duration:1}
execute store result score #Direction counter_1 run data get entity @e[tag=SushiAEC,limit=1] Pos[0] 10000
execute store result score #Direction counter_3 run data get entity @e[tag=SushiAEC,limit=1] Pos[2] 10000

scoreboard players operation #Direction counter_1 *= @s counter
scoreboard players operation #Direction counter_3 *= @s counter

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #Direction counter_1
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #Direction counter_3


kill @e[tag=SushiAEC]