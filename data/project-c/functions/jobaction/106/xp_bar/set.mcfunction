execute if score #106_xp_max counter matches 1.. run scoreboard players set #106_xp_bar counter_1 111
execute if score #106_xp_max counter matches 1.. run scoreboard players operation #106_xp_bar counter_1 *= #106_xp_value counter
execute if score #106_xp_max counter matches 1.. run scoreboard players operation #106_xp_bar counter_1 /= #106_xp_max counter
execute if score #106_xp_max counter matches 1.. run scoreboard players operation #106_xp_bar counter_2 = #106_xp_value counter

xp set @s 30 levels
xp set @s 0 points
execute if score #106_xp_bar counter_2 matches 1.. if score #106_xp_bar counter_1 matches 1.. run function project-c:jobaction/106/xp_bar/gauge
xp set @s 0 levels

execute if score #106_xp_bar counter_2 matches 1.. run function project-c:jobaction/106/xp_bar/level

scoreboard players reset #106_xp_bar
scoreboard players reset #106_xp_value
scoreboard players reset #106_xp_max