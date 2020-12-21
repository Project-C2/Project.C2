scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#アマスタ回転
execute if entity @s[tag=089lightningY] store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
#execute if entity @s[tag=089lightningXZ] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s subcounter
#パーティクル用の角度設定
execute if entity @s[tag=089lightningXZ] store result entity @s Rotation[1] float -0.5 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute if entity @s[tag=089lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^-4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningY] run particle minecraft:dust 0.9 0.8 0.2 2 ^4 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningXZ] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^-4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningXZ] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^4 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningXZ] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^-4 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningXZ] run particle minecraft:dust 0.9 0.8 0.2 2 ^ ^ ^4 0 0 0 1 1 force @a
execute if entity @s[tag=089lightningXZ] run function project-c:jobaction/089/skill/2/xz
#execute if entity @s[tag=089lightningZ] rotated ~90 ~ run function project-c:jobaction/089/skill/2/xz
execute if entity @s[tag=089lightningY] run function project-c:jobaction/089/skill/2/y



execute if score @s counter matches 20 run function project-c:jobaction/089/skill/2/1-shot_lightning
execute if score @s counter matches 24 run function project-c:jobaction/089/skill/2/1-active
execute if score @s counter matches 24 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1.5
execute if score @s counter matches 32 run stopsound @a[distance=..32] neutral minecraft:item.trident.thunder
execute if score @s counter matches 34 run function project-c:jobaction/089/skill/2/1-active

execute if score @s counter matches 40.. run kill @s