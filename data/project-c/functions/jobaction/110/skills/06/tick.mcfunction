#scoreboard players add @e[tag=110shulkerPassenged] counter 1
#execute if entity @e[tag=110shulkerPassenged,scores={counter=400..}] run kill @e[tag=110shulkerPassenged,scores={counter=400..}]
execute as @e[tag=110shulkerPassenged] unless data entity @s {Passengers:[{id:"minecraft:shulker"}]} run kill @s