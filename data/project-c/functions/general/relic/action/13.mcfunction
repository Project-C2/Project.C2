execute if entity @e[type=item,tag=isItem,distance=..4,limit=1] as @e[type=item,tag=isItem,distance=..4] run tag @s add relic13_killItem
execute if entity @e[type=item,tag=relic13_killItem,limit=1] run tag @s add relic13_active
execute if entity @s[tag=relic13_active] as @e[type=item,tag=relic13_killItem] at @s run function project-c:general/relic/action/13.active

