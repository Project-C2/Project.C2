particle minecraft:dust_color_transition 1 .5 0 1 1 0 0 ~ ~ ~ 1 1 1 0 5 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 1 1 1 0 5 force

particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~ ~ .2 .2 .2 0 2 force

playsound minecraft:block.campfire.crackle master @a ~ ~ ~ 0.08 1.7

scoreboard players remove @s counter 1

scoreboard players operation #129- teamNumber = @s teamNumber
scoreboard players operation #129- stockcounter = @s stockcounter
execute as @a[distance=..3,tag=Battle] unless score @s teamNumber = #129- teamNumber run tag @s add hit
tag @s add 129-now
execute if entity @a[tag=hit,limit=1] as @a[tag=hit] run function project-c:jobaction/129/skill/1/already-check
tag @s remove 129-now

execute as @e[tag=129-silenth-Am] if score @s stockcounter = #129- stockcounter run tag @s add kp
execute at @e[tag=kp] run tp @s ~ ~ ~
execute as @e[tag=kp] run tag @s remove kp

execute unless score @s counter matches 1.. run tag @s add 129-silenth-end
execute if entity @s[tag=129-silenth-end] run function project-c:jobaction/129/skill/1/end


scoreboard players reset #129-