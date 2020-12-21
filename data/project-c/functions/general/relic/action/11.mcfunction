scoreboard players add @s[scores={relicCount=1..100}] relicCount 1
execute if entity @s[scores={HP=0..6,relicCount=0}] run effect give @s minecraft:resistance 5 5 false
execute if entity @s[scores={HP=0..6,relicCount=0}] run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 0
execute if entity @s[scores={HP=0..6,relicCount=0}] run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 100 force @a
execute if entity @s[scores={HP=0..6,relicCount=0}] run scoreboard players set @s CT1 1200
execute if entity @s[scores={HP=0..6,relicCount=0}] run scoreboard players set @s CT2 1200
execute if entity @s[scores={HP=0..6,relicCount=0}] run scoreboard players set @s CT3 1200
execute as @s[scores={HP=..6,relicCount=0}] at @s run scoreboard players set @s relicCount 1

execute if entity @s[scores={relicCount=100..}] if score #Clock counter matches 1 run scoreboard players remove @s CT1 1
execute if entity @s[scores={relicCount=100..}] if score #Clock counter matches 1 run scoreboard players remove @s CT2 1
execute if entity @s[scores={relicCount=100..}] if score #Clock counter matches 1 run scoreboard players remove @s CT3 1

