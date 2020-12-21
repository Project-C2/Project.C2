scoreboard players add @e[tag=093fish] counter 1

execute as @e[tag=093fish,scores={counter=1}] at @s run function project-c:jobaction/093/skill/2/5

execute as @e[tag=093fish,scores={counter=-6..-5}] at @s run tp @s ^ ^ ^0.1
execute as @e[tag=093fish,scores={counter=-4..-3}] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=093fish,scores={counter=-2..-1}] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=093fish,scores={counter=00..02}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=093fish,scores={counter=03..05}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=093fish,scores={counter=06..09}] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=093fish,scores={counter=10..13}] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=093fish,scores={counter=14..18}] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=093fish,scores={counter=19..23}] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=093fish,scores={counter=24..29}] at @s run tp @s ^ ^ ^1.0
execute as @e[tag=093fish,scores={counter=30..35}] at @s run tp @s ^ ^ ^1.1
execute as @e[tag=093fish,scores={counter=36..42}] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=093fish,scores={counter=43..49}] at @s run tp @s ^ ^ ^1.3
execute as @e[tag=093fish,scores={counter=50..60}] at @s run tp @s ^ ^ ^1.4


execute at @e[tag=093fish,team=Red] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0,limit=1] at @e[tag=Battle,team=!Red,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function project-c:jobaction/093/skill/2/hit
execute at @e[tag=093fish,team=Blue] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0,limit=1] at @e[tag=Battle,team=!Blue,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function project-c:jobaction/093/skill/2/hit

execute if entity @e[tag=093fish,scores={counter=60..},limit=1] as @e[tag=093fish,scores={counter=60..}] at @s run data merge entity @s {DeathTime:19s,Health:0f}