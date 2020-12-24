scoreboard players add @s counter 1
execute if score @s counter matches 0.. run scoreboard players operation #110-- playerNumber = @s playerNumber
execute if score @s counter matches 0.. as @e[tag=110drainplant-hitting] if score @s playerNumber = #110-- playerNumber run tag @s add hit
execute if score @s counter matches 0.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run function project-c:jobaction/110/skills/03/hit2
execute if score @s counter matches 0.. run scoreboard players reset #110- playerNumber
execute if score @s counter matches 0.. run scoreboard players set @s counter -5
execute if entity @e[tag=hit,limit=1] at @e[tag=hit] run playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 1.2 2
execute if entity @e[tag=hit,limit=1] at @e[tag=hit] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 40 force @a
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tp @s @s
tag @e[tag=hit] remove hit

execute if score @s subcounter matches 5.. run kill @s