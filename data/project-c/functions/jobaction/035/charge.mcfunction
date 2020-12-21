execute unless entity @s[scores={counter_2=4..}] run scoreboard players set @s drop 1
execute if entity @s[scores={counter_2=4..}] run tag @s add 035-charge
execute if entity @s[scores={counter_2=4..}] run scoreboard players remove @s counter_2 4
function project-c:jobaction/035/setarrow