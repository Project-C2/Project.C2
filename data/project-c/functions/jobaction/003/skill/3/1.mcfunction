#実行者     -> jobNumber = 3, counter_1 = 1..
#実行地点   -> 実行者

scoreboard players add @s counter_1 1

particle sweep_attack ~ ~1 ~ 1 1 1 0 5
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2


execute if entity @s[team=Red] run effect give @e[distance=..3,team=Blue] minecraft:instant_damage 1 0
execute if entity @s[team=Red] run effect give @e[distance=..3,team=Blue] minecraft:slowness 1 20

execute if entity @s[team=Blue] run effect give @e[distance=..3,team=Red] minecraft:instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[distance=..3,team=Red] minecraft:slowness 1 20


execute if entity @s[scores={counter_1=21..}] run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={counter_1=21..}] counter_1