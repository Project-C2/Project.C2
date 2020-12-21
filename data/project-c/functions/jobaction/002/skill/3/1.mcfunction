#実行者     -> jobNumber = 2, counter_1 = 1..
#実行地点   -> 実行者

scoreboard players add @s counter_1 1


execute if entity @s[scores={counter_1=201..}] run particle smoke ~ ~1 ~ 0 0 0 0.1 50
execute if entity @s[scores={counter_1=201..}] run playsound minecraft:block.lava.extinguish master @a
execute if entity @s[scores={counter_1=201..}] run scoreboard players reset @s counter_1

effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:levitation
effect clear @s minecraft:poison
effect clear @s minecraft:wither

scoreboard players reset @s[scores={stanTime=1..}] stanTime

particle flame ~ ~ ~ 1 1 1 0.1 3

scoreboard players add @s CT1 1