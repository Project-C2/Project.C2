particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 3 normal @a
particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 1 3 normal @a
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 0.5

execute if entity @s[scores={counter=..11}] run tag @s add 035-2-now
execute if entity @s[scores={counter=..11}] as @a[tag=035-2used] if score @s playerNumber = @e[tag=035-2-now,limit=1] playerNumber run tag @s add 035-2p
execute as @a[tag=035-2p] run tp @s @s
execute if entity @s[scores={counter=3}] as @a[tag=035-2p,limit=1] run function project-c:jobaction/035/skill/2/1-3
execute if entity @s[scores={counter=4}] as @a[tag=035-2p,limit=1] run function project-c:jobaction/035/skill/2/1-4
execute if entity @s[scores={counter=7}] as @a[tag=035-2p,limit=1] run function project-c:jobaction/035/skill/2/1-7
execute if entity @s[scores={counter=8}] as @a[tag=035-2p,limit=1] run function project-c:jobaction/035/skill/2/1-8
execute if entity @s[scores={counter=11}] as @a[tag=035-2p,limit=1] run function project-c:jobaction/035/skill/2/1-11
execute if entity @s[scores={counter=3..11}] if entity @e[tag=035-2second,limit=1] run data modify entity @e[tag=035-2second,limit=1] Owner set from entity @s Owner
execute if entity @s[scores={counter=3..11}] if entity @e[tag=035-2second,limit=1] run tag @e[tag=035-2second] remove 035-2second
execute if entity @s[scores={counter=..11}] run tag @s remove 035-2-now
execute if entity @s[scores={counter=..11}] run tag @a[tag=035-2p] remove 035-2p
tag @a[tag=035-2p] remove 035-2p

scoreboard players add @s counter 1
execute if entity @s[scores={counter=60..}] run kill @s