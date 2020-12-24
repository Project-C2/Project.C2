scoreboard players set #099_xp_bar counter_1 111
scoreboard players operation #099_xp_bar counter_1 *= #099_xp_counter counter_1
scoreboard players operation #099_xp_bar counter_1 /= #099_xp_max counter_1
#scoreboard players remove #099_xp_bar counter_2 1
xp set @s 30 levels
xp set @s 0 points
execute if score #099_xp_bar counter_1 matches 1.. run function project-c:jobaction/099/xp_bar/gauge
xp set @s 0 levels

scoreboard players reset #099_xp_bar
scoreboard players reset #099_xp_counter
scoreboard players reset #099_xp_max