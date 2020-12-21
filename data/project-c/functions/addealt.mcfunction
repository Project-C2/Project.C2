execute if entity @s[tag=Battle,scores={OutCombat=240..}] run effect clear @s regeneration
execute if entity @s[tag=Battle,scores={OutCombat=240..}] run tag @s remove Regene

scoreboard players add @s adDealt 1
scoreboard players set @s OutCombat 0

advancement revoke @s only project-c:projectc/root