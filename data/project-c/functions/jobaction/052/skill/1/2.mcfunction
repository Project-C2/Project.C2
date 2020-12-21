scoreboard players add @s counter 1
execute at @e[tag=047-Houki2] if score @s playerNumber = @e[limit=1,sort=nearest,tag=047-Houki2] playerNumber at @s run teleport @e[limit=1,sort=nearest,tag=047-Houki2] ^-0.55 ^-0.5 ^0.5 ~-99 ~
tag @a[limit=1,sort=nearest,distance=..3] add 047-HMaster
execute if entity @a[distance=..3,tag=047-HMaster] rotated as @a[tag=047-HMaster,limit=1] run teleport @s ~ ~ ~ ~ 0
execute if entity @a[distance=..1,tag=047-HMaster] run teleport @s ^ ^ ^0.5 ~ 0
execute as @a[tag=047-HMaster] store result score @s counter_1 run data get entity @s Rotation[1]
execute if entity @a[tag=047-HMaster,scores={counter_1=..-40,counter=1}] run teleport @s[scores={counter_1=..20,counter=..800}] ~ ~0.5 ~
execute if entity @a[tag=047-HMaster,scores={counter_1=..-40,counter=1}] run scoreboard players add @s[scores={counter_1=..20}] counter_1 1
execute if entity @a[tag=047-HMaster,scores={counter_1=40..,counter=1}] run teleport @s[scores={counter_1=-20..,counter=..800}] ~ ~-0.5 ~
execute if entity @a[tag=047-HMaster,scores={counter_1=40..,counter=1}] run scoreboard players remove @s[scores={counter_1=-20..}] counter_1 1
teleport @s[scores={counter=801..}] ~ ~-0.5 ~ ~ ~
execute unless block ~ ~-1 ~ air run kill @s[scores={counter=801..}]
kill @s[scores={counter=1199..}]
execute if entity @s[nbt={HurtTime:9s}] run particle item stick ~ ~1 ~ 0.5 0.5 0.5 0.5 20
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.zombie.attack_door_wood master @a ~ ~ ~ 1 0
tag @a[tag=047-HMaster] remove 047-HMaster
