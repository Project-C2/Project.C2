

scoreboard players operation #129- playerNumber = @s playerNumber
execute as @e[tag=129-silenth-anchor] if score @s playerNumber = #129- playerNumber run tag @s add 129-1-my-sh
execute as @e[tag=129-silenth-anchor,tag=129-1-my-sh] if score @s stockcounter = #129- stockcounter run tag @s add 129-1-already-hit

execute unless entity @e[tag=129-1-already-hit] run function project-c:jobaction/129/skill/1/hit

execute if entity @e[tag=129-1-my-sh] as @e[tag=129-1-my-sh] run tag @s remove 129-1-my-sh
execute if entity @e[tag=129-1-already-hit] as @e[tag=129-1-already-hit] run tag @s remove 129-1-already-hit

tag @s remove hit


