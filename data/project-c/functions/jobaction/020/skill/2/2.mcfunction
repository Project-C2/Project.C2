
execute if entity @e[type=item,tag=isItem,distance=..8] as @e[type=item,tag=isItem,distance=..8,tag=Item2] run tag @s add cook_killItem
execute if entity @e[type=item,tag=isItem,distance=..8] as @e[type=item,tag=isItem,distance=..8,tag=Item3] run tag @s add cook_killItem
execute if entity @e[type=item,tag=isItem,distance=..8] as @e[type=item,tag=isItem,distance=..8,tag=Item4] run tag @s add cook_killItem

execute if entity @e[type=item,tag=cook_killItem] run tag @s add cook_active

execute if entity @s[tag=cook_active] as @e[type=item,tag=cook_killItem] at @s run function project-c:jobaction/020/skill/2/3