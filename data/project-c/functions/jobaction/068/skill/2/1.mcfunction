scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[tag=!068-blong,scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 068-blong
scoreboard players add @s[tag=068-blong] counter_1 1

particle end_rod ~ ~ ~ 0 0 0 1 2 force @a


execute if entity @s[tag=068-blong] run tp @s ^ ^ ^1 facing entity @e[tag=068-beong,limit=1,sort=nearest]
execute if entity @s[tag=068-blong] run kill @e[tag=068-beong,limit=1,sort=nearest,distance=..1]

execute if entity @s[tag=068-blong,tag=068-blR,scores={counter_1=20..}] run effect give @e[distance=..2,team=Blue] instant_damage 1 0
execute if entity @s[tag=068-blong,tag=068-blB,scores={counter_1=20..}] run effect give @e[distance=..2,team=Red] instant_damage 1 0
execute if entity @s[tag=068-blong,scores={counter_1=20..}] run particle flash ~ ~ ~ 0 0 0 1 2 force @a
execute if entity @s[tag=068-blong] run particle end_rod ~ ~6 ~ 0 7 0 0 10 force @a
execute if entity @s[tag=068-blong,scores={counter_1=20..}] run particle end_rod ~ ~ ~ 0 0 0 1 10 force @a
execute if entity @s[tag=068-blong,scores={counter_1=20..}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 1
execute if entity @s[tag=068-blong] run particle minecraft:dust 0 1 2 2 ~ ~6 ~ 0.5 7 0.5 0 10 force @a
execute if entity @s[tag=068-blong] run particle end_rod ~ ~6 ~ 0.3 7 0.3 0 7 force @a

kill @s[scores={counter_1=300..}]