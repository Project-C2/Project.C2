execute if score @s counter_2 matches 13 if score @s CT1 matches 1200.. run tag @s add 110mana-gun-reload
execute if score @s counter_2 matches 13 if score @s CT1 matches 1200.. run tag @s add 110mana-gun-reload1
execute if score @s counter_3 matches 13 if score @s CT2 matches 1200.. run tag @s add 110mana-gun-reload
execute if score @s counter_3 matches 13 if score @s CT2 matches 1200.. run tag @s add 110mana-gun-reload2
execute if score @s counter_4 matches 13 if score @s CT3 matches 1200.. run tag @s add 110mana-gun-reload
execute if score @s counter_4 matches 13 if score @s CT3 matches 1200.. run tag @s add 110mana-gun-reload3

execute if entity @s[tag=110mana-gun-reload] run function project-c:jobaction/110/skills/13/reload
execute if entity @s[tag=110mana-gun-reload1] run tag @s remove 110mana-gun-reload1
execute if entity @s[tag=110mana-gun-reload2] run tag @s remove 110mana-gun-reload2
execute if entity @s[tag=110mana-gun-reload3] run tag @s remove 110mana-gun-reload3
execute if entity @s[tag=110mana-gun-reload] run tag @s remove 110mana-gun-reload