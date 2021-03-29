playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.7


scoreboard players operation #129- stockcounter = @s stockcounter
scoreboard players operation #129- playerNumber = @s playerNumber
execute if entity @e[tag=129-silenth-anchor,limit=1] as @e[tag=129-silenth-anchor] if score @s stockcounter = #129- stockcounter run tag @s add kill
execute if entity @e[tag=129-silenth-Am,limit=1] as @e[tag=129-silenth-Am] if score @s stockcounter = #129- stockcounter run tag @s add kill
tag @s add kill

execute as @e[tag=kill] run kill @s


scoreboard players reset #129-