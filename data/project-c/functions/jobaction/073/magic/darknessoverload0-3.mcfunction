particle dragon_breath ~ ~-2 ~ 0 0 0 0.1 16
particle end_rod ~ ~-2 ~ 0 0 0 0.1 1
particle block coal_block ~ ~-2 ~ 1 1 1 1 10 normal @a

tag @e[tag=DO2Stand,nbt={OnGround:1b}] add landingDarknessOverload

execute if entity @s[tag=landingDarknessOverload] run playsound minecraft:block.end_gateway.spawn master @a ~ ~ ~ 1 0.75
execute if entity @s[tag=landingDarknessOverload] run playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=landingDarknessOverload] run particle smoke ~ ~ ~ 3 3 3 1 128
execute if entity @s[tag=landingDarknessOverload] run particle flash ~ ~ ~ 0 0 0 0 2

execute if entity @s[tag=landingDarknessOverload,tag=DO2RStand] run effect give @e[team=Blue,distance=..4] instant_damage 1 1
execute if entity @s[tag=landingDarknessOverload,tag=DO2RStand] run effect give @e[team=Blue,distance=..4] wither 5 2

execute if entity @s[tag=landingDarknessOverload,tag=DO2BStand] run effect give @e[team=Red,distance=..4] instant_damage 1 1
execute if entity @s[tag=landingDarknessOverload,tag=DO2BStand] run effect give @e[team=Red,distance=..4] wither 5 2

execute if entity @s[tag=landingDarknessOverload] run kill @s