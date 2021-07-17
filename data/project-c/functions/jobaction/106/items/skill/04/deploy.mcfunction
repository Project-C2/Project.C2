#スキル4
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["106_sprink_arrow_aec","this"]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6

execute as @e[tag=106_sprink_arrow_deploy] run tag @s remove 106_sprink_arrow_deploy

tag @s add kill
teleport @s ~ ~-512 ~
kill @s

scoreboard players set @s counter_2 100000