scoreboard players add @s counter 1

execute as @s[scores={counter=20..}] at @s anchored eyes run particle minecraft:explosion ^ ^ ^1 0 0 0 1 1

execute as @s[scores={counter=20..}] at @s anchored eyes run summon fireball ^ ^-0.05 ^1 {ExplosionPower:1,direction:[0.0,0.0,0.0],CustomName:"{\"text\":\"タレット\",\"color\":\"red\",\"italic\":false}",Tags:["087-RPG","087-Bullet"]}
execute as @s[scores={counter=20..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[0] 100

execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[0] 100

execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2

execute as @e[tag=087-RPG] store result entity @s power[0] double -0.0025 run scoreboard players get @s counter_3

execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[1] 100

execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[1] 100

scoreboard players add @e[tag=087-RPG] counter_3 160

execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2

execute as @e[tag=087-RPG] store result entity @s power[1] double -0.0025 run scoreboard players get @s counter_3

execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[2] 100

execute as @s[scores={counter=20..}] at @s store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[2] 100

execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2

execute as @e[tag=087-RPG] store result entity @s power[2] double -0.0025 run scoreboard players get @s counter_3

tag @e[tag=087-RPG] remove 087-RPG

scoreboard players set @s[scores={counter=20..}] counter 0