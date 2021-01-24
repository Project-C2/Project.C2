data modify entity @e[tag=119this,limit=1] Owner set from entity @e[tag=119,limit=1] Thrower
execute store success score @e[tag=119this,limit=1] counter_9 run data modify entity @e[tag=119this,limit=1] Owner set from entity @s Owner
execute if score @e[tag=119this,limit=1] counter_9 matches 0 run tag @s add hit
