scoreboard players add @s counter 1
teleport @s ^ ^ ^1.5 ~ ~
execute if entity @s[scores={subcounter=1}] run particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 10 force
execute if entity @s[scores={subcounter=2..}] run particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 1 1 force
execute if entity @s[scores={subcounter=2..4}] if entity @e[distance=..5,tag=Battle,limit=1] as @e[distance=..5,tag=Battle] run tag @s add hit
execute if entity @s[scores={subcounter=5..}] run particle minecraft:instant_effect ~ ~ ~ 1.5 1.5 1.5 1 2 force
execute if entity @s[scores={subcounter=5..8}] if entity @e[distance=..7,tag=Battle,limit=1] as @e[distance=..7,tag=Battle] run tag @s add hit
execute if entity @s[scores={subcounter=9..}] run particle minecraft:enchanted_hit ~ ~ ~ 5 5 5 1 5 force
execute if entity @s[scores={subcounter=9..12}] if entity @e[distance=..9,tag=Battle,limit=1] as @e[distance=..9,tag=Battle] run tag @s add hit
execute if entity @s[scores={subcounter=13}] run particle minecraft:dust 1 1 0 6 ~ ~ ~ 4 4 4 0 40 normal @a
execute if entity @s[scores={subcounter=13}] run particle minecraft:explosion_emitter ~ ~ ~ 6 6 6 1 4 force
execute if entity @s[scores={subcounter=13}] if entity @e[distance=..11,tag=Battle,limit=1] as @e[distance=..11,tag=Battle] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/038/skill/2/dmg
execute if entity @s[scores={counter=100..}] run kill @s
