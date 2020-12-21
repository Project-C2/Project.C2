data modify entity @e[tag=097this,limit=1] Owner set from entity @e[tag=097,limit=1] Owner
execute store success score @e[tag=097this,limit=1] counter run data modify entity @e[tag=097this,limit=1] Owner set from entity @s Owner
execute if score @e[tag=097this,limit=1] counter matches 0 run tag @s add hit
tag @e[tag=097this] remove 097this