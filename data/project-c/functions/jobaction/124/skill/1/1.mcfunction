scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=124windsong1Y] store result entity @s Rotation[0] float 1 run scoreboard players get @s subcounter
execute if entity @s[tag=124windsong1XZ] store result entity @s Rotation[1] float 0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=124windsong1Y] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^ ^2.4 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^ ^-2.4 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^-2.4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^2.4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^-2.4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^2.4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^ ^-2.4 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] at @s run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^ ^2.4 0 0 0 1 1 force @a

#アマスタ回転
execute if entity @s[tag=124windsong1Y] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
execute if entity @s[tag=124windsong1XZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=124windsong1Y] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^ ^3.0 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^ ^-3.0 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] run particle minecraft:dust 0.490 0.878 0.694 2 ^-3.0 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1Y] run particle minecraft:dust 0.490 0.878 0.694 2 ^3.0 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^-3.0 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^3.0 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^ ^-3.0 0 0 0 1 1 force @a
execute if entity @s[tag=124windsong1XZ] run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^ ^3.0 0 0 0 1 1 force @a

#execute if entity @s[tag=124windsong1XZ] run function project-c:jobaction/110/skills/19/xz
#execute if entity @s[tag=124windsong1Z] rotated ~90 ~ run function project-c:jobaction/110/skills/19/xz
#execute if entity @s[tag=124windsong1Y] run function project-c:jobaction/110/skills/19/y

execute if score @s counter matches 23 run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0.5
execute if score @s counter matches 30 run function project-c:jobaction/124/skill/1/1-active-first
execute if score @s counter matches 31.. run function project-c:jobaction/124/skill/1/1-active

execute if score @s counter matches 40.. run kill @s