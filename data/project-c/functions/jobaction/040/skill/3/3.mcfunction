scoreboard players add @s counter 1
execute if entity @s[scores={counter=1}] run particle minecraft:dust 255 0 0 4 ~ ~ ~ 3 3 3 0.3 50 force
execute if entity @s[scores={counter=41}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 60 force
execute if entity @s[scores={counter=41}] run particle minecraft:dust 1 0 0 10 ~ ~ ~ 6 6 6 0 50 force
execute if entity @s[scores={counter=41}] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 3 0
execute if entity @s[scores={counter=41}] if entity @e[distance=..13,tag=Battle,limit=1] as @e[distance=..13,tag=Battle] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/040/skill/3/dmg
execute if entity @s[scores={counter=41..}] run kill @s
