execute if entity @s[tag=051_eternal_big] run playsound minecraft:block.glass.break master @a ~ ~1 ~ 1 0.5
execute unless entity @s[tag=051_eternal_big] run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 normal @a
execute if entity @s[tag=051_eternal_big] positioned ~ ~0.3 ~ run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 force @a


kill @s