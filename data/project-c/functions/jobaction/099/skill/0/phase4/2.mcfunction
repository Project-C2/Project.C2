scoreboard players operation #099_pn_checker playerNumber = @s playerNumber
execute if entity @e[tag=099-W-P4-position,limit=1] as @e[tag=099-W-P4-position] if score @s playerNumber = #099_pn_checker playerNumber run tag @s add this
tp @s @s
execute at @e[tag=this,limit=1] positioned ~ ~-0.4 ~ run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=this,limit=1] run gamemode adventure @s

execute at @s run function project-c:jobaction/099/skill/0/phase4/particle-playsound

kill @e[tag=this]

scoreboard players reset @s counter_2