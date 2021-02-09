effect give @s[scores={HP=..30}] minecraft:haste 1 1 false
effect give @s[scores={HP=..30}] minecraft:resistance 1 0 false
effect give @s[scores={HP=..20}] minecraft:fire_resistance 1 0 false
effect give @s[scores={HP=..20}] minecraft:speed 1 0 false
effect give @s[scores={HP=..20}] minecraft:jump_boost 1 0 false
effect give @s[scores={HP=..10}] minecraft:strength 1 3 false
execute if entity @s[scores={HP=..10}] run function project-c:general/effect/checkeffect
effect give @s minecraft:glowing 1 0 false

