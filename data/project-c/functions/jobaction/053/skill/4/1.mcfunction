scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_2=11..}] run scoreboard players remove @s Mana 100
execute if entity @s[scores={counter_2=11..}] run particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 30
execute if entity @s[scores={counter_2=11..}] run particle minecraft:cloud ~ ~1 ~ 2 2 2 1 50
execute if entity @s[scores={counter_2=11..}] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.5 20
execute if entity @s[scores={counter_2=11..}] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 2 0
#Red
execute if entity @s[team=Red,scores={counter_2=11..}] run effect give @e[distance=..8,team=Blue] instant_damage 1 1
#Blue
execute if entity @s[team=Blue,scores={counter_2=11..}] run effect give @e[distance=..8,team=Red] instant_damage 1 1
scoreboard players set @s[scores={counter_2=11..}] counter_2 0
scoreboard players set @s[scores={Mana=..0}] Mana 0