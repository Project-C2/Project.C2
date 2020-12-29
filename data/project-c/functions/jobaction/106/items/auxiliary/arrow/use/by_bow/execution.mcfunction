#弓使用時の矢のnbt変更

execute if score #106_has_item counter matches 4 as @e[tag=106-setup] store result entity @s damage double 0.01 run data get entity @s damage 55

execute if entity @s[scores={stockcounter=1..}] run scoreboard players remove @s stockcounter 1