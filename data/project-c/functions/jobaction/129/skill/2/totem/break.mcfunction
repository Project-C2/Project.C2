playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0.65
particle minecraft:block redstone_block ~ ~ ~ 0.8 0.8 0.8 1 50 force @a


scoreboard players operation #129- stockcounter = @s stockcounter

execute if entity @e[tag=129-totem-using,scores={counter=1..},limit=1] as @e[tag=129-totem-using,scores={counter=1..}] if score @s stockcounter = #129- stockcounter run tag @s add 129-totem-now

execute if entity @e[tag=129-totem-now,limit=1] as @e[tag=129-totem-now] run function project-c:jobaction/129/skill/2/totem/break-remove


execute if entity @e[tag=129-totem-now,limit=1] as @e[tag=129-totem-now] run tag @s remove 129-totem-now



function project-c:jobaction/129/skill/2/totem/remove-together