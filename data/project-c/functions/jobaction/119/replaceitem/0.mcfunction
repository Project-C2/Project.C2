execute if entity @s[tag=119_OutCombat] run tag @s remove 119_OutCombat
execute unless entity @s[tag=Battle,scores={OutCombat=240..}] run loot replace entity @s container.0 loot project-c:wnkm/119/0
execute if entity @s[tag=Battle,scores={OutCombat=240..}] run loot replace entity @s container.0 loot project-c:wnkm/119/0_ench
execute if entity @s[tag=Battle,scores={OutCombat=240..}] run tag @s add 119_OutCombat
function project-c:jobaction/119/snowball

scoreboard players reset @s drop
