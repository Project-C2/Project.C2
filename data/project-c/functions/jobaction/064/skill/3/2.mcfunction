particle cloud ~ ~ ~ 0 0 0 1 20 force @a
execute if entity @e[distance=..5,nbt={HurtTime:10s}] run tag @e[distance=..5,nbt={HurtTime:10s}] add 064Hit
execute if entity @e[distance=..5,nbt={HurtTime:9s}] run tag @e[distance=..5,nbt={HurtTime:9s}] add 064Hit
execute if entity @e[distance=..5,nbt={HurtTime:8s}] run tag @e[distance=..5,nbt={HurtTime:8s}] add 064Hit

execute as @e[tag=064Hit] at @s run particle portal ~ ~1 ~ 0 0 0 1 120 force @a
execute as @e[tag=064Hit] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 1
execute as @e[tag=064Hit] at @s run scoreboard players set @s stanTime 70
data merge block -113 2 -122 {auto:1b}

execute if entity @e[tag=064Hit] as @a[scores={jobNumber=64,counter_3=1..}] at @s run replaceitem entity @s hotbar.0 minecraft:crossbow{display:{Name:'{"text":"クロスボウ","color":"white","underlined":false,"italic":"false"}'},Enchantments:[{id:"piercing",lvl:3s}],Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b} 1
execute if entity @e[tag=064Hit] as @a[scores={jobNumber=64,counter_3=1..}] at @s run particle cloud ~ ~1 ~ 0 0 0 0.5 20 force @a
execute if entity @e[tag=064Hit] as @a[scores={jobNumber=64,counter_3=1..}] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 2
execute if entity @e[tag=064Hit] as @a[scores={jobNumber=64,counter_3=1..}] at @s run scoreboard players set @s counter_3 0

execute as @e[tag=064Hit] at @s run tag @s remove 064Hit