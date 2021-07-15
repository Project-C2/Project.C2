effect clear @s[scores={OutCombat=..239}] minecraft:regeneration
execute as @s[scores={OutCombat=240..}] run effect give @s resistance 5 3 true
execute if entity @s[tag=!Regene,scores={OutCombat=..239}] run tag @s add Regene