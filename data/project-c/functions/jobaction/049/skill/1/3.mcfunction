scoreboard players add @s counter_2 1
execute if score @s counter_2 matches 2.. run function project-c:jobaction/049/skill/1/3_
particle minecraft:end_rod ^ ^0.2 ^ 1.5 0 1.5 0.01 3 force @a
particle minecraft:end_rod ^ ^ ^ 0 3 0 0 3 force @a
scoreboard players add @s counter 1
#hit判定
execute if entity @e[distance=..2.5,tag=Battle,limit=1] as @e[distance=..2.5,tag=Battle] run tag @s add hit
data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/049/skill/1/debuff
execute if entity @s[scores={counter=120..}] run kill @s
