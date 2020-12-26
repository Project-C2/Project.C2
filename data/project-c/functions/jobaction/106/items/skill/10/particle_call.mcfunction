#スキル14





execute positioned ~ ~0.44 ~ run function project-c:jobaction/106/items/skill/10/check



execute if entity @s[tag=tp_ok] run function project-c:jobaction/106/items/skill/10/particle

execute if entity @s[tag=tp_ok] run tag @s remove tp_ok

