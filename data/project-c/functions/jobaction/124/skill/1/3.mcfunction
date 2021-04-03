scoreboard players add @s counter 1
scoreboard players operation @s subcounter += @s counter
scoreboard players remove @s[scores={subcounter=180..}] subcounter 360

#particle minecraft:dust 0.564 1.0 0.798 1.5 ~ ~0.1 ~ 4 0 4 1 8 normal @a
particle minecraft:cloud ~ ~0.1 ~ 3 0 3 0.02 8 normal @a

#アマスタ回転
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute at @s rotated ~ 0 run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^0.1 ^3.3 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.564 1.0 0.798 1.5 ^ ^0.1 ^-3.3 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.564 1.0 0.798 1.5 ^-3.3 ^0.1 ^ 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.564 1.0 0.798 1.5 ^3.3 ^0.1 ^ 0 0 0 1 1 force @a

#アマスタ回転
execute store result entity @s Rotation[0] float -1 run scoreboard players get @s subcounter
#魔法陣の円パーティクルの演出
execute at @s rotated ~ 0 run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^0.1 ^5.0 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.490 0.878 0.694 2 ^ ^0.1 ^-5.0 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.490 0.878 0.694 2 ^-5.0 ^0.1 ^ 0 0 0 1 1 force @a
execute at @s rotated ~ 0 run particle minecraft:dust 0.490 0.878 0.694 2 ^5.0 ^0.1 ^ 0 0 0 1 1 force @a

#execute if entity @s[tag=124windsong1Z] rotated ~90 ~ run function project-c:jobaction/110/skills/19/xz
#execute run function project-c:jobaction/110/skills/19/y

execute if score @s counter matches ..20 run tp @s ~ ~ ~ ~-36 ~
execute if score @s counter matches 21..40 run tp @s ~ ~ ~ ~ ~
execute if score @s counter matches ..41 as @a[scores={jobNumber=124}] if score @s playerNumber = @e[tag=124windsong2,limit=1,sort=nearest] playerNumber run tag @s add user
execute if score @s counter matches ..40 run tp @a[tag=user] @s
execute if score @s counter matches 20 run effect give @a[tag=user] slowness 1 9 true
execute if score @s counter matches 16 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 2 0.943874
execute if score @s counter matches 21 run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0.5
execute if score @s counter matches 40 run function project-c:jobaction/124/skill/1/3-active-first
execute if score @s counter matches 41 as @a[tag=user] run function project-c:jobaction/124/skill/1/3-active-p
execute if score @s counter matches ..41 run tag @a[tag=user] remove user
execute if score @s counter matches 41.. run function project-c:jobaction/124/skill/1/3-active

execute if score @s counter matches 70.. run kill @s