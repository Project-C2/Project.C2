#起爆装置使用時処理
scoreboard players operation #106_playerNumber counter = @s playerNumber
execute as @e[type=minecraft:armor_stand,tag=106_sprink_arrow] if score @s playerNumber = #106_playerNumber counter run tag @s add 106_deploy_check

execute if entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy_check] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute unless entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy_check] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 2

execute at @s as @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy_check,sort=nearest,limit=1] run tag @s add 106_deploy

execute at @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy,limit=1] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2

execute as @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy,limit=1] at @s run function project-c:jobaction/106/items/skill/04/deploy


execute if entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy_check,limit=1] as @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=106_deploy_check] run tag @s remove 106_deploy_check



scoreboard players reset #106_playerNumber