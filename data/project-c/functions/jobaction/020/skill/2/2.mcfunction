execute if entity @e[type=item,tag=isItem,distance=..8,limit=1] as @e[type=item,tag=isItem,distance=..8,tag=Item1,limit=1] run tag @s add cook_killItem
execute if entity @e[type=item,tag=isItem,distance=..8,limit=1] as @e[type=item,tag=isItem,distance=..8,tag=Item2,limit=1] run tag @s add cook_killItem
execute if entity @e[type=item,tag=isItem,distance=..8,limit=1] as @e[type=item,tag=isItem,distance=..8,tag=Item3,limit=1] run tag @s add cook_killItem
execute if entity @e[type=item,tag=isItem,distance=..8,limit=1] as @e[type=item,tag=isItem,distance=..8,tag=Item4,limit=1] run tag @s add cook_killItem

execute if entity @e[type=item,tag=cook_killItem] run tag @s add cook_active

execute if entity @s[tag=cook_active] as @e[type=item,tag=cook_killItem] at @s run function project-c:jobaction/020/skill/2/3