scoreboard players add @e[tag=041-cardinal-b] counter 1
execute as @e[tag=041-cardinal-b] if score @s counter matches 1..4 at @s run tp @s ^ ^ ^0.1
execute as @e[tag=041-cardinal-b] if score @s counter matches 5..8 at @s run tp @s ^ ^ ^0.2
execute as @e[tag=041-cardinal-b] if score @s counter matches 9..12 at @s run tp @s ^ ^ ^0.4
execute as @e[tag=041-cardinal-b] if score @s counter matches 13..16 at @s run tp @s ^ ^ ^0.6
execute as @e[tag=041-cardinal-b] if score @s counter matches 17..20 at @s run tp @s ^ ^ ^0.9
execute as @e[tag=041-cardinal-b] if score @s counter matches 21..24 at @s run tp @s ^ ^ ^1.2
execute as @e[tag=041-cardinal-b] if score @s counter matches 25.. at @s run tp @s ^ ^ ^1.6
kill @e[tag=041-cardinal-b,scores={counter=50..}]
execute as @e[tag=041-cardinal-b,team=Red] at @s if entity @e[tag=Battle,team=Blue,distance=..1.3] run function project-c:jobaction/041/arrow/1/2-hit
execute as @e[tag=041-cardinal-b,team=Blue] at @s if entity @e[tag=Battle,team=Red,distance=..1.3] run function project-c:jobaction/041/arrow/1/2-hit
execute as @e[tag=041-cardinal-b,team=Red] at @s positioned ~ ~-1 ~ if entity @e[tag=Battle,team=Blue,distance=..1.3] run function project-c:jobaction/041/arrow/1/2-hit
execute as @e[tag=041-cardinal-b,team=Blue] at @s positioned ~ ~-1 ~ if entity @e[tag=Battle,team=Red,distance=..1.3] run function project-c:jobaction/041/arrow/1/2-hit