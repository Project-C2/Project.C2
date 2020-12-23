scoreboard players set @s relicCount 0
scoreboard players add @s[scores={CT1=..1200}] relicCount 1
scoreboard players add @s[scores={CT2=..1200}] relicCount 1
scoreboard players add @s[scores={CT3=..1200}] relicCount 1
execute if entity @s[scores={relicCount=2}] run effect give @s minecraft:speed 1 0 false
execute if entity @s[scores={relicCount=3}] run effect give @s minecraft:speed 1 1 false
execute if entity @s[scores={relicCount=0}] run effect give @s minecraft:slowness 1 2 false

