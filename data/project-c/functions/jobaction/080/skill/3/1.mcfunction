execute if entity @s[team=Red] positioned ~1 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~2 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~3 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~-1 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~-2 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~-3 ~ ~ if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre

execute if entity @s[team=Red] positioned ~ ~ ~1 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~ ~ ~2 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~ ~ ~3 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~ ~ ~-1 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~ ~ ~-2 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Red] positioned ~ ~ ~-3 if entity @e[team=Blue,distance=..1.2] run tag @s add 079-memorysuccre


execute if entity @s[team=Blue] positioned ~1 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~2 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~3 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~-1 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~-2 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~-3 ~ ~ if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre

execute if entity @s[team=Blue] positioned ~ ~ ~1 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~ ~ ~2 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~ ~ ~3 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~ ~ ~-1 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~ ~ ~-2 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre
execute if entity @s[team=Blue] positioned ~ ~ ~-3 if entity @e[team=Red,distance=..1.2] run tag @s add 079-memorysuccre

execute if entity @s[tag=!079-memorysuccre] run effect clear @s strength
execute if entity @s[tag=!079-memorysuccre] run effect clear @s resistance
execute if entity @s[tag=!079-memorysuccre] run effect clear @s haste

execute if entity @s[tag=079-memorysuccre] run particle minecraft:witch ~ ~0.5 ~ 1 1 1 0 1 normal @a
execute if entity @s[tag=079-memorysuccre] run effect give @s strength 1 0
execute if entity @s[tag=079-memorysuccre] run effect give @s resistance 1 0
execute if entity @s[tag=079-memorysuccre] run effect give @s haste 1 0
execute if entity @s[tag=079-memorysuccre] run tag @s remove 079-memorysuccre