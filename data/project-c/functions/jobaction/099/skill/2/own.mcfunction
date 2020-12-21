scoreboard players operation #099_pn_checker playerNumber = @e[tag=099-S2-AEC-this,limit=1] playerNumber
execute if entity @s[distance=..10] if score @s playerNumber = #099_pn_checker playerNumber run tag @s add 099-S2-in-area-own
execute if entity @s[tag=099-S2-in-area-own,scores={deathCount=1..}] run tag @s remove 099-S2-in-area-own
execute unless entity @s[tag=099-S2-in-area-own] if score @s playerNumber = #099_pn_checker playerNumber run function project-c:jobaction/099/skill/2/end-1