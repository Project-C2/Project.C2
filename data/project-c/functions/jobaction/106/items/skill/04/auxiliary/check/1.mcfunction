#スキル4補助

scoreboard players operation #106- playerNumber = @s playerNumber
execute as @e[tag=arrow_sprinkler] if score @s playerNumber = #106- playerNumber run tag @s add auxiliary_check

execute if entity @e[tag=auxiliary_check,limit=1] run tag @s add auxiliary_replace

execute if entity @s[tag=auxiliary_replace,tag=skill-bulk] run function project-c:jobaction/106/items/skill/04/auxiliary/check/2
execute if entity @s[tag=auxiliary_replace,tag=!skill-bulk] run function project-c:jobaction/106/items/skill/04/auxiliary/set

#Tagの削除
execute if entity @e[tag=auxiliary_check,limit=1] as @e[tag=auxiliary_check] run tag @s remove auxiliary_check
execute if entity @s[tag=using] run tag @s remove using
execute if entity @s[tag=auxiliary_replace] run tag @s remove auxiliary_replace
scoreboard players reset #106-