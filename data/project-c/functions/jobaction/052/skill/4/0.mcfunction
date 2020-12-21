scoreboard players remove @s Mana 100
particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 30
particle minecraft:cloud ~ ~1 ~ 2 2 2 1 50
particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.5 20
playsound minecraft:block.anvil.land master @a ~ ~ ~ 2 0
#Red
execute if entity @s[team=Red] run effect give @e[distance=..8,team=Blue] instant_damage 1 0
execute if entity @s[team=Red,scores={counter_1=1..}] run effect give @e[distance=..8,team=Blue] instant_damage 1 1
#Blue
execute if entity @s[team=Blue] run effect give @e[distance=..8,team=Red] instant_damage 1 0
execute if entity @s[team=Blue,scores={counter_1=1..}] run effect give @e[distance=..8,team=Red] instant_damage 1 1
#共通
scoreboard players set @s counter_1 0
scoreboard players set @s[scores={Mana=100..}] counter_2 1
scoreboard players set @s[scores={Mana=100..}] Mana 0
data merge block 23 2 -20 {auto:1b}