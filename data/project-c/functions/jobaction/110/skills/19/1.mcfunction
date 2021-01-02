scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=110blizzardY] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
#execute if entity @s[tag=110blizzardXZ] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s subcounter
#パーティクル用の角度設定
execute if entity @s[tag=110blizzardXZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=110blizzardY] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardY] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardY] run particle minecraft:dust 0.6 0.6 0.9 2 ^-4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardY] run particle minecraft:dust 0.6 0.6 0.9 2 ^4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardXZ] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^-4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardXZ] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardXZ] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardXZ] run particle minecraft:dust 0.6 0.6 0.9 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=110blizzardXZ] run function project-c:jobaction/110/skills/19/xz
#execute if entity @s[tag=110blizzardZ] rotated ~90 ~ run function project-c:jobaction/110/skills/19/xz
execute if entity @s[tag=110blizzardY] run function project-c:jobaction/110/skills/19/y



execute if score @s counter matches 20 run function project-c:jobaction/110/skills/19/1-active-first
execute if score @s counter matches 21.. run function project-c:jobaction/110/skills/19/1-active

execute if score @s counter matches 67.. run kill @s