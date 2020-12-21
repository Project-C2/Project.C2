scoreboard players add @s[tag=Battle] relicCount 1
execute as @s[scores={relicCount=101..}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 2
execute as @s[scores={relicCount=101..}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 30 force @a
execute as @s[scores={relicCount=101..}] run effect give @s absorption 5 0 true
execute as @s[scores={relicCount=101..}] run scoreboard players set @s relicCount 0
effect clear @s minecraft:regeneration
tag @s[tag=!Regene] add Regene
