playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0.65
particle minecraft:block redstone_block ~ ~1 ~ 0.2 0.4 0.2 1.5 50 force @a


execute if entity @e[tag=129-totem-using,scores={counter=1..},limit=1] as @e[tag=129-totem-using,scores={counter=1..}] if score @s stockcounter = #129- stockcounter run tag @s add 129-totem-now

execute if entity @e[tag=129-totem-now,limit=1] as @e[tag=129-totem-now] run function project-c:jobaction/129/skill/2/totem/timeover


execute if entity @e[tag=129-totem-now,limit=1] as @e[tag=129-totem-now] run tag @s remove 129-totem-now



function project-c:jobaction/129/skill/2/totem/remove-together


scoreboard players reset #129-