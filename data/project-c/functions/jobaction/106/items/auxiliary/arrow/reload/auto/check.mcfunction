execute if entity @s[scores={stockcounter=0}] unless score @s MagicFatigue matches 1.. run tag @s add 106_reload_execution
execute if entity @s[tag=106_reload_execution] run scoreboard players set @s MagicFatigue 100
execute if entity @s[tag=106_reload_execution] run function project-c:jobaction/106/items/auxiliary/arrow/reload/execution
execute if entity @s[tag=106_reload_execution] run tag @s remove 106_reload_execution
