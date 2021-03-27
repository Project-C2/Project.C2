
scoreboard players operation #129- stockcounter = @s stockcounter

execute if entity @e[tag=129-totem-using,scores={counter=1..},limit=1] as @e[tag=129-totem-using,scores={counter=1..}] if score @s stockcounter = #129- stockcounter run tag @s add 129-totem-now

execute unless entity @e[tag=129-totem-now,limit=1] run function project-c:jobaction/129/skill/2/totem/end



execute if entity @e[tag=129-totem-now,limit=1] as @e[tag=129-totem-now] run tag @s remove 129-totem-now


scoreboard players reset #129-